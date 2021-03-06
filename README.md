# NGildertThesis
Repository of code presented in my PhD Thesis: Combining Implicit and Explicit Communication In Object Manipulation Tasks Between Two Robots

The Repo contains all scene files from CoppeliaSim used for experimental results as described in the Thesis as well as any associated scripts used to generate environments.

CONTENTS:

Random Environment Generation:

- Python Script Randomly Generated Environments: genScenes.py

Coppelia Sim Environments:

EST Path Generation:

- Simple Environment Path Solution Generation: PathGeneration_SE.ttt
- Cluttered Environment Path Solution Generation: PathGeneration_CE.ttt
- Randomly Generated Environment Path Solution Generation Path 1: PathGeneration_RE1.ttt
- Randomly Generated Environment Path Solution Generation Path 2: PathGeneration_RE2.ttt
- Randomly Generated Environment Path Solution Generation Path 3: PathGeneration_RE3.ttt

Path Solution CSV Files:

- Simple Environment Path: SE_path1.csv
- Line Following Environment Path 1: LF_path1.csv
- Line Following Environment Path 2: LF_path2.csv
- Line Following Environment Path 3: LF_path3.csv
- Cluttered Environment Path 1: CE_path1.csv
- Cluttered Environment Path 2: CE_path2.csv
- Cluttered Environment Path 2: CE_path3.csv
- Randomly Generated Environment Path 1: RE_path1.csv
- Randomly Generated Environment Path 2: RE_path2.csv
- Randomly Generated Environment Path 3: RE_path3.csv

Please note the controllers used in these environments and throughout all experiments in the thesis is the combined system. When comparing fully explicit to fully implicit the combined system is fully weighted one way or another, w=0 makes the system fully explicit and w=1 makes the system fully implicit

Original Object:

- Simple Environment: OriginalObject_SE.ttt
- Line Following Environment Path 1: OriginalObject_LF1.ttt
- Line Following Environment Path 2: OriginalObject_LF2.ttt
- Line Following Environment Path 3: OriginalObject_LF3.ttt
- Cluttered Environment: OriginalObject_CE.ttt
- Randomly Generated Environment Path 1: OriginalObject_RE1.ttt
- Randomly Generated Environment Path 2: OriginalObject_RE2.ttt
- Randomly Generated Environment Path 3: OriginalObject_RE3.ttt

Medium Sized Object:

- Simple Environment: MediumObject_SE.ttt
- Line Following Environment Path 1: MediumObject_LF1.ttt
- Line Following Environment Path 2: MediumObject_LF2.ttt
- Line Following Environment Path 3: MediumObject_LF3.ttt
- Cluttered Environment: MediumObject_CE.ttt
- Randomly Generated Environment Path 1: MediumObject_RE1.ttt
- Randomly Generated Environment Path 2: MediumObject_RE2.ttt
- Randomly Generated Environment Path 3: MediumObject_RE3.ttt

Large Sized Object:

- Simple Environment: LargeObject_SE.ttt
- Line Following Environment Path 1: LargeObject_LF1.ttt
- Line Following Environment Path 2: LargeObject_LF2.ttt
- Line Following Environment Path 3: LargeObject_LF3.ttt
- Cluttered Environment: LargeObject_CE.ttt
- Randomly Generated Environment Path 1: LargeObject_RE1.ttt
- Randomly Generated Environment Path 2: LargeObject_RE2.ttt
- Randomly Generated Environment Path 3: LargeObject_RE3.ttt

Cuboid Object:

- Simple Environment: Cuboid_SE.ttt
- Line Following Environment Path 1: Cuboid_LF1.ttt
- Line Following Environment Path 2: Cuboid_LF2.ttt
- Line Following Environment Path 3: Cuboid_LF3.ttt
- Cluttered Environment: Cuboid_CE.ttt
- Randomly Generated Environment Path 1: Cuboid_RE1.ttt
- Randomly Generated Environment Path 2: Cuboid_RE2.ttt
- Randomly Generated Environment Path 3: Cuboid_RE3.ttt

Cylinder Object:

- Simple Environment: Cylinder_SE.ttt
- Line Following Environment Path 1: Cylinder_LF1.ttt
- Line Following Environment Path 2: Cylinder_LF2.ttt
- Line Following Environment Path 3: Cylinder_LF3.ttt
- Cluttered Environment: Cylinder_CE.ttt
- Randomly Generated Environment Path 1: Cylinder_RE1.ttt
- Randomly Generated Environment Path 2: Cylinder_RE2.ttt
- Randomly Generated Environment Path 3: Cylinder_RE3.ttt

Sphere Object:

- Simple Environment: Sphere_SE.ttt
- Line Following Environment Path 1: Sphere_LF1.ttt
- Line Following Environment Path 2: Sphere_LF2.ttt
- Line Following Environment Path 3: Sphere_LF3.ttt
- Cluttered Environment: Sphere_CE.ttt
- Randomly Generated Environment Path 1: Sphere_RE1.ttt
- Randomly Generated Environment Path 2: Sphere_RE2.ttt
- Randomly Generated Environment Path 3: Sphere_RE3.ttt

Fault Injection:

Note: only minimal changes to the controllers were made to inject vision sensor and partial motor faults, the following files are provided as reference as to how those minimal changes were made for different environment types

- Partial Motor Fault in a Leader wheel in a Line Following Environment: LeaderPartialMotorFault_LF1.ttt
- Partial Motor Fault in a Leader wheel in a Path Planning Environment: LeaderPartialMotorFault_RE3.ttt
- Partial Motor Fault in a Follower wheel (same for all environments): FollowerPartialMotorFault_SE.ttt
- Vision Sensor Fault: VisionSensorFault_LF1.tt

MATLAB Scripts for Data Processing:

- Time Taken: timetaken.m
- Path Fidelity EST: pathfidelity_EST.m
- Path Fidelity Line Following: pathfidelity_LF.m
- Total Distance: totaldistance.m
- Maximum Displacement: maxdisplacement.m 

Bash Script for Running Simulations Headlessly:

- ExperimentRunningScript.sh


