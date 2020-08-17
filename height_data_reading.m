% ���ʃf�[�^����Ӕg�G�l���M�[�U����v�Z����R�[�h
% Code by Takagi 2020/03/25�@�C���@


% 2016�N�̃f�[�^
cd 'E:\denpa\2016';
% csv�t�@�C���̓ǂݍ���
% dir�֐��Ńt�H���_����.csv���\���̂̌`�Ŋi�[
list = dir('*.csv'); % ���݂̃t�H���_�[�ɂ����ʂ� .csv �����X�g
h_data_2016 = list;
h_2016 = [];
% �f�[�^�̐��`
% �\���̓��ɂ���csv�t�@�C����1�����o���āA���̒��̐��ʃf�[�^�̂ݘA������
for n = 1:length(h_data_2016)
X = csvread(h_data_2016(n).name,0,1);
h_2016 =vertcat(h_2016,X(:,1));
end
% �����̂�����C�����邽�߂�interp
% 0.5�b�u���̃f�[�^�ɏC��
h_length = length(h_2016);
start_time = datenum('2016/09/01 00:00:00');
end_time = datenum('2016/11/30 23:59:59.5');
span_original = (end_time - start_time)/(h_length-1);
span_ideal = 1/(60*60*24*2);
date_original = start_time:span_original:end_time;
date_ideal = start_time:span_ideal:end_time;
% h16�F�C����̐��ʃf�[�^
h16 = interp1(date_original,h_2016,date_ideal);
ew_16 = [];

% 20�����f�[�^��؂�o��
for i = 1:length(date_ideal/2400)
    x = h16(2400*i-2399:2400*i);
% 20���̒��ɂ���f�[�^���Fn
n  = 2400;
   df = 2/n;
   c1 = fft(x,n);
power = abs(c1.*conj(c1))/n;
f  = df*(0:n-1);

coeff = ones(1,4)/4;
% ����4�̑���filtering�i�ړ����ρj
% fft�ňӖ�������͔̂����̒����܂�
avg = filter(coeff, 1, power(1:2400/2));
% filtering�ɂ��x���̔������l������
fDelay = (length(coeff)-1)/2;
% loglog(f(1:1200),power(1:1200)./1000000, ...
%      f(1:1200)-fDelay*df,avg./1000000,'LineWidth',1.4)
% trapz�F�ϕ�
energy = trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000);
omega_ave = 1./(trapz(f(14:1200)-fDelay*df,avg(14:1200)./1000000./((f(14:1200)-fDelay*df)*2*pi))./energy);
omega = (f(14:1200)-fDelay*df)*2*pi;
alpha = energy.*(omega_ave.^4)./(g*2);
alpha_pm = 0.66*4.57*0.001;
S_ds = (-2.33*0.00001*omega_ave*((omega./omega_ave).^2).*((alpha./alpha_pm).^2).*avg(14:1200)./1000000);
ew = g.*trapz(f(14:1200)-fDelay*df,S_ds);
ew_16 = vertcat(ew_16,ew);
end

% 2017�N�̃f�[�^
cd 'E:\denpa\2017';
% �e�L�X�g�t�@�C���̓ǂݍ���
list = dir('*.csv'); % ���݂̃t�H���_�[�ɂ��� .txt �����X�g
h_data_2017 = list;
h_2017 = [];
% �f�[�^�̓ǂݍ���
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