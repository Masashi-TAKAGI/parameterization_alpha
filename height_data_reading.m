% 水位データから砕波エネルギー散逸を計算するコード
% Code by Takagi 2020/03/25　修正　


% 2016年のデータ
cd 'E:\denpa\2016';
% csvファイルの読み込み
% dir関数でフォルダ内の.csvを構造体の形で格納
list = dir('*.csv'); % 現在のフォルダーにある大量の .csv をリスト
h_data_2016 = list;
h_2016 = [];
% データの成形
% 構造体内にあるcsvファイルを1つずつ取り出して、その中の水位データのみ連結する
for n = 1:length(h_data_2016)
X = csvread(h_data_2016(n).name,0,1);
h_2016 =vertcat(h_2016,X(:,1));
end
% 時刻のずれを修正するためにinterp
% 0.5秒置きのデータに修正
h_length = length(h_2016);
start_time = datenum('2016/09/01 00:00:00');
end_time = datenum('2016/11/30 23:59:59.5');
span_original = (end_time - start_time)/(h_length-1);
span_ideal = 1/(60*60*24*2);
date_original = start_time:span_original:end_time;
date_ideal = start_time:span_ideal:end_time;
% h16：修正後の水位データ
h16 = interp1(date_original,h_2016,date_ideal);
ew_16 = [];

% 20分ずつデータを切り出す
for i = 1:length(date_ideal/2400)
    x = h16(2400*i-2399:2400*i);
% 20分の中にあるデータ数：n
n  = 2400;
   df = 2/n;
   c1 = fft(x,n);
power = abs(c1.*conj(c1))/n;
f  = df*(0:n-1);

coeff = ones(1,4)/4;
% 長さ4の窓でfiltering（移動平均）
% fftで意味があるのは半分の長さまで
avg = filter(coeff, 1, power(1:2400/2));
% filteringによる遅延の発生を考慮する
fDelay = (length(coeff)-1)/2;
% loglog(f(1:1200),power(1:1200)./1000000, ...
%      f(1:1200)-fDelay*df,avg./1000000,'LineWidth',1.4)
% trapz：積分
energy = trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000);
omega_ave = 1./(trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000./((f(14:1200)-fDelay*df)*2*pi))./energy);
omega = (f(14:1200)-fDelay*df)*2*pi;
alpha = energy.*(omega_ave.^4)./(g*2);
alpha_pm = 0.66*4.57*0.001;
S_ds = (-2.33*0.00001*omega_ave*((omega./omega_ave).^2).*((alpha./alpha_pm).^2).*avg(14:1200)./1000000);
ew = g.*trapz(f(14:1200)-fDelay*df,S_ds);
ew_16 = vertcat(ew_16,ew);
end

% 2017年のデータ
cd 'E:\denpa\2017';
% テキストファイルの読み込み
list = dir('*.csv'); % 現在のフォルダーにある .txt をリスト
h_data_2017 = list;
h_2017 = [];
% データの読み込み
for n = 1:length(h_data_2017)
X = csvread(h_data_2017(n).name,0,1);
h_2017 =vertcat(h_2017,X(:,1));
end

h_length = length(h_2017);
start_time = datenum('2017/09/01 00:00:00');
end_time = datenum('2017/11/30 23:59:59.5');
span_original = (end_time - start_time)/(h_length-1);
span_ideal = 1/(60*60*24*2);
date_original = start_time:span_original:end_time;
date_ideal = start_time:span_ideal:end_time;
h17 = interp1(date_original,h_2017,date_ideal);
ew_17 = [];
for i = 1:length(date_ideal/2400)
    x = h17(2400*i-2399:2400*i);
n  =2400;
   df = 2/n;
   c1 = fft(x,n);
power = abs(c1.*conj(c1))/n;
f  = df*(0:n-1);

coeff = ones(1,4)/4;

avg = filter(coeff, 1, power(1:1200));
fDelay = (length(coeff)-1)/2;
% loglog(f(1:1200),power(1:1200)./1000000, ...
%      f(1:1200)-fDelay*df,avg./1000000,'LineWidth',1.4)

energy = trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000);
omega_ave = 1./(trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000./((f(14:1200)-fDelay*df)*2*pi))./energy);
omega = (f(14:1200)-fDelay*df)*2*pi;
alpha = energy.*(omega_ave.^4)./(g*2);
alpha_pm = 0.66*4.57*0.001;
S_ds = (-2.33*0.00001*omega_ave*((omega./omega_ave).^2).*((alpha./alpha_pm).^2).*avg(14:1200)./1000000);
ew = g.*trapz(f(14:1200)-fDelay*df,S_ds);
ew_17 = vertcat(ew_17,ew);
end

filename = 'C:\Users\eggdo\Desktop\B4research\in\analysed_observation_data\dissipation_data.mat';
save(filename,'ew_16','ew_17');