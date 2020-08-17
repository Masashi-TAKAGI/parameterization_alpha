%�g��ADCP�f�[�^��ǂݎ��R�[�h
% Code by Takagi
% 2020/03/26�@�C��

% �t�@�C����
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
ADCP_wave_filename = [drive,directory,'SOO\2016\2016ADCP.prj\2016ADCP_008_000_LOG8.txt'];
%
% csv�i�R���}��؂�j�f�[�^'.csv'��ǂݍ���
% �ǂݍ��݂̃t�H�[�}�b�g
wave_fmt = '%u32 %u32 %u32 %u32 %u32 %u32 %f %f %f %f %f %f %f %f %u32 %f %f %u32';

%fopen
fileID = fopen(ADCP_wave_filename,'r');
%header�̓ǂݎ��
% textscan�̓e�L�X�g�t�@�C������f�[�^��cell�z��ɓǂݎ��
header1 = textscan(fileID,'%s',22,'Delimiter',',');
%���̂ق��̃f�[�^���R���}����؂�ɂ��ēǂݎ��(Delimiter)
c_dat = textscan(fileID,wave_fmt,'Delimiter',',');
year = c_dat{:,1} ;%cell�z��́o�p���g���ĎQ�Ƃ���
month = c_dat{:,2};
day = c_dat{:,3};
hour = c_dat{:,4};
minites = c_dat{:,5};
second = c_dat{:,6};
% ����
wave_dir_1600 = c_dat{:,15};
wave_t_1600 = datetime(2000+year,month,day,hour,minites,second);

% ���t�f�[�^��numbering
wave_date_number_1600 = datenum(wave_t_1600);

