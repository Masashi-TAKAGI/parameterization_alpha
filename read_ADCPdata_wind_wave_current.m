%先に流向データを抽出しておく 
% まず2016年データを抽出
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_000_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
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
wave_dir_1600 = c_dat{:,15};
wave_t_1600 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1600 = datenum(wave_t_1600);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_001_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1601 = c_dat{:,15};
wave_t_1601 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1601 = datenum(wave_t_1601);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_002_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1602 = c_dat{:,15};
wave_t_1602 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1602 = datenum(wave_t_1602);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_003_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1603 = c_dat{:,15};
wave_t_1603 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1603 = datenum(wave_t_1603);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_004_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1604 = c_dat{:,15};
wave_t_1604 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1604 = datenum(wave_t_1604);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_005_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1605 = c_dat{:,15};
wave_t_1605 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1605 = datenum(wave_t_1605);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_006_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1606 = c_dat{:,15};
wave_t_1606 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1606 = datenum(wave_t_1606);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_007_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1607 = c_dat{:,15};
wave_t_1607 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1607 = datenum(wave_t_1607);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_008_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1608 = c_dat{:,15};
wave_t_1608 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1608 = datenum(wave_t_1608);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_009_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1609 = c_dat{:,15};
wave_t_1609 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1609 = datenum(wave_t_1609);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_010_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1610 = c_dat{:,15};
wave_t_1610 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1610 = datenum(wave_t_1610);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_011_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1611 = c_dat{:,15};
wave_t_1611 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1611 = datenum(wave_t_1611);

ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_012_LOG8.txt'];
%
% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1612 = c_dat{:,15};
wave_t_1612 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1612 = datenum(wave_t_1612);

% 
wave_dir_16 = vertcat(wave_dir_1600,wave_dir_1601,wave_dir_1602,wave_dir_1603,wave_dir_1604,wave_dir_1605,wave_dir_1606,...
    wave_dir_1607,wave_dir_1608,wave_dir_1609,wave_dir_1610,wave_dir_1611,wave_dir_1612);
 wave_dir_16 = double(wave_dir_16);
wave_dir_16(wave_dir_16 == 0) = NaN;
    
wave_t_16 = vertcat(wave_t_1600,wave_t_1601,wave_t_1602,wave_t_1603,wave_t_1604,wave_t_1605,wave_t_1606,...
    wave_t_1607,wave_t_1608,wave_t_1609,wave_t_1610,wave_t_1611,wave_t_1612);
wave_date_number_16 = vertcat(wave_date_number_1600,wave_date_number_1601,wave_date_number_1602,wave_date_number_1603,...
    wave_date_number_1604,wave_date_number_1605,wave_date_number_1606,wave_date_number_1607,wave_date_number_1608,...
    wave_date_number_1609,wave_date_number_1610,wave_date_number_1611,wave_date_number_1612);
%
start_time = datenum('2016/09/01 11:00:00');
end_time = datenum('2016/11/14 19:00:00');
wave_time_16 = (start_time:0.013888888888942:end_time)';
wave_dir_16 = interp1(wave_date_number_16,double(wave_dir_16),wave_time_16);
% ============================================================================
ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_000_LOG9.txt'];

% csv（コンマ区切り）データを読み込み
header_fmt = '%s\n';
wave_fmt = '%u32 %u32 %u32 %u32 %u32 %u32 %f %f %f %f %f %f %f %f %u32 %f %f %u32';
% 
%
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
wave_dir_1700 = c_dat{:,15};
wave_t_1700 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1700 = datenum(wave_t_1700);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_001_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1701 = c_dat{:,15};
wave_t_1701 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1701 = datenum(wave_t_1701);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_002_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1702 = c_dat{:,15};
wave_t_1702 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1702 = datenum(wave_t_1702);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_003_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1703 = c_dat{:,15};
wave_t_1703 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1703 = datenum(wave_t_1703);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_004_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1704 = c_dat{:,15};
wave_t_1704 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1704 = datenum(wave_t_1704);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_005_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1705 = c_dat{:,15};
wave_t_1705 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1705 = datenum(wave_t_1705);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_006_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1706 = c_dat{:,15};
wave_t_1706 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1706 = datenum(wave_t_1706);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_008_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1708 = c_dat{:,15};
wave_t_1708 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1708 = datenum(wave_t_1708);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_009_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1709 = c_dat{:,15};
wave_t_1709 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1709 = datenum(wave_t_1709);

ADCP_wave_filename = [drive,directory,'SOO\2017\2017ADCP.prj\2017ADCP_008_010_LOG9.txt'];

% csv（コンマ区切り）データ'dat_climate.csv'を読み込み
header_fmt = '%s\n';
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
wave_dir_1710 = c_dat{:,15};
wave_t_1710 = datetime(2000+year,month,day,hour,minites,second);
%
% 日付データをnumbering
wave_date_number_1710 = datenum(wave_t_1710);

wave_dir_17_1 = vertcat(wave_dir_1700,wave_dir_1701,wave_dir_1702,wave_dir_1703,wave_dir_1704,wave_dir_1705,wave_dir_1706);
wave_t_17_1 = vertcat(wave_t_1700,wave_t_1701,wave_t_1702,wave_t_1703,wave_t_1704,wave_t_1705,wave_t_1706);
wave_date_number_17_1 = vertcat(wave_date_number_1700,wave_date_number_1701,wave_date_number_1702,wave_date_number_1703,...
    wave_date_number_1704,wave_date_number_1705,wave_date_number_1706);
%
 wave_dir_17_1 = double(wave_dir_17_1);
wave_dir_17_1(wave_dir_17_1 == 0) = NaN;
start_time = datenum('2017/10/01 00:00:00');
end_time = datenum('2017/11/04 20:00:00');
wave_time_17_1 = (start_time:0.013888888888942:end_time)';
wave_dir_17_1 = interp1(wave_date_number_17_1,double(wave_dir_17_1),wave_time_17_1);

wave_dir_17_2 = vertcat(wave_dir_1708,wave_dir_1709,wave_dir_1710);
wave_t_17_2 = vertcat(wave_t_1708,wave_t_1709,wave_t_1710);
wave_date_number_17_2 = vertcat(wave_date_number_1708,...
    wave_date_number_1709,wave_date_number_1710);
 wave_dir_17_2 = double(wave_dir_17_2);
wave_dir_17_2(wave_dir_17_2 == 0) = NaN;
%
start_time = datenum('2017/11/17 13:00:00');
end_time = datenum('2017/11/30 21:40:00');
wave_time_17_2 = (start_time:0.013888888888942:end_time)';
wave_dir_17_2 = interp1(wave_date_number_17_2,double(wave_dir_17_2),wave_time_17_2);
wave_dir = vertcat(wave_dir_16,wave_dir_17_1,wave_dir_17_2);
wave_time_number = vertcat(wave_time_16,wave_time_17_1,wave_time_17_2);
wave_time = datetime(wave_time_number,'ConvertFrom','datenum');
% 
% 2016年データを読み込む
%
% -------------------------------------------------------------------------------------------------------------------------
% 
% winddata
% 
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Wind_data2016.csv'];
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
% -999をNaNデータとして認識させる
% u_wave_dat(u_wave_dat == -999) = NaN;

% 各データの割り当て
sonic_windu = wind_dat{:,4};
sonic_windv = wind_dat{:,5};
sonic_windw = wind_dat{:,6};
sonic_windt = wind_dat{:,9};
mag_wind = wind_dat{:,2};
dir_wind = wind_dat{:,3};
max_wind = wind_dat{:,7};


% 年月などのデータを1つのセルへ------>datetime

% 日付データをnumbering
fmt_in = 'yyyy/mm/dd HH:MM';
wind_date_number  = datenum(date_dat,fmt_in);
% %
% ----------------------------------------------------------------------------------------------------------------------------------
% September 
% 
% wavedata
% 
filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\2016denpa_wave.xlsx'];
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
% 
% ---------------------------------------------------------------------------------------------------------------------------------
% 
% current data
% 
ADCPcurrent_filename = 'current_data_2016_0901-1008.mat';
dir_ADCPcurrent = [drive,directory,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 結果のタイムステップ数-1をl_data
l_data = 2673;
% 
Total_mean_TKE = 0;
TKE_t = zeros(l_data+1,19);
mean_current_u = zeros(l_data+1,19);
mean_current_u_t = zeros(l_data+1,19);
mean_current_v =zeros(l_data+1,19);
mean_current_v_t = zeros(l_data+1,19);
mean_current_w = zeros(l_data+1,19);
mean_current_w_t = zeros(l_data+1,19);
current_u_turb =zeros(l_data+1,19);
current_v_turb = zeros(l_data+1,19);
current_w_turb = zeros(l_data+1,19);
current_u_turb_t = zeros(l_data+1,19);
current_v_turb_t = zeros(l_data+1,19);
current_w_turb_t = zeros(l_data+1,19);
current_sample_t = zeros(l_data+1,1);
current_sample_turb = zeros(l_data*4+1,19);
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
   
% remove noise
% --- setup
% 

dir_toolbox = [drive,directory,'B4research\MATLAB_toolbox'];
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = max(size(current_u));
 division = 1;
 loop = length;


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
 ip = [];

current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end


    
%  平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
    number = (j - 1)/4 + 1;
    starttime = j;
    endtime = j + 3;
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
    current_sample_t(number) = current_t_number(j);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
         current_w_short = current_w_clean(starttime:endtime,:);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   n = 4;
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
    current_u_turb(j-1+1:j-1+4,:) = P;
    mean_current_u(j-1+1:j-1+4,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
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
    % TKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
current_t_start = datenum('2016/09/01 11:00:00');
current_t_end = datenum('2016/10/08 14:00:00');
time_span = (current_t_end - current_t_start)/l_data;
time_span2 = (current_t_end - current_t_start)/(l_data*4);
current_sample_t2 = (current_t_start:time_span:current_t_end)';
current_sample_t3 = (current_t_start:time_span2:current_t_end)';
time_169 = datetime(current_sample_t2,'ConvertFrom','datenum');
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
turb_u_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_u_turb,current_sample_t3);
turb_v_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_v_turb,current_sample_t3);
turb_w_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_w_turb,current_sample_t3);
u_t3 = interp1(current_t_number,current_u_clean,current_sample_t3);
v_t3 = interp1(current_t_number,current_v_clean,current_sample_t3);
w_t3 = interp1(current_t_number,current_w_clean,current_sample_t3);
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);
% 
% 
% 
ww = datevec(wave_date_number);
wav_t = datetime(ww(:,1),ww(:,2),ww(:,3),ww(:,4),ww(:,5),0);
cc = datevec(current_sample_t2);
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
[C,iw,ic] = intersect(wav_t,cur_t);
TKE_t2_6s = TKE_t2(ic,:);
mean_u_6s = mean_current_u_t2(ic,:);
mean_v_6s = mean_current_v_t2(ic,:);
mean_w_6s = mean_current_w_t2(ic,:);
turb_u_6s = turb_u_t2(ic,:);
turb_v_6s = turb_v_t2(ic,:);
turb_w_6s = turb_w_t2(ic,:);
c_dir_6s = current_dir_t2(ic,:);
c_mag_6s = current_mag_t2(ic,:);
time_169 = time_169(ic,:);
H_s_6s = H_s(iw);
T_s_6s = T_s(iw);
cc = datevec(current_sample_t2(ic));
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
WW = datevec(wind_date_number);
win_t = datetime(WW(:,1),WW(:,2),WW(:,3),WW(:,4),WW(:,5),0);
[C,iw,ic] = intersect(cur_t,win_t);
TKE_t2_6s = TKE_t2_6s(iw,:);
mean_u_6s = mean_u_6s(iw,:);
mean_v_6s = mean_v_6s(iw,:);
mean_w_6s = mean_w_6s(iw,:);
turb_u_6s = turb_u_6s(iw,:);
turb_v_6s = turb_v_6s(iw,:);
turb_w_6s = turb_w_6s(iw,:);
c_dir_6s = c_dir_6s(iw,:);
c_mag_6s = c_mag_6s(iw,:);
time_169 = time_169(iw,:);
mag_wind_6s = mag_wind(ic,:);
dir_wind_6s = dir_wind(ic,:);
clear min
% 
% ---------------------------------------------------------------------------------------------------------------------------------
% Octorber
% 
% wavedata
% 
filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\2016denpa_wave.xlsx'];
sheet = 2;
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
% 
% ---------------------------------------------------------------------------------------------------------------------------------
% 
% input--->流速データ、流速の切り取り周波数領域、データ数
% output--->TKE(20層の5分間隔の時系列データ、および30分平均値)、各方向の平均流、乱流成分

ADCPcurrent_filename = 'current_data_2016_1008-1114.mat'
dir_ADCPcurrent = [drive,directory,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 結果のタイムステップ数-1をl_data
l_data = 2673;
% 
Total_mean_TKE = 0;
TKE_t = zeros(l_data+1,19);
mean_current_u = zeros(l_data+1,19);
mean_current_u_t = zeros(l_data+1,19);
mean_current_v =zeros(l_data+1,19);
mean_current_v_t = zeros(l_data+1,19);
mean_current_w = zeros(l_data+1,19);
mean_current_w_t = zeros(l_data+1,19);
current_u_turb =zeros(l_data+1,19);
current_v_turb = zeros(l_data+1,19);
current_w_turb = zeros(l_data+1,19);
current_u_turb_t = zeros(l_data+1,19);
current_v_turb_t = zeros(l_data+1,19);
current_w_turb_t = zeros(l_data+1,19);
current_sample_t = zeros(l_data+1,1);
current_sample_turb = zeros(l_data*4+1,19);
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
   
% remove noise
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = max(size(current_u));
 division = 1;
 loop = length;
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

    
%   平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
    number = (j - 1)/4 + 1;
    starttime = j;
    endtime = j + 3;
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
    current_sample_t(number) = current_t_number(j);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
         current_w_short = current_w_clean(starttime:endtime,:);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   n = 4;
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
    current_u_turb(j-1+1:j-1+4,:) = P;
    mean_current_u(j-1+1:j-1+4,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
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
    % TKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
current_t_start = datenum('2016/10/08 15:00:00');
current_t_end = datenum('2016/11/14 19:00:00');
time_span = (current_t_end - current_t_start)/l_data;
time_span2 = (current_t_end - current_t_start)/(l_data*4);
current_sample_t2 = (current_t_start:time_span:current_t_end)';
current_sample_t3 = (current_t_start:time_span2:current_t_end)';
time_1610 = datetime(current_sample_t2,'ConvertFrom','datenum');
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
turb_u_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_u_turb,current_sample_t3);
turb_v_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_v_turb,current_sample_t3);
turb_w_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_w_turb,current_sample_t3);
u_t3 = interp1(current_t_number,current_u_clean,current_sample_t3);
v_t3 = interp1(current_t_number,current_v_clean,current_sample_t3);
w_t3 = interp1(current_t_number,current_w_clean,current_sample_t3);
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);
% 
% 
% 
ww = datevec(wave_date_number);
wav_t = datetime(ww(:,1),ww(:,2),ww(:,3),ww(:,4),ww(:,5),0);
cc = datevec(current_sample_t2);
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
[C,iw,ic] = intersect(wav_t,cur_t);
TKE_t2_6o = TKE_t2(ic,:);
mean_u_6o = mean_current_u_t2(ic,:);
mean_v_6o = mean_current_v_t2(ic,:);
mean_w_6o = mean_current_w_t2(ic,:);
turb_u_6o = turb_u_t2(ic,:);
turb_v_6o = turb_v_t2(ic,:);
turb_w_6o = turb_w_t2(ic,:);
c_dir_6o = current_dir_t2(ic,:);
c_mag_6o = current_mag_t2(ic,:);
time_1610 = time_1610(ic,:);
H_s_6o = H_s(iw);
T_s_6o = T_s(iw);
cc = datevec(current_sample_t2(ic));
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
WW = datevec(wind_date_number);
win_t = datetime(WW(:,1),WW(:,2),WW(:,3),WW(:,4),WW(:,5),0);
[C,iw,ic] = intersect(cur_t,win_t);
TKE_t2_6o = TKE_t2_6o(iw,:);
mean_u_6o = mean_u_6o(iw,:);
mean_v_6o = mean_v_6o(iw,:);
mean_w_6o = mean_w_6o(iw,:);
c_dir_6o = c_dir_6o(iw,:);
c_mag_6o = c_mag_6o(iw,:);
turb_u_6o = turb_u_6o(iw,:);
turb_v_6o = turb_v_6o(iw,:);
turb_w_6o = turb_w_6o(iw,:);
time_1610 = time_1610(iw,:);
mag_wind_6o = mag_wind(ic,:);
dir_wind_6o = dir_wind(ic,:);
clear min
% 
% 
% 
% 
% ================================================================
% 
% 2017年のデータを抽出
% 
% --------------------------------------------------------------------------------------------------------------------------------------
% October
% 
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Ech_wind_10min_ave_2017Oct.dat'];
% コンマ区切りファイル(CSVファイル)の読み取り----->csvread
w_dat = csvread(wind_filename,2,0);
% 
%-999をNaNデータとして登録
w_dat(w_dat == -999) = NaN; 
% 
% w_datの中から各データを抽出
year = w_dat(:,1);
month = w_dat(:,2);
day = w_dat(:,3);
hour = w_dat(:,4);
Min = w_dat(:,5);
sonic_windu = w_dat(:,6);
sonic_windv = w_dat(:,7);
sonic_windw = w_dat(:,8);
sonic_windt = w_dat(:,9);
mag_wind = w_dat(:,10);
dir_wind = w_dat(:,11);
max_wind = w_dat(:,12);
num_max = w_dat(:,13);
%
% 年月などのデータを1つのセルへ------>datetime
%
w_t = datetime(year,month,day,hour,Min,0);
%
% datetimeであらわされる配列を数字に変換------->datenum
wind_date_number = datenum(w_t);  
% 
% wavedata
% 
Denpa_filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\Denpa_sigwave_201710-2.csv'];
% csvデータ（UltraSonic_wavedata）の読みとり
u_wave_dat = csvread(Denpa_filename,2,0);
% 
% -999をNaNデータとして認識させる
u_wave_dat(u_wave_dat == -999) = NaN;

% 各データの割り当て
year = u_wave_dat(:,1);
month = u_wave_dat(:,2);
day = u_wave_dat(:,3);
hour = u_wave_dat(:,4);
min = u_wave_dat(:,5);
serial = u_wave_dat(:,6);
H_s = u_wave_dat(:,7);
T_s = u_wave_dat(:,8);
num_sig = u_wave_dat(:,9);
H_mean = u_wave_dat(:,10);
T_mean = u_wave_dat(:,11);
H_max = u_wave_dat(:,12);
T_max = u_wave_dat(:,13);
% 年月などのデータを1つのセルへ------>datetime
wave_t = datetime(year,month,day,hour,min,0);
%
% 日付データをnumbering
wave_date_number = datenum(wave_t); 
% 
% 
% current data
% 
% input--->流速データ、流速の切り取り周波数領域、データ数
% output--->TKE(20層の5分間隔の時系列データ、および30分平均値)、各方向の平均流、乱流成分

ADCPcurrent_filename = 'current_data_2017_0925-1029.mat'
dir_ADCPcurrent = [drive,directory,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 結果のタイムステップ数-1をl_data
l_data = 2064;
% 
Total_mean_TKE = 0;
TKE_t = zeros(l_data+1,19);
mean_current_u = zeros(l_data+1,19);
mean_current_u_t = zeros(l_data+1,19);
mean_current_v =zeros(l_data+1,19);
mean_current_v_t = zeros(l_data+1,19);
mean_current_w = zeros(l_data+1,19);
mean_current_w_t = zeros(l_data+1,19);
current_u_turb =zeros(l_data+1,19);
current_v_turb = zeros(l_data+1,19);
current_w_turb = zeros(l_data+1,19);
current_u_turb_t = zeros(l_data+1,19);
current_v_turb_t = zeros(l_data+1,19);
current_w_turb_t = zeros(l_data+1,19);
current_sample_t = zeros(l_data+1,1);
current_sample_turb = zeros(l_data*4+1,19);
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
   
% remove noise
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = max(size(current_u));
 division = 1;
 loop = length;
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end


% 平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
    number = (j - 1)/4 + 1;
    starttime = j;
    endtime = j + 3;
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
    current_sample_t(number) = current_t_number(j);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
         current_w_short = current_w_clean(starttime:endtime,:);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   n = 4;
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
    current_u_turb(j-1+1:j-1+4,:) = P;
    mean_current_u(j-1+1:j-1+4,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
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
    % TKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
current_t_start = datenum('2017/10/01 00:00:00');
current_t_end = datenum('2017/10/29 16:00:00');
time_span = (current_t_end - current_t_start)/l_data;
time_span2 = (current_t_end - current_t_start)/(l_data*4);
current_sample_t2 = (current_t_start:time_span:current_t_end)';
current_sample_t3 = (current_t_start:time_span2:current_t_end)';
time_1710 = datetime(current_sample_t2,'ConvertFrom','datenum');
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
turb_u_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_u_turb,current_sample_t3);
turb_v_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_v_turb,current_sample_t3);
turb_w_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_w_turb,current_sample_t3);
u_t3 = interp1(current_t_number,current_u_clean,current_sample_t3);
v_t3 = interp1(current_t_number,current_v_clean,current_sample_t3);
w_t3 = interp1(current_t_number,current_w_clean,current_sample_t3);
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);
% 
ww = datevec(wave_date_number);
wav_t = datetime(ww(:,1),ww(:,2),ww(:,3),ww(:,4),ww(:,5),0);
cc = datevec(current_sample_t2);
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
[C,iw,ic] = intersect(wav_t,cur_t);
TKE_t2_7o = TKE_t2(ic,:);
mean_u_7o = mean_current_u_t2(ic,:);
mean_v_7o = mean_current_v_t2(ic,:);
mean_w_7o = mean_current_w_t2(ic,:);
c_dir_7o = current_dir_t2(ic,:);
c_mag_7o = current_mag_t2(ic,:);
turb_u_7o = turb_u_t2(ic,:);
turb_v_7o = turb_v_t2(ic,:);
turb_w_7o = turb_w_t2(ic,:);
time_1710 = time_1710(ic,:);
H_s_7o = H_s(iw);
T_s_7o = T_s(iw);
cc = datevec(current_sample_t2(ic));
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
WW = datevec(wind_date_number);
win_t = datetime(WW(:,1),WW(:,2),WW(:,3),WW(:,4),WW(:,5),0);
[C,iw,ic] = intersect(cur_t,win_t);
TKE_t2_7o = TKE_t2_7o(iw,:);
mean_u_7o = mean_u_7o(iw,:);
mean_v_7o = mean_v_7o(iw,:);
mean_w_7o = mean_w_7o(iw,:);
turb_u_7o = turb_u_7o(iw,:);
turb_v_7o = turb_v_7o(iw,:);
turb_w_7o = turb_w_7o(iw,:);
c_dir_7o = c_dir_7o(iw,:);
c_nag_7o = c_mag_7o(iw,:);
time_1710 = time_1710(iw,:);
mag_wind_7o = mag_wind(ic,:);
dir_wind_7o = dir_wind(ic,:);
clear min
% 
% 
% 
% 
% ------------------------------------------------------------------------------------------------------------------------
% 
% November1
% 
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Ech_wind_10min_ave_2017Nov.dat'];
% コンマ区切りファイル(CSVファイル)の読み取り----->csvread
w_dat = csvread(wind_filename,2,0);
% 
%-999をNaNデータとして登録
w_dat(w_dat == -999) = NaN; 
% 
% w_datの中から各データを抽出
year = w_dat(:,1);
month = w_dat(:,2);
day = w_dat(:,3);
hour = w_dat(:,4);
Min = w_dat(:,5);
sonic_windu = w_dat(:,6);
sonic_windv = w_dat(:,7);
sonic_windw = w_dat(:,8);
sonic_windt = w_dat(:,9);
mag_wind = w_dat(:,10);
dir_wind = w_dat(:,11);
max_wind = w_dat(:,12);
num_max = w_dat(:,13);
%
% 年月などのデータを1つのセルへ------>datetime
%
w_t = datetime(year,month,day,hour,Min,0);
%
% datetimeであらわされる配列を数字に変換------->datenum
wind_date_number = datenum(w_t);  
% 
% wavedata
% 
Denpa_filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\Denpa_sigwave_201711-2.csv'];
% csvデータ（UltraSonic_wavedata）の読みとり
u_wave_dat = csvread(Denpa_filename,2,0);
% 
% -999をNaNデータとして認識させる
u_wave_dat(u_wave_dat == -999) = NaN;

% 各データの割り当て
year = u_wave_dat(:,1);
month = u_wave_dat(:,2);
day = u_wave_dat(:,3);
hour = u_wave_dat(:,4);
min = u_wave_dat(:,5);
serial = u_wave_dat(:,6);
H_s = u_wave_dat(:,7);
T_s = u_wave_dat(:,8);
num_sig = u_wave_dat(:,9);
H_mean = u_wave_dat(:,10);
T_mean = u_wave_dat(:,11);
H_max = u_wave_dat(:,12);
T_max = u_wave_dat(:,13);
% 年月などのデータを1つのセルへ------>datetime
wave_t = datetime(year,month,day,hour,min,0);
%
% 日付データをnumbering
wave_date_number = datenum(wave_t); 
% 
% current data
% 
% 
% input--->流速データ、流速の切り取り周波数領域、データ数
% output--->TKE(20層の5分間隔の時系列データ、および30分平均値)、各方向の平均流、乱流成分

ADCPcurrent_filename = 'current_data_2017_1029-1106.mat';
dir_ADCPcurrent = [drive,directory,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 結果のタイムステップ数-1をl_data
l_data = 384;
% 
Total_mean_TKE = 0;
TKE_t = zeros(l_data+1,19);
mean_current_u = zeros(l_data+1,19);
mean_current_u_t = zeros(l_data+1,19);
mean_current_v =zeros(l_data+1,19);
mean_current_v_t = zeros(l_data+1,19);
mean_current_w = zeros(l_data+1,19);
mean_current_w_t = zeros(l_data+1,19);
current_u_turb =zeros(l_data+1,19);
current_v_turb = zeros(l_data+1,19);
current_w_turb = zeros(l_data+1,19);
current_u_turb_t = zeros(l_data+1,19);
current_v_turb_t = zeros(l_data+1,19);
current_w_turb_t = zeros(l_data+1,19);
current_sample_t = zeros(l_data+1,1);
current_sample_turb = zeros(l_data*4+1,19);
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
   
% remove noise
% --- setup
% 
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = max(size(current_u));
 division = 1;
 loop = length;
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];

% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];

% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end
    
%   平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
    number = (j - 1)/4 + 1;
    starttime = j;
    endtime = j + 3;
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
    current_sample_t(number) = current_t_number(j);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
         current_w_short = current_w_clean(starttime:endtime,:);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   n = 4;
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
    current_u_turb(j-1+1:j-1+4,:) = P;
    mean_current_u(j-1+1:j-1+4,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
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
    % TKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
current_t_start = datenum('2017/11/01 00:00:00');
current_t_end = datenum('2017/11/06 08:00:00');
time_span = (current_t_end - current_t_start)/l_data;
time_span2 = (current_t_end - current_t_start)/(l_data*4);
current_sample_t2 = (current_t_start:time_span:current_t_end)';
current_sample_t3 = (current_t_start:time_span2:current_t_end)';
time_17111 = datetime(current_sample_t2,'ConvertFrom','datenum');
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
turb_u_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_u_turb,current_sample_t3);
turb_v_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_v_turb,current_sample_t3);
turb_w_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_w_turb,current_sample_t3);
u_t3 = interp1(current_t_number,current_u_clean,current_sample_t3);
v_t3 = interp1(current_t_number,current_v_clean,current_sample_t3);
w_t3 = interp1(current_t_number,current_w_clean,current_sample_t3);
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);
% 
% 
ww = datevec(wave_date_number);
wav_t = datetime(ww(:,1),ww(:,2),ww(:,3),ww(:,4),ww(:,5),0);
cc = datevec(current_sample_t2);
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
[C,iw,ic] = intersect(wav_t,cur_t);
TKE_t2_7n1 = TKE_t2(ic,:);
mean_u_7n1 = mean_current_u_t2(ic,:);
mean_v_7n1 = mean_current_v_t2(ic,:);
mean_w_7n1 = mean_current_w_t2(ic,:);
turb_u_7n1 = turb_u_t2(ic,:);
turb_v_7n1 = turb_v_t2(ic,:);
turb_w_7n1 = turb_w_t2(ic,:);
c_dir_7n1 = current_dir_t2(ic,:);
c_mag_7n1 = current_mag_t2(ic,:);
time_17111 = time_17111(ic,:);
H_s_7n1  = H_s(iw);
T_s_7n1 = T_s(iw);
cc = datevec(current_sample_t2(ic));
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
WW = datevec(wind_date_number);
win_t = datetime(WW(:,1),WW(:,2),WW(:,3),WW(:,4),WW(:,5),0);
[C,iw,ic] = intersect(cur_t,win_t);
TKE_t2_7n1 = TKE_t2_7n1(iw,:);
TKE_t2_7n1 = TKE_t2_7n1(iw,:);
mean_u_7n1= mean_u_7n1(iw,:);
mean_v_7n1 = mean_v_7n1(iw,:);
mean_w_7n1 = mean_w_7n1(iw,:);
c_dir_7n1 = c_dir_7n1(iw,:);
c_mag_7n1 = c_mag_7n1(iw,:);
turb_u_7n1 = turb_u_7n1(iw,:);
turb_v_7n1 = turb_v_7n1(iw,:);
turb_w_7n1 = turb_w_7n1(iw,:);
time_17111 = time_17111(iw,:);
mag_wind_7n1 = mag_wind(ic,:);
dir_wind_7n1 = dir_wind(ic,:);
clear min
% 
% 
% --------------------------------------------------------------------------------------------------------------------
% 
% November2
% 
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Ech_wind_10min_ave_2017Nov.dat'];
% コンマ区切りファイル(CSVファイル)の読み取り----->csvread
w_dat = csvread(wind_filename,2,0);
% 
%-999をNaNデータとして登録
w_dat(w_dat == -999) = NaN; 
% 
% w_datの中から各データを抽出
year = w_dat(:,1);
month = w_dat(:,2);
day = w_dat(:,3);
hour = w_dat(:,4);
Min = w_dat(:,5);
sonic_windu = w_dat(:,6);
sonic_windv = w_dat(:,7);
sonic_windw = w_dat(:,8);
sonic_windt = w_dat(:,9);
mag_wind = w_dat(:,10);
dir_wind = w_dat(:,11);
max_wind = w_dat(:,12);
num_max = w_dat(:,13);
%
% 年月などのデータを1つのセルへ------>datetime
%
w_t = datetime(year,month,day,hour,Min,0);
%
% datetimeであらわされる配列を数字に変換------->datenum
wind_date_number = datenum(w_t);  
% 
% wavedata
% 
Denpa_filename = [drive,directory,'B4research\in\ultrasonic_wavedata\raw data\Denpa_sigwave_201711-2.csv'];
% csvデータ（UltraSonic_wavedata）の読みとり
u_wave_dat = csvread(Denpa_filename,2,0);
% 
% -999をNaNデータとして認識させる
u_wave_dat(u_wave_dat == -999) = NaN;

% 各データの割り当て
year = u_wave_dat(:,1);
month = u_wave_dat(:,2);
day = u_wave_dat(:,3);
hour = u_wave_dat(:,4);
min = u_wave_dat(:,5);
serial = u_wave_dat(:,6);
H_s = u_wave_dat(:,7);
T_s = u_wave_dat(:,8);
num_sig = u_wave_dat(:,9);
H_mean = u_wave_dat(:,10);
T_mean = u_wave_dat(:,11);
H_max = u_wave_dat(:,12);
T_max = u_wave_dat(:,13);
% 年月などのデータを1つのセルへ------>datetime
wave_t = datetime(year,month,day,hour,min,0);
%
% 日付データをnumbering
wave_date_number = datenum(wave_t); 
% 
% current
% 
% input--->流速データ、流速の切り取り周波数領域、データ数
% output--->TKE(20層の5分間隔の時系列データ、および30分平均値)、各方向の平均流、乱流成分

ADCPcurrent_filename = 'current_data_2017_1117-1130.mat'
dir_ADCPcurrent = [drive,directory,'B4research\in\current_ADCP_data\raw data'];
ADCPcurrent_filename = fullfile(dir_ADCPcurrent,ADCPcurrent_filename);
load(ADCPcurrent_filename);
% 結果のタイムステップ数-1をl_data
l_data = 968;
% 
Total_mean_TKE = 0;
TKE_t = zeros(l_data+1,19);
mean_current_u = zeros(l_data+1,19);
mean_current_u_t = zeros(l_data+1,19);
mean_current_v =zeros(l_data+1,19);
mean_current_v_t = zeros(l_data+1,19);
mean_current_w = zeros(l_data+1,19);
mean_current_w_t = zeros(l_data+1,19);
current_u_turb =zeros(l_data+1,19);
current_v_turb = zeros(l_data+1,19);
current_w_turb = zeros(l_data+1,19);
current_u_turb_t = zeros(l_data+1,19);
current_v_turb_t = zeros(l_data+1,19);
current_w_turb_t = zeros(l_data+1,19);
current_sample_t = zeros(l_data+1,1);
current_sample_turb = zeros(l_data*4+1,19);
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
   
% remove noise
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = max(size(current_u));
 division = 1;
 loop = length;
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = [];

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end


    
%  平均流、乱流を計算
for j = 1:4:(floor((length)/4)*4-3)
    number = (j - 1)/4 + 1;
    starttime = j;
    endtime = j + 3;
    f_low = 0;
    f_high = 0 ;
    %     
    % 時間データをnumbering
    % 時間データは5分おき
    current_t_number = datenum(current_t);
    current_sample_t(number) = current_t_number(j);
    %
    % 各変数名をわかりやすく変換
        % 南北方向の流速
        current_v = SerNmmpersec(:,1:19);
        current_v_short = current_v_clean(starttime:endtime,:);
        % 東西方向の流速
        current_u = SerEmmpersec(:,1:19);
         current_u_short = current_u_clean(starttime:endtime,:);
        % 鉛直方向の流速
        current_w = SerVmmpersec(:,1:19);
         current_w_short = current_w_clean(starttime:endtime,:);
        % 流速の大きさ
        current_mag = SerMagmmpersec(:,1:19);
        % 流向
        current_dir = SerDir10thDeg(:,1:19);
   n = 4;
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
    current_u_turb(j-1+1:j-1+4,:) = P;
    mean_current_u(j-1+1:j-1+4,:) = x - P; 
     mean_current_u_t(number,:) = mean_current_u(4*number,:);
    current_u_turb_t(number,:)  = sum(current_u_turb(4*number-3:4*number,:))/4;
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
    % TKE計算
    TKE = (u_turb.*u_turb + v_turb.*v_turb + w_turb.*w_turb)/2;
    % 
    % 計測深さを設定
    depth = (-6.62:0.35:-0.32);
    mean_TKE = (TKE(1,:)+TKE(2,:)+TKE(3,:)+TKE(4,:))./4;
    TKE_t(number,:) = mean_TKE; 
end
current_t_start = datenum('2017/11/17 13:00:00');
current_t_end = datenum('2017/11/30 23:40:00');
time_span = (current_t_end - current_t_start)/l_data;
time_span2 = (current_t_end - current_t_start)/(l_data*4);
current_sample_t2 = (current_t_start:time_span:current_t_end)';
current_sample_t3 = (current_t_start:time_span2:current_t_end)';
time_17112 = datetime(current_sample_t2,'ConvertFrom','datenum');
u_t2 = interp1(current_t_number,current_u_clean,current_sample_t2);
v_t2 = interp1(current_t_number,current_v_clean,current_sample_t2);
w_t2 = interp1(current_t_number,current_w_clean,current_sample_t2);
mean_current_u_t2 = interp1(current_sample_t,mean_current_u_t,current_sample_t2);
mean_current_v_t2 = interp1(current_sample_t,mean_current_v_t,current_sample_t2);
mean_current_w_t2 = interp1(current_sample_t,mean_current_w_t,current_sample_t2);
current_dir_t2 = interp1(current_t_number,current_dir,current_sample_t2);
current_mag_t2 = interp1(current_t_number,current_mag,current_sample_t2);
turb_u_t2 = u_t2 - mean_current_u_t2;
turb_v_t2 = v_t2 - mean_current_v_t2;
turb_w_t2 = w_t2 - mean_current_w_t2;
turb_u_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_u_turb,current_sample_t3);
turb_v_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_v_turb,current_sample_t3);
turb_w_t3 = interp1(current_t_number(1:floor((length)/4)*4),current_w_turb,current_sample_t3);
u_t3 = interp1(current_t_number,current_u_clean,current_sample_t3);
v_t3 = interp1(current_t_number,current_v_clean,current_sample_t3);
w_t3 = interp1(current_t_number,current_w_clean,current_sample_t3);
TKE_t2 = interp1(current_sample_t,TKE_t,current_sample_t2);
% 
% 
ww = datevec(wave_date_number);
wav_t = datetime(ww(:,1),ww(:,2),ww(:,3),ww(:,4),ww(:,5),0);
cc = datevec(current_sample_t2);
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
[C,iw,ic] = intersect(wav_t,cur_t);
TKE_t2_7n2 = TKE_t2(ic,:);
mean_u_7n2 = mean_current_u_t2(ic,:);
mean_v_7n2 = mean_current_v_t2(ic,:);
mean_w_7n2 = mean_current_w_t2(ic,:);
turb_u_7n2 = turb_u_t2(ic,:);
turb_v_7n2 = turb_v_t2(ic,:);
turb_w_7n2 = turb_w_t2(ic,:);
c_dir_7n2 = current_dir_t2(ic,:);
c_mag_7n2 = current_mag_t2(ic,:);
time_17112 = time_17112(ic,:);
H_s_7n2  = H_s(iw);
T_s_7n2 = T_s(iw);
cc = datevec(current_sample_t2(ic));
cur_t = datetime(cc(:,1),cc(:,2),cc(:,3),cc(:,4),cc(:,5),0);
WW = datevec(wind_date_number);
win_t = datetime(WW(:,1),WW(:,2),WW(:,3),WW(:,4),WW(:,5),0);
[C,iw,ic] = intersect(cur_t,win_t);
TKE_t2_7n2 = TKE_t2_7n2(iw,:);
TKE_t2_7n2 = TKE_t2_7n2(iw,:);
mean_u_7n2= mean_u_7n2(iw,:);
mean_v_7n2 = mean_v_7n2(iw,:);
mean_w_7n2 = mean_w_7n2(iw,:);
c_dir_7n2 = c_dir_7n2(iw,:);
c_mag_7n2 = c_mag_7n2(iw,:);
turb_u_7n2 = turb_u_7n2(iw,:);
turb_v_7n2 = turb_v_7n2(iw,:);
turb_w_7n2 = turb_w_7n2(iw,:);
time_17112 = time_17112(iw,:);
mag_wind_7n2 = mag_wind(ic,:);
dir_wind_7n2 = dir_wind(ic,:);
clear min
% 
% 
% ---------------------------------------------------------------------------------------------------------------------
% 読み取り完了
% 
% 
% 
% 風速データと波高データ、およびTKEの全データを結合
% 
% 
% 
wind_speed_all = vertcat(mag_wind_6s,mag_wind_6o,mag_wind_7o,mag_wind_7n1,mag_wind_7n2);
TKE_all = vertcat(TKE_t2_6s,TKE_t2_6o,TKE_t2_7o,TKE_t2_7n1,TKE_t2_7n2);
H_s_all = vertcat(H_s_6s,H_s_6o,H_s_7o,H_s_7n1,H_s_7n2);
dir_all = vertcat(dir_wind_6s,dir_wind_6o,dir_wind_7o,dir_wind_7n1,dir_wind_7n2);
T_s_all = vertcat(T_s_6s,T_s_6o,T_s_7o,T_s_7n1,T_s_7n2);
mean_u_all = vertcat(mean_u_6s,mean_u_6o,mean_u_7o,mean_u_7n1,mean_u_7n2);
mean_v_all = vertcat(mean_v_6s,mean_v_6o,mean_v_7o,mean_v_7n1,mean_v_7n2);
mean_w_all = vertcat(mean_w_6s,mean_w_6o,mean_w_7o,mean_w_7n1,mean_w_7n2);
turb_u_all = vertcat(turb_u_6s,turb_u_6o,turb_u_7o,turb_u_7n1,turb_u_7n2);
turb_v_all = vertcat(turb_v_6s,turb_v_6o,turb_v_7o,turb_v_7n1,turb_v_7n2);
turb_w_all = vertcat(turb_w_6s,turb_w_6o,turb_w_7o,turb_w_7n1,turb_w_7n2);
ratio_u = turb_u_all./(mean_u_all+turb_u_all+tide_u_all);
ratio_v = turb_v_all./(mean_v_all+turb_v_all+tide_v_all);
ratio_w = turb_w_all./(mean_w_all+turb_w_all+tide_w_all);
c_dir_all = vertcat(c_dir_6s,c_dir_6o,c_dir_7o,c_dir_7n1,c_dir_7n2);
c_mag_all = vertcat(c_mag_6s,c_mag_6o,c_mag_7o,c_mag_7n1,c_mag_7n2);
time_all = vertcat(time_169,time_1610,time_1710,time_17111,time_17112);
[C,iw,ic] = intersect(datenum(time_all),wave_time_number);
wind_speed_all = wind_speed_all(iw);
TKE_all = TKE_all(iw,:);
H_s_all = H_s_all(iw);
dir_all = dir_all(iw);
T_s_all = T_s_all(iw);
mean_u_all = mean_u_all(iw,:);
mean_v_all = mean_v_all(iw,:);
mean_w_all = mean_w_all(iw,:);
turb_u_all = turb_u_all(iw,:);
turb_v_all = turb_v_all(iw,:);
turb_w_all = turb_w_all(iw,:);
ratio_u = ratio_u(iw,:);
ratio_v = ratio_v (iw,:);
ratio_w = ratio_w(iw,:);
c_dir_all = c_dir_all(iw,:)
c_mag_all = c_mag_all(iw,:);
time_all = time_all(iw);
wave_dir_all = wave_dir(ic);
