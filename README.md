![image](https://github.com/user-attachments/assets/87392c2b-5b26-40be-96c0-21d932b53adc)
Grid-Connected Microgrid Design with Renewable Sources (MATLAB)

Overview

This MATLAB Simulink project models a grid-connected microgrid that integrates solar, wind, and battery storage. The system performs grid synchronization and studies islanding effects when disconnected from the main power grid.

Features

✅ Solar PV System - Generates 500W at 48V DC✅ Wind Turbine Model - Produces 1kW at 400V AC✅ Battery Energy Storage System (BESS) - Stores 750W power, operates at 48V DC✅ Grid Synchronization - Ensures seamless power transition between microgrid and utility grid✅ Islanding Detection - Monitors grid frequency and switches to backup power when necessary✅ Graphical Analysis - Plots voltage profiles, power balance, and frequency variations

How to Run

1. Open MATLAB Online or MATLAB Desktop

Go to https://matlab.mathworks.com/ (for MATLAB Online users)

If using MATLAB Desktop, ensure Simulink is installed

2. Run the MATLAB Script

Open microgrid_simulink.m in MATLAB

Click Run or execute in the Command Window

3. Observe the Plots

Voltage Profiles of Solar & Wind

Net Power Flow in the Microgrid

Frequency Variation in Islanding Mode

Dependencies

🔹 MATLAB with Simulink🔹 Power Systems Toolbox (recommended for advanced analysis)🔹 Signal Processing Toolbox (optional for grid harmonics analysis)

Next Steps

Enhancements that can be added:

MPPT Control for Solar PV to optimize power output

Real-Time Load Management with AI-based demand prediction

Hybrid Energy Storage (Battery + Supercapacitor) for better transient response
