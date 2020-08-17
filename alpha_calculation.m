% 観測値からパラメータαを導くコード
% code by Takagi 2020/03/25 修正
% 観測値がまとまったファイル---> fname
drive = 'C:';
directory = '\Users\eggdo\Desktop\';
fname = [drive,directory,'B4research\in\analysed_observation_data\integrated_data_all.mat'];

% ファイルを読み込んで観測パラメータを呼び出し
load(fname);
% 風向・波向の差
dir_diff = abs(wave_dir_all - dir_all);
% 風向・波向きの関係で3パターンに分類
direction_along = find(dir_diff<30 | dir_diff>330);
direction_opposite = find(dir_diff<210 & dir_diff>150);
direction_others = find((dir_diff>30 & dir_diff<150) | (dir_diff<330 & dir_diff>210));
% 重力加速度
g = 9.80665;
% 全てのケースでαを求める

% M_u：運動量flux
% du_dz,dv_dz：流速の鉛直勾配　dk/dz：TKEの鉛直勾配
M_u_all = -(turb_u_all.*turb_w_all)/1000000;
M_v_all = -(turb_v_all.*turb_w_all)/1000000;
du_dz_all = gradient(mean_u_all/1000,0.35);
dv_dz_all = gradient(mean_v_all/1000,0.35);
dk_dz_all = gradient(TKE_all/1000000,0.35);
% 海面でのエネルギー散逸が正で、TKEの鉛直勾配が正でかつTKE fluxが小さすぎないデータのみ抽出
select_all = find(M_u_all(:,19).*du_dz_all(:,19)>0 & M_v_all(:,19).*dv_dz_all(:,19)>0 &dk_dz_all(:,19)>0 & ew_all<-0.0000001);
% e_all：エネルギー散逸率
e_all = M_u_all(select_all,:).*du_dz_all(select_all,:)+M_v_all(select_all,:).*dv_dz_all(select_all,:);
% 使えるデータのみを抽出
TKE_comp = TKE_all(select_all,:);
ew_comp = ew_all(select_all);
dk_dz_comp = dk_dz_all(select_all,:);
H_s_comp = H_s_all(select_all);
wind_speed_comp = wind_speed_all(select_all);
T_s_comp = T_s_all(select_all);
dir_diff_comp = dir_diff(select_all);
alpha_comp = 0.107*(TKE_comp(:,19)/1000000.^2).*dk_dz_comp(:,19)./(e_all(:,19).*-ew_comp);

% 風向・波向が近いケース
wind_speed_along = wind_speed_all(direction_along);
H_s_along = H_s_all(direction_along);
dir_along = dir_all(direction_along);
TKE_along = TKE_all(direction_along,:);
T_s_along = T_s_all(direction_along);
mean_u_along = mean_u_all(direction_along,:);
mean_v_along = mean_v_all(direction_along,:);
mean_w_along = mean_w_all(direction_along,:);
turb_u_along = turb_u_all(direction_along,:);
turb_v_along = turb_v_all(direction_along,:);
turb_w_along = turb_w_all(direction_along,:);
c_dir_along = c_dir_all(direction_along,:);
c_mag_along = c_mag_all(direction_along,:);
time_along = time_all(direction_along,:);
ew_along = ew_all(direction_along);
M_u_along = -(turb_u_along.*turb_w_along)/1000000;
M_v_along = -(turb_v_along.*turb_w_along)/1000000;
du_dz_along = gradient(mean_u_along/1000,0.35);
dv_dz_along = gradient(mean_v_along/1000,0.35);
dk_dz_along = gradient(TKE_along/1000000,0.35);
select_along = find(M_u_along(:,19).*du_dz_along(:,19)>0 & M_v_along(:,19).*dv_dz_along(:,19)>0 &dk_dz_along(:,19)>0 & ew_along<-0.0000001);
e_along = M_u_along(select_along,:).*du_dz_along(select_along,:)+M_v_along(select_along,:).*dv_dz_along(select_along,:);
TKE_along = TKE_along(select_along,:);
ew_along = ew_along(select_along);
dk_dz_along = dk_dz_along(select_along,:);
H_s_along = H_s_along(select_along);
wind_speed_along = wind_speed_along(select_along);
T_s_along = T_s_along(select_along);
alpha_along = 0.107*(TKE_along(:,19)/1000000.^2).*dk_dz_along(:,19)./(e_along(:,19).*-ew_along);

% 風向・波向が逆のケース
wind_speed_opposite = wind_speed_all(direction_opposite);
H_s_opposite = H_s_all(direction_opposite);
dir_opposite = dir_all(direction_opposite);
TKE_opposite = TKE_all(direction_opposite,:);
T_s_opposite = T_s_all(direction_opposite);
mean_u_opposite = mean_u_all(direction_opposite,:);
mean_v_opposite = mean_v_all(direction_opposite,:);
mean_w_opposite = mean_w_all(direction_opposite,:);
turb_u_opposite = turb_u_all(direction_opposite,:);
turb_v_opposite = turb_v_all(direction_opposite,:);
turb_w_opposite= turb_w_all(direction_opposite,:);
c_dir_opposite = c_dir_all(direction_opposite,:);
c_mag_opposite = c_mag_all(direction_opposite,:);
time_opposite = time_all(direction_opposite,:);
ew_opposite = ew_all(direction_opposite);
M_u_opposite = -(turb_u_opposite.*turb_w_opposite)/1000000;
M_v_opposite = -(turb_v_opposite.*turb_w_opposite)/1000000;
du_dz_opposite = gradient(mean_u_opposite/1000,0.35);
dv_dz_opposite = gradient(mean_v_opposite/1000,0.35);
dk_dz_opposite = gradient(TKE_opposite/1000000,0.35);
select_opposite = find(M_u_opposite(:,19).*du_dz_opposite(:,19)>0 & M_v_opposite(:,19).*dv_dz_opposite(:,19)>0 &dk_dz_opposite(:,19)>0 & ew_opposite<-0.0000001);
e_opposite = M_u_opposite(select_opposite,:).*du_dz_opposite(select_opposite,:)+M_v_opposite(select_opposite,:).*dv_dz_opposite(select_opposite,:);
TKE_opposite = TKE_opposite(select_opposite,:);
ew_opposite = ew_opposite(select_opposite);
dk_dz_opposite = dk_dz_opposite(select_opposite,:);
H_s_opposite = H_s_opposite(select_opposite);
T_s_opposite = T_s_opposite(select_opposite);
wind_speed_opposite = wind_speed_opposite(select_opposite);
alpha_opposite = 0.107*(TKE_opposite(:,19)/1000000.^2).*dk_dz_opposite(:,19)./(e_opposite(:,19).*-ew_opposite);


% 風向・波向がその他のケース
wind_speed_others = wind_speed_all(direction_others);
H_s_others = H_s_all(direction_others);
dir_others = dir_all(direction_others);
TKE_others = TKE_all(direction_others,:);
T_s_others = T_s_all(direction_others);
mean_u_others = mean_u_all(direction_others,:);
mean_v_others = mean_v_all(direction_others,:);
mean_w_others = mean_w_all(direction_others,:);
turb_u_others = turb_u_all(direction_others,:);
turb_v_others = turb_v_all(direction_others,:);
turb_w_others= turb_w_all(direction_others,:);
c_dir_others = c_dir_all(direction_others,:);
c_mag_others = c_mag_all(direction_others,:);
time_others = time_all(direction_others,:);
ew_others = ew_all(direction_others);
M_u_others = -(turb_u_others.*turb_w_others)/1000000;
M_v_others = -(turb_v_others.*turb_w_others)/1000000;
du_dz_others = gradient(mean_u_others/1000,0.35);
dv_dz_others = gradient(mean_v_others/1000,0.35);
dk_dz_others = gradient(TKE_others/1000000,0.35);
select_others = find(M_u_others(:,19).*du_dz_others(:,19)>0 & M_v_others(:,19).*dv_dz_others(:,19)>0 & dk_dz_others(:,19)>0 & ew_others<-0.0000001);
e_others = M_u_others(select_others,:).*du_dz_others(select_others,:)+M_v_others(select_others,:).*dv_dz_others(select_others,:);
TKE_others = TKE_others(select_others,:);
ew_others = ew_others(select_others);
dk_dz_others = dk_dz_others(select_others,:);
H_s_others = H_s_others(select_others);
T_s_others = T_s_others(select_others);
wind_speed_others = wind_speed_others(select_others);
alpha_others = 0.107*(TKE_others(:,19)/1000000.^2).*dk_dz_others(:,19)./(e_others(:,19).*-ew_others);
