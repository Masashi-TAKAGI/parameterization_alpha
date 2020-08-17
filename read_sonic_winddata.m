% winddataを読みこむコード
% Code by Takagi
% 2020/03/26 修正済み

% ファイル名
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Wind_data2016.csv'];
% 読み込みフォーマット
wind_fmt = '%s %f64 %f64 %f64 %f64 %f64 %f64 %f64 %f64';

%fopen
fileID = fopen(wind_filename,'r');
%headerの読み取り
% textscanはテキストファイルからデータをcell配列に読み取る
header = textscan(fileID,'%s %s %s %s %s %s %s %s %s',1);
%そのほかのデータをコンマを区切りにして読み取り(Delimiter)
wind_dat = textscan(fileID,wind_fmt,'Delimiter',',');
date_dat = wind_dat{:,1} ;%cell配列は｛｝を使って参照する;
% 

% 各データの割り当て
% u方向風速
sonic_windu = wind_dat{:,4};
% v方向風速
sonic_windv = wind_dat{:,5};
% w方向風速
sonic_windw = wind_dat{:,6};
% 大気温度
sonic_windt = wind_dat{:,9};
% 風速（絶対値）
mag_wind = wind_dat{:,2};
% 風向
dir_wind = wind_dat{:,3};
% 最大風速
max_wind = wind_dat{:,7};


% 年月などのデータを1つのセルへ------>datetime

% 日付データをnumbering
fmt_in = 'yyyy/mm/dd HH:MM';
wind_date_number  = datenum(date_dat,fmt_in);