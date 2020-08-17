% ADCP�̗����f�[�^��ǂݍ��ރR�[�h
% Code by Takagi
% 2020/03/26�@�C���ς�
% current data
% 
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
f_name = [drive,directory];
ADCPcurrent_filename = 'current_data_2016_0901-1008.mat';
dir_ADCPcurrent = [f_name,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% ���o���f�[�^�̃^�C���X�e�b�v����l_data
% ���o���f�[�^��20�����ϒl
% �����������T�������Ɍv�����ꂽ���̗����[20�����ϗ���
l_data = 2674;
% 
% �����ݒ�
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
% �f�[�^�z��ɑ΂��鎞��
current_t = datetime(2000+SerYear,SerMon,SerDay,SerHour,SerMin,SerSec); 
    %     
    % ���ԃf�[�^��numbering
    % ���ԃf�[�^��5������   
    current_t_number = datenum(current_t);
    %
    % �e�ϐ������킩��₷���ϊ�
        % ��k�����̗���
        current_v = SerNmmpersec(:,1:19);
        % ���������̗���
        current_u = SerEmmpersec(:,1:19);
        % ���������̗���
        current_w = SerVmmpersec(:,1:19);
        % �����̑傫��
        current_mag = SerMagmmpersec(:,1:19);
        % ����
        current_dir = SerDir10thDeg(:,1:19);
   
% �m�C�Y�̏���
% ----��������----------

dir_toolbox = [f_name,'\B4research\MATLAB_toolbox'];
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
 ip = [];
%  5�������̃f�[�^�̒�����length
 length = max(size(current_u));
%  division�F�f�[�^�̕�����
 division = 1;
%  loop�F�������ꂽ��̃f�[�^�̒���
 loop = length/division;

current_w_clean = [];

% �������ꂽ�f�[�^���Ƃ�despiking
 for i = 1:19
     for j = 1:division
% fi�Finput data with dimension
         fi = current_w(loop*(j-1)+1:loop*j,i);
% despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% current_w_clean--->despiking��̉�������
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

% ----u��������----------
% 

current_u_clean = [];
% �������ꂽ�f�[�^���Ƃ�despiking
 for i = 1:19
     for j = 1:division
         % fi�Finput data with dimension
         fi = current_u(loop*(j-1)+1:loop*j,i);
         % despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
           % current_u_clean--->despiking���u��������
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

% ----v��������----------

current_v_clean = []
% �������ꂽ�f�[�^���Ƃ�despiking
 for i = 1:19
     for j = 1:division
         % fi�Finput data with dimension
         fi = current_v(loop*(j-1)+1:loop*j,i);
         % despiking code by Nobuhito Mori
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
         % current_v_clean--->despiking���v��������
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end


    
%  ���ϗ��A�������v�Z
for j = 1:4:(floor((length)/4)*4-3)
%     number�F���݂̃��[�v��
    number = (j - 1)/4 + 1;
%     ���[�v�Ŏg�p����z�񂪉��s�ڂ��牽�s�ڂ܂ł�
    starttime = j;
    endtime = j + 3;
%     f_low = 0�F�؂���̈�̍Œ���g��
%     f_high = 0�F�؂���̈�̍ō����g��
    f_low = 0;
    f_high = 0 ;
    %     
    % ���ԃf�[�^��numbering
    % ���ԃf�[�^��5������
    current_t_number = datenum(current_t);
%     5�������̎��ԃf�[�^��20�������ɕϊ�
    current_sample_t(number) = current_t_number(j);
    %
    % 20���Ԃ̗����f�[�^�̂ݒ��o
        % ��k�����̗���
        current_v_short = current_v_clean(starttime:endtime,:);
        % ���������̗���
         current_u_short = current_u_clean(starttime:endtime,:);
        % ���������̗���
         current_w_short = current_w_clean(starttime:endtime,:);
% n�F�t�[���G�ϊ�����f�[�^��
   n = 4;
% ------u�����������痐������o------
% x�F�t�[���G�ϊ�����Ώۃf�[�^
   x = current_u_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % ���g���ɐ�����������i8/24�j
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

    % �w����g���̃f�[�^�����ׂ�0�ɂ���i8/24�j
    for i=nc1:nc2
    c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % �t�t�[���G�ϊ��i8/24�j
    P=real(ifft(c2,n));
    u_turb = P;
    current_u_turb(j:j+3,:) = P;
    mean_current_u(j:j+3,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
    
    % ------v�����������痐������o------
    x = current_v_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % ���g���ɐ�����������i8/24�j
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

    % �w����g���̃f�[�^�����ׂ�0�ɂ���i8/24�j
    for i=nc1:nc2
        c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % �t�t�[���G�ϊ��i8/24�j
    P=real(ifft(c2,n));
    v_turb = P;
    current_v_turb(j-1+1:j-1+4,:) = P;
    mean_current_v(j-1+1:j-1+4,:) = x - P; 
    mean_current_v_t(number,:) = mean_current_v(4*number,:);
    current_v_turb_t(number,:)  = sum(current_v_turb(4*number-3:4*number,:))/4;
    % ------w�����������痐������o------
    x = current_w_short;
   df = (1/300)/n;
   c1 = fft(x,n);

    %
    % --- filter
    %
    % ���g���ɐ�����������i8/24�j
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

    % �w����g���̃f�[�^�����ׂ�0�ɂ���i8/24�j
    for i=nc1:nc2
        c2(i,:)= 0;
    end
    for i=nc3:nc4
        c2(i,:) = 0;
    end
    % �t�t�[���G�ϊ��i8/24�j
    P=real(ifft(c2,n));
    w_turb = P;
    current_w_turb(j-1+1:j-1+4,:) = P;
    mean_current_w(j-1+1:j-1+4,:) = x - P; 
    mean_current_w_t(number,:) = mean_current_w(4*number,:);
    current_w_turb_t(number,:)  = sum(current_w_turb(4*number-3:4*number,:))/4;
    % 5��������TKE�v�Z
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % �v���[����ݒ�
    depth = (-6.62:0.35:-0.32);
%     TKE��20�����ϒl
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
% ���z�̎����istart�j
current_t_start = datenum('2016/09/01 11:00:00');
% ���z�̃f�[�^����(end)
current_t_end = datenum('2016/10/08 14:00:00');
% 20�������̃f�[�^�Ԋu
time_span = (current_t_end - current_t_start)/l_data-1;
% ���z�̃^�C���X�e�b�v�i20���Ԋu�j
current_sample_t2 = (current_t_start:time_span:current_t_end)';
% ���z�̃^�C���X�e�b�v�i20���Ԋu, datetime�j
time_169 = datetime(current_sample_t2,'ConvertFrom','datenum');
% ���̗����f�[�^��interp
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
% ���ϗ�����interp
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
% ���ꁁ������ - ���ϗ���
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
% �����Ɨ����̐�Βl��interp
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
% TKE��interp
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);