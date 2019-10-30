%% Data from DUCAT Measurement at 3 GHz

datafilepath = ('./');

[S_BG,Nport,t]=readsp2([datafilepath,'BG3GHzCW225s.s2p'],2);
[S_PROP,Nport,t]=readsp2([datafilepath,'PROP3GHzCW225s.s2p'],2);

S_21 = S_PROP - S_BG;
signal_o = flip(S_21(:,2,1));
signal = repmat( signal_o, 2, 1 );

angle_step_ducat = 180/length(t); % Deg/step
%% Feko simulation SEP

% T = readtable('SEP_FEM_2510_VH.dat');
% % T = readtable('Sphere_3D_10GHz.dat');
% 
% Phi = T.PlaneWavePhi_deg_;
% 
% %T6 = readtable('dipole_FF_300e6_numseg31.dat');
% figure;
% plot(Phi, (T.Cyliner_SEP_V2_lam40_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_SEP_V2_lam80_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_SEP_V2_lam120_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_SEP_V2_lam145_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_SEP_V2_lam160_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_SEP_V2_lam180_dBsm_), 'LineWidth', 2);
% hold on;
% plot(Phi, (T.Cyliner_FEM_V2_dBsm_), 'LineWidth', 2);
% grid on;
% 
% xlabel('Plane wave \phi (deg)', 'FontSize', 12, 'FontWeight', 'bold');
% ylabel('RCS [dbm^2]  1 GHz', 'FontSize', 12, 'FontWeight', 'bold');
% title('RCS of a Hollow Cylinder filled with Carbide VH Pol', 'FontSize', 12, 'FontWeight', 'bold');
% 
% legend({'SEP mesh: \lambda/40', 'SEP mesh: \lambda/80', 'SEP mesh: \lambda/120','SEP mesh: \lambda/145', 'SEP mesh: \lambda/160',...
%     'SEP mesh: \lambda/180', 'FEM mesh: \lambda/145'}, 'FontSize', 12, 'FontWeight', 'bold');

