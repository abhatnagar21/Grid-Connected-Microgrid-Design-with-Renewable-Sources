% Grid-Connected Microgrid Simulation in MATLAB Simulink
clc; clear; close all;

% Simulation Time
T_sim = 10; % 10 seconds

t = linspace(0, T_sim, 100); % Time vector for plotting

%% Solar PV Model
P_solar = 500; % 500W PV generation
V_solar = 48;  % 48V DC output

%% Wind Turbine Model
P_wind = 1000; % 1kW Wind Power
V_wind = 400;  % 400V AC output

%% Battery Storage System
P_battery = 750; % 750W Capacity
V_battery = 48;  % 48V DC
SOC_initial = 0.8; % 80% Initial SOC

%% Grid Parameters
V_grid = 400; % 400V AC
f_grid = 50;  % 50Hz Frequency

%% Load Demand
P_load = 1200; % 1.2kW Load

%% Islanding Detection
threshold_freq = 49; % Islanding frequency threshold

%% Synchronization Check
if (P_solar + P_wind + P_battery) >= P_load
    disp('Microgrid is stable and connected to the grid');
else
    disp('Islanding mode detected, switching to battery backup');
end

%% Plot Results
figure;
subplot(3,1,1);
plot(t, V_solar * ones(size(t)), 'r', 'LineWidth', 2);
hold on;
plot(t, V_wind * ones(size(t)), 'b', 'LineWidth', 2);
title('Voltage Profiles'); legend('Solar PV Voltage', 'Wind Turbine Voltage'); grid on;

P_total = P_solar + P_wind + P_battery - P_load;

subplot(3,1,2);
plot(t, P_total * ones(size(t)), 'g', 'LineWidth', 2);
title('Power Balance in Microgrid');
legend('Net Power Flow'); grid on;

freq_variation = linspace(f_grid, threshold_freq, length(t));
subplot(3,1,3);
plot(t, freq_variation, 'k', 'LineWidth', 2);
title('Frequency Variation (Islanding Mode)');
legend('Grid Frequency'); grid on;
