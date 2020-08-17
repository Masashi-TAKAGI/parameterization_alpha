% winddata��ǂ݂��ރR�[�h
% Code by Takagi
% 2020/03/26 �C���ς�

% �t�@�C����
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
wind_filename = [drive,directory,'B4research\in\winddata\raw data\Wind_data2016.csv'];
% �ǂݍ��݃t�H�[�}�b�g
wind_fmt = '%s %f64 %f64 %f64 %f64 %f64 %f64 %f64 %f64';

%fopen
fileID = fopen(wind_filename,'r');
%header�̓ǂݎ��
% textscan�̓e�L�X�g�t�@�C������f�[�^��cell�z��ɓǂݎ��
header = textscan(fileID,'%s %s %s %s %s %s %s %s %s',1);
%���̂ق��̃f�[�^���R���}����؂�ɂ��ēǂݎ��(Delimiter)
wind_dat = textscan(fileID,wind_fmt,'Delimiter',',');
date_dat = wind_dat{:,1} ;%cell�z��́o�p���g���ĎQ�Ƃ���;
% 

% �e�f�[�^�̊��蓖��
% u��������
sonic_windu = wind_dat{:,4};
% v��������
sonic_windv = wind_dat{:,5};
% w��������
sonic_windw = wind_dat{:,6};
% ��C���x
sonic_windt = wind_dat{:,9};
% �����i��Βl�j
mag_wind = wind_dat{:,2};
% ����
dir_wind = wind_dat{:,3};
% �ő啗��
max_wind = wind_dat{:,7};


% �N���Ȃǂ̃f�[�^��1�̃Z����------>datetime

% ���t�f�[�^��numbering
fmt_in = 'yyyy/mm/dd HH:MM';
wind_date_number  = datenum(date_dat,fmt_in);