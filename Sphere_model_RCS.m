close all;
clear;
clc;


T = readtable('2Blades_Carbide_VV_V3.dat');
% T = readtable('Sphere_3D_10GHz.dat');

Phi = T.PlaneWavePhi_deg_;

%T6 = readtable('dipole_FF_300e6_numseg31.dat');
figure;
plot(Phi, T.x2Blades_SEP_lam8_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam16_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam20_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam32_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam40_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam64_Carbide_dBsm_, '-.', 'LineWidth', 2);
hold on;
plot(Phi, T.x2Blades_SEP_lam80_Carbide_dBsm_, '-.', 'LineWidth', 2);
hold on;
%plot(Phi, T.x2Blades_SEP_lam80_Carbide_dBsm_, '-.', 'LineWidth', 2);

grid on;

xlabel('Plane wave \phi (deg)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('RCS [dbm^2]  3 GHz', 'FontSize', 12, 'FontWeight', 'bold');
title('RCS of the Propeller (2 Blades) filled with Carbide VV Pol', 'FontSize', 12, 'FontWeight', 'bold');

legend({'\lambda/8', '\lambda/16', '\lambda/20', '\lambda/32', '\lambda/40', '\lambda/64', '\lambda/80'}, 'FontSize', 12, 'FontWeight', 'bold');
%ylim([-50 -10])
% print('2Blades_RCS_comparison_diff_material_3GHz_not_normalized_VV', '-depsc');
% %% Imp
% 
% close all;
% clear;
% clc;
% 
% 
% T = readtable('A3_A1_imp_5.dat');
% T1 = readtable('A3_A1_imp_61.dat');
% 
% %T6 = readtable('dipole_FF_300e6_numseg31.dat');
% figure;
% plot(T.Var1, T.Var2, 'LineWidth', 2);
% hold on;
% plot(T.Var1, T.Var3, 'LineWidth', 2);
% hold on;
% plot(T1.Var1, T1.Var2, '*', 'LineWidth', 2);
% hold on;
% plot(T1.Var1, T1.Var3, '-.', 'LineWidth', 2);
% hold on;
% grid on;
% 
% xlabel('Frequency (MHz)', 'FontSize', 12, 'FontWeight', 'bold');
% ylabel('|Z_{in}| \Omega', 'FontSize', 12, 'FontWeight', 'bold');
% title('Impedance vs frequency', 'FontSize', 12, 'FontWeight', 'bold');
% legend({'Numseg = 5 With A3', 'Numseg = 5 with A1', 'Numseg = 61 with A3', 'Numseg = 61 with A1'}, 'FontSize', 12, 'FontWeight', 'bold');
% 


%% Hollow Cylinder


close all;
clear;
clc;


T = readtable('SEP_FEM_2510_VH.dat');
% T = readtable('Sphere_3D_10GHz.dat');

Phi = T.PlaneWavePhi_deg_;

%T6 = readtable('dipole_FF_300e6_numseg31.dat');
figure;
plot(Phi, (T.Cyliner_SEP_V2_lam40_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_SEP_V2_lam80_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_SEP_V2_lam120_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_SEP_V2_lam145_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_SEP_V2_lam160_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_SEP_V2_lam180_dBsm_), 'LineWidth', 2);
hold on;
plot(Phi, (T.Cyliner_FEM_V2_dBsm_), 'LineWidth', 2);
grid on;

xlabel('Plane wave \phi (deg)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('RCS [dbm^2]  1 GHz', 'FontSize', 12, 'FontWeight', 'bold');
title('RCS of a Hollow Cylinder filled with Carbide VH Pol', 'FontSize', 12, 'FontWeight', 'bold');

legend({'SEP mesh: \lambda/40', 'SEP mesh: \lambda/80', 'SEP mesh: \lambda/120','SEP mesh: \lambda/145', 'SEP mesh: \lambda/160',...
    'SEP mesh: \lambda/180', 'FEM mesh: \lambda/145'}, 'FontSize', 12, 'FontWeight', 'bold');

% print('2Blades_RCS_comparison_diff_material_3GHz_not_normalized_VV', '-depsc');
% %% Imp
% 
% close all;
% clear;
% clc;
% 
% 
% T = readtable('A3_A1_imp_5.dat');
% T1 = readtable('A3_A1_imp_61.dat');
% 
% %T6 = readtable('dipole_FF_300e6_numseg31.dat');
% figure;
% plot(T.Var1, T.Var2, 'LineWidth', 2);
% hold on;
% plot(T.Var1, T.Var3, 'LineWidth', 2);
% hold on;
% plot(T1.Var1, T1.Var2, '*', 'LineWidth', 2);
% hold on;
% plot(T1.Var1, T1.Var3, '-.', 'LineWidth', 2);
% hold on;
% grid on;
% 
% xlabel('Frequency (MHz)', 'FontSize', 12, 'FontWeight', 'bold');
% ylabel('|Z_{in}| \Omega', 'FontSize', 12, 'FontWeight', 'bold');
% title('Impedance vs frequency', 'FontSize', 12, 'FontWeight', 'bold');
% legend({'Numseg = 5 With A3', 'Numseg = 5 with A1', 'Numseg = 61 with A3', 'Numseg = 61 with A1'}, 'FontSize', 12, 'FontWeight', 'bold');


%% 1 Blade

close all;
clear;
clc;


T = readtable('1Blade_RCS_Carbide_temp_HH.dat');
% T = readtable('Sphere_3D_10GHz.dat');

Phi = T.PlaneWavePhi_deg_;

%T6 = readtable('dipole_FF_300e6_numseg31.dat');
figure;
plot(Phi, T.x1Blade_SEP_lam8_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam16_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam20_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam25_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam32_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam40_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam64_Carbide_dBsm_, 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam80_Carbide_dBsm_, '-.', 'LineWidth', 2);
hold on;
plot(Phi, T.x1Blade_SEP_lam120_Carbide_dBsm_, '--', 'LineWidth', 2);

grid on;

xlabel('Plane wave \phi (deg)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('RCS [dbm^2]  3 GHz', 'FontSize', 12, 'FontWeight', 'bold');
title('RCS of 1 Blade filled with Carbide HH Pol', 'FontSize', 12, 'FontWeight', 'bold');

legend({'\lambda/8', '\lambda/16', '\lambda/20', '\lambda/25', '\lambda/32', '\lambda/40', '\lambda/64', '\lambda/80', '\lambda/120' }, 'FontSize', 12, 'FontWeight', 'bold');