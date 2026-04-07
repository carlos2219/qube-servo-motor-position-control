# QUBE Servo Motor Position Control

This repository documents a motor position control practice developed using the Quanser QUBE-Servo 3 platform during the Minor in Autonomy of Unmanned Aerial Vehicles at Tecnológico de Monterrey.

The practice focuses on the design, analysis, and implementation of a Proportional-Velocity (PV) controller for motor position tracking. It includes the derivation of the control law, closed-loop analysis, controller gain calculation from transient response specifications, MATLAB-based computations, experimental validation, and gain tuning based on observed system performance.

The work also includes a comparison between PV and PD control strategies, highlighting the practical advantage of PV control in reducing the setpoint kick effect and avoiding excessively large control actions. In addition, the implementation was developed and tested in Simulink and QUARC, including a servocontrol configuration using a second QUBE-Servo 3 as reference input.

This repository is intended to present both the theoretical and practical aspects of real-time motor position control on an experimental mechatronic platform.

## Topics Covered
- Motor position control
- Proportional-Velocity (PV) control
- Closed-loop transfer function analysis
- Controller gain design from performance specifications
- MATLAB calculations
- Simulink and QUARC implementation
- Experimental tuning
- PV vs PD controller comparison

## Tools Used
- Quanser QUBE-Servo 3
- MATLAB
- Simulink
- QUARC
