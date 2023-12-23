# Arena Rosnav 3D Guide
This repository is a fork of the original [Arena Rosnav 3D repository by IGNC Research](https://github.com/ignc-research/arena-rosnav-3D). It provides a more step-by-step and granular guide on setting up the Arena Rosnav testing and simulation suite. The suite can be used for tesing various classical and deep reinforcement learning based path planning approaches in environments with static and dynamic agents. At the moment training within the simulator and evaluation of algorithms is still under development, however, trained algorithms can be tested in customizable environments. 

## What you need to know before getting started as a beginner
RosArena is a testing suite for 
This is the setup in which Arena Rosnav 3D has been tested and where the most documentation seems to exist. 
Follow instructions on Follow instructions on [arena-rosnav-3D's installation page](https://github.com/ZainAU/arena-rosnav-3D-walkthrough/blob/main/docs/Installation.md). You need to have Ubuntu 20.04. You will install and need to develop familiarity with the following:
* **Linux**. Particularly Ubuntu. This isn't too difficult to get around if you learn to fail often enough. The tutorial for ROS linked below helps you get into linux as well if you're starting fresh.
* **ROS Noetic.** Noetic is the release that works with Ubuntu 20.04 Jammy, if you want to try this on a different version of linux, find the corresponding version of ROS. ROS is a set of software libraries and tools that help you build robot applications. From drivers to state-of-the-art algorithms, and with powerful developer tools. ROS is not easy to learn and you will need to spend a lot of time learning it. It is a good idea to start with the [ROS tutorials](https://www.youtube.com/playlist?list=PLlqdnFs9xNwql5KET7v7zyl393y10qxtw).
* **Gazebo and RViz.** Gazebo and RViz are visualization tools used in the Robot Operating System (ROS). Gazebo is a powerful 3D simulation environment for robots, offering robust physics and rendering, while RViz is a 3D visualizer for displaying sensor data and state information from ROS. They both are a means to visualize and interact with a robot's environment and data in ROS.
* **Catkin.** Catkin is just a build system for ROS. It is used to build ROS packages. Catkin is a CMake-based build system that is used to build ROS packages. It is the successor to the original ROS build system, rosbuild which you may encounter in some tutorials. Catkin is now the default build system in ROS so use that were you can. You may encounter quite a few errors with catkin like we did. A few notes on resolving them are below and on this [page](remindmetoinsertLink).
* **Python** in a virtual environment. 
* RosArena's tools. [Read the documentation here](https://github.com/Jacenty00/arena-tools).


## Errors you may encounter while installing Arena Rosnav
Below is a list of the undocumented errors you may encounter while installing Arena Rosnav. These can be daunting for a beginner, but don't worry; documentation, forums and others' having faced the same issues as you shall get you through. We recommend looking up your bugs on the issues page for Arena Rosnav, it's subrepositories (e.g. [pesdim_ros](https://github.com/srl-freiburg/pedsim_ros)) just or googling about your error. Here we have documented the errors we couldn't find solutions to on the RosArena repository.

