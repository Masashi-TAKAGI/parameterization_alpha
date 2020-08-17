%波のADCPデータを読み取るコード
% Code by Takagi
% 2020/03/26　修正

% ファイル名
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_000_LOG8.txt'];
%
% csv（コンマ区切り）データ'.csv'を読み込み
% 読み込みのフォーマット
wave_fmt = '%u32 %u32 %u32 %u32 %u32 %u32 %f %f %f %f %f %f %f %f %u32 %f %f %u32';

%fopen
fileID = fopen(ADCP_wave_filename,'r');
%headerの読み取り
% textscanはテキストファイルからデータをcell配列に読み取る
header1 = textscan(fileID,'%s',22,'Delimiter',',');
%そのほかのデータをコンマを区切りにして読み取り(Delimiter)
c_dat = textscan(fileID,wave_fmt,'Delimiter',',');
year = c_dat{:,1} ;%cell配列は｛｝を使って参照する
month = c_dat{:,2};
day = c_dat{:,3};
hour = c_dat{:,4};
minites = c_dat{:,5};
second = c_dat{:,6};
% 流向
wave_dir_1600 = c_dat{:,15};
wave_t_1600 = datetime(2000+year,month,day,hour,minites,second);

% 日付データをnumbering
wave_date_number_1600 = datenum(wave_t_1600);

