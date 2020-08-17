% ADCPの流速データを読み込むコード
% Code by Takagi
% 2020/03/26　修正済み
% current data
% 
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
f_name = [drive,directory];
ADCPcurrent_filename = 'current_data_2016_0901-1008.mat';
dir_ADCPcurrent = [f_name,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 取り出すデータのタイムステップ数をl_data
% 取り出すデータは20分平均値
% 乱流成分＝５分おきに計測された元の流速ー20分平均流速
l_data = 2674;
% 
% 初期設定
Total_mean_TKE = 0;
TKE_t = zeros(l_data,19);
mean_current_u = zeros(l_data,19);
mean_current_u_t = zeros(l_data,19);
mean_current_v =zeros(l_data,19);
mean_current_v_t = zeros(l_data,19);
mean_current_w = zeros(l_data,19);
mean_current_w_t = zeros(l_data,19);
current_u_turb =zeros(l_data,19);
current_v_turb = zeros(l_data,19);
current_w_turb = zeros(l_data,19);
current_u_turb_t = zeros(l_data,19);
current_v_turb_t = zeros(l_data,19);
current_w_turb_t = zeros(l_data,19);
current_sample_t = zeros(l_data,1);
current_sample_turb = zeros(l_data*4-3,19);
% データ配列に対する時刻
current_t = datetime(2000+SerYear,SerMon,SerDay,SerHour,SerMin,SerSec); 
    %     
    % 時間データをnumbering
    % 時間データは5分おき   
    current_t_number = datenum(current_t);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   
% ノイズの除去
% ----鉛直流速----------

dir_toolbox = [f_name,'\B4research\MATLAB_toolbox'];
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
 ip = [];
%  5分おきのデータの長さをlength
 length = max(size(current_u));
%  division：データの分割数
 division = 1;
%  loop：分割された後のデータの長さ
 loop = length/division;

current_w_clean = [];

% 分割されたデータごとにdespiking
 for i = 1:19
     for j = 1:division
% fi：input data with dimension
         fi = current_w(loop*(j-1)+1:loop*j,i);
% despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% current_w_clean--->despiking後の鉛直流速
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

% ----u方向流速----------
% 

current_u_clean = [];
% 分割されたデータごとにdespiking
 for i = 1:19
     for j = 1:division
         % fi：input data with dimension
         fi = current_u(loop*(j-1)+1:loop*j,i);
         % despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
           % current_u_clean--->despiking後のu方向流速
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

% ----v方向流速----------

current_v_clean = []
% 分割されたデータごとにdespiking
 for i = 1:19
     for j = 1:division
         % fi：input data with dimension
         fi = current_v(loop*(j-1)+1:loop*j,i);
         % despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
         % current_v_clean--->despiking後のv方向流速
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end


    
%  平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
%     number：現在のループ回数
    number = (j - 1)/4 + 1;
%     ループで使用する配列が何行目から何行目までか
    starttime = j;
    endtime = j + 3;
%     f_low = 0：切り取る領域の最低周波数
%     f_high = 0：切り取る領域の最高周波数
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
%     5分おきの時間データを20分おきに変換
    current_sample_t(number) = current_t_number(j);
    %
    % 20分間の流速データのみ抽出
        % 南北方向の流速
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
         current_w_short = current_w_clean(starttime:endtime,:);
% n：フーリエ変換するデータ数
   n = 4;
% ------u方向流速から乱れを検出------
% x：フーリエ変換する対象データ
   x = current_u_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % 周波数に制限をかける（8/24）
    nc_low  = round( f_low /df );
    nc_high = round( f_high/df );

    if nc_high < 0
        nc_high = n/2;
    end

    nc1 = nc_low  + 1;
    nc2 = nc_high + 1;
    nc3 = n/2 + 1 + (n/2 - nc_high);
    nc4 = n - nc_low + 1;

    % check
    if nc2 >= n/2 + 1
        nc2 = n/2 + 1;
    end
    if nc3 < n/2 + 1
        nc3 = n/2 + 1;
    end
    if nc4 <= 1
        nc4 = 1;
    end

    %
    % --- ifft
    %

    c2 = c1;
    %c2(nc1:nc2)=[zeros]

    % 指定周波数のデータをすべて0にする（8/24）
    for i=nc1:nc2
    c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % 逆フーリエ変換（8/24）
    P=real(ifft(c2,n));
    u_turb = P;
    current_u_turb(j:j+3,:) = P;
    mean_current_u(j:j+3,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
    
    % ------v方向流速から乱れを検出------
    x = current_v_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % 周波数に制限をかける（8/24）
    nc_low  = round( f_low /df );
    nc_high = round( f_high/df );

    if nc_high < 0
        nc_high = n/2;
    end

    nc1 = nc_low  + 1;
    nc2 = nc_high + 1;
    nc3 = n/2 + 1 + (n/2 - nc_high);
    nc4 = n - nc_low + 1;

    % check
    if nc2 >= n/2 + 1
        nc2 = n/2 + 1;
    end
    if nc3 < n/2 + 1
        nc3 = n/2 + 1;
    end
    if nc4 <= 1
        nc4 = 1;
    end

    %
    % --- ifft
    %

    c2 = c1;
    %c2(nc1:nc2)=[zeros]

    % 指定周波数のデータをすべて0にする（8/24）
    for i=nc1:nc2
        c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % 逆フーリエ変換（8/24）
    P=real(ifft(c2,n));
    v_turb = P;
    current_v_turb(j-1+1:j-1+4,:) = P;
    mean_current_v(j-1+1:j-1+4,:) = x - P; 
    mean_current_v_t(number,:) = mean_current_v(4*number,:);
    current_v_turb_t(number,:)  = sum(current_v_turb(4*number-3:4*number,:))/4;
    % ------w方向流速から乱れを検出------
    x = current_w_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % 周波数に制限をかける（8/24）
    nc_low  = round( f_low /df );
    nc_high = round( f_high/df );

    if nc_high < 0
        nc_high = n/2;
    end

    nc1 = nc_low  + 1;
    nc2 = nc_high + 1;
    nc3 = n/2 + 1 + (n/2 - nc_high);
    nc4 = n - nc_low + 1;

    % check
    if nc2 >= n/2 + 1
        nc2 = n/2 + 1;
    end
    if nc3 < n/2 + 1
        nc3 = n/2 + 1;
    end
    if nc4 <= 1
        nc4 = 1;    
    end

    %
    % --- ifft
    %

    c2 = c1;
    %c2(nc1:nc2)=[zeros]

    % 指定周波数のデータをすべて0にする（8/24）
    for i=nc1:nc2
        c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % 逆フーリエ変換（8/24）
    P=real(ifft(c2,n));
    w_turb = P;
    current_w_turb(j-1+1:j-1+4,:) = P;
    mean_current_w(j-1+1:j-1+4,:) = x - P; 
    mean_current_w_t(number,:) = mean_current_w(4*number,:);
    current_w_turb_t(number,:)  = sum(current_w_turb(4*number-3:4*number,:))/4;
    % 5分おきのTKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
%     TKEの20分平均値
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
% 理想の時刻（start）
current_t_start = datenum('2016/09/01 11:00:00');
% 理想のデータ時刻(end)
current_t_end = datenum('2016/10/08 14:00:00');
% 20分おきのデータ間隔
time_span = (current_t_end - current_t_start)/l_data-1;
% 理想のタイムステップ（20分間隔）
current_sample_t2 = (current_t_start:time_span:current_t_end)';
% 理想のタイムステップ（20分間隔, datetime）
time_169 = datetime(current_sample_t2,'ConvertFrom','datenum');
% 元の流速データをinterp
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
% 平均流速をinterp
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
% 乱れ＝元流速 - 平均流速
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
% 流向と流速の絶対値もinterp
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
% TKEもinterp
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);