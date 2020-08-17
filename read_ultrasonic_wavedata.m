% 超音波波浪データを読み取るコード
% Code by Takagi
% 2020/03/26 修正済み
% 
% ファイル名
drive = 'C:';
directory = '\Users\eggdo\Desktop\'
filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\2016denpa_wave.xlsx'];
% 月を選択
sheet = 1;
% sheet = 2 --->octorber
% sheet = 3 --->november
% sheet = 4 --->december
wave_dat = xlsread(filename,sheet);

% 各データの割り当て
year = wave_dat(:,1);
month = wave_dat(:,2);
day = wave_dat(:,3);
hour = wave_dat(:,4);
min = wave_dat(:,5);
depth = wave_dat(:,11);
H_s = wave_dat(:,12)./100;
T_s = wave_dat(:,13);
H_mean = wave_dat(:,14);
H_max = wave_dat(:,15);
T_max = wave_dat(:,16);

% 年月などのデータを1つのセルへ------>datetime
wave_t = datetime(year,month,day,hour,min,0);
%
% 日付データをnumbering
wave_date_number = datenum(wave_t);