Installing ROSnav-3D
Follow instructions on [arena-rosnav-3D's installation page](https://github.com/ZainAU/arena-rosnav-3D-walkthrough/blob/main/docs/Installation.md)
## Catkin Errors
## Catkin_make errors
### Using Pedsim
```
(mustafaros) sm06554@EE-HPC-02:~/pedsim_zain$ catkin_make
Base path: /home/sm06554/pedsim_zain
Source space: /home/sm06554/pedsim_zain/src
Build space: /home/sm06554/pedsim_zain/build
Devel space: /home/sm06554/pedsim_zain/devel
Install space: /home/sm06554/pedsim_zain/install
####
#### Running command: "cmake /home/sm06554/pedsim_zain/src -DCATKIN_DEVEL_PREFIX=/home/sm06554/pedsim_zain/devel -DCMAKE_INSTALL_PREFIX=/home/sm06554/pedsim_zain/install -G Unix Makefiles" in "/home/sm06554/pedsim_zain/build"
####
-- Using CATKIN_DEVEL_PREFIX: /home/sm06554/pedsim_zain/devel
-- Using CMAKE_PREFIX_PATH: /opt/ros/noetic
-- This workspace overlays: /opt/ros/noetic
-- Found PythonInterp: /usr/bin/python3 (found suitable version "3.8.10", minimum required is "3") 
-- Using PYTHON_EXECUTABLE: /usr/bin/python3
-- Using Debian Python package layout
-- Using empy: /usr/lib/python3/dist-packages/em.py
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR: /home/sm06554/pedsim_zain/build/test_results
-- Forcing gtest/gmock from source, though one was otherwise available.
-- Found gtest sources under '/usr/src/googletest': gtests will be built
-- Found gmock sources under '/usr/src/googletest': gmock will be built
-- Found PythonInterp: /usr/bin/python3 (found version "3.8.10") 
-- Using Python nosetests: /usr/bin/nosetests3
-- catkin 0.8.10
-- BUILD_SHARED_LIBS is on
-- BUILD_SHARED_LIBS is on
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~  traversing 14 packages in topological order:
-- ~~  - pedsim
-- ~~  - pedsim_msgs
-- ~~  - pedsim_gazebo_plugin
-- ~~  - pedsim_ros (metapackage)
-- ~~  - pedsim_srvs
-- ~~  - pedsim_utils
-- ~~  - pedsim_sensors
-- ~~  - pedsim_simulator
-- ~~  - pedsim_visualizer
-- ~~  - spencer_human_attribute_msgs
-- ~~  - spencer_social_relation_msgs
-- ~~  - spencer_tracking_msgs
-- ~~  - spencer_tracking_rviz_plugin
-- ~~  - spencer_vision_msgs
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- +++ processing catkin package: 'pedsim'
-- ==> add_subdirectory(pedsim_ros/3rdparty/libpedsim)
Debugging deactivated
-- Could NOT find roscpp (missing: roscpp_DIR)
-- Could not find the required component 'roscpp'. The following CMake error indicates that you either need to install the package with the same name or change your environment so that it can be found.
CMake Error at /opt/ros/noetic/share/catkin/cmake/catkinConfig.cmake:83 (find_package):
  Could not find a package configuration file provided by "roscpp" with any
  of the following names:

    roscppConfig.cmake
    roscpp-config.cmake

  Add the installation prefix of "roscpp" to CMAKE_PREFIX_PATH or set
  "roscpp_DIR" to a directory containing one of the above files.  If "roscpp"
  provides a separate development package or SDK, be sure it has been
  installed.
Call Stack (most recent call first):
  pedsim_ros/3rdparty/libpedsim/CMakeLists.txt:23 (find_package)


-- Configuring incomplete, errors occurred!
See also "/home/sm06554/pedsim_zain/build/CMakeFiles/CMakeOutput.log".
See also "/home/sm06554/pedsim_zain/build/CMakeFiles/CMakeError.log".
Invoking "cmake" failed

```

Error while trying to run catkin_make. Ok, this one is about roscpp. When I try using catkin build, it says catkin not found. When I try installing catkin, I get this error:
```
(base) sm06554@EE-HPC-02:~/pedsim_zain$ sudo apt-get install catkin
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 catkin : Depends: python3-catkin-pkg (>= 0.4.14-2) but it is not going to be installed
E: Unable to correct problems, you have held broken packages.

```

Next step from [here](https://answers.ros.org/question/413806/could-not-find-a-package-configuration-file-provided-by-roscpp/):
```sudo apt-get install ros-<distro>-roscpp

```

### next stage:
Now it says:
```
...

-- ==> add_subdirectory(pedsim_ros/3rdparty/libpedsim)
Debugging deactivated
-- +++ processing catkin package: 'pedsim_msgs'
-- ==> add_subdirectory(pedsim_ros/pedsim_msgs)
-- Using these message generators: gencpp;geneus;genlisp;gennodejs;genpy
-- Could NOT find geometry_msgs (missing: geometry_msgs_DIR)
-- Could not find the required component 'geometry_msgs'. The following CMake error indicates that you either need to install the package with the same name or change your environment so that it can be found.
CMake Error at /opt/ros/noetic/share/catkin/cmake/catkinConfig.cmake:83 (find_package):
  Could not find a package configuration file provided by "geometry_msgs"
  with any of the following names:

    geometry_msgsConfig.cmake
    geometry_msgs-config.cmake

  Add the installation prefix of "geometry_msgs" to CMAKE_PREFIX_PATH or set
  "geometry_msgs_DIR" to a directory containing one of the above files.  If
  "geometry_msgs" provides a separate development package or SDK, be sure it
  has been installed.
Call Stack (most recent call first):
  pedsim_ros/pedsim_msgs/CMakeLists.txt:12 (find_package)


-- Configuring incomplete, errors occurred!
See also "/home/sm06554/pedsim_zain/build/CMakeFiles/CMakeOutput.log".
See also "/home/sm06554/pedsim_zain/build/CMakeFiles/CMakeError.log".
Invoking "cmake" failed
(mustafaros) sm06554@EE-HPC-02:~/pedsim_zain$ 
```

then it says geometry_msgs are mising. These are the packages I have installed for this:
* ros-noetic-geometry-msgs
* ros-noetic-sensor-msgs
* ros-noetic-gazebo-ros
* ros-noetic-visualization-msgs
* ros-noetic-nav-msgs
* ros-noetic-rviz

ok and tht fixed it

This wsa the prefix path
echo $CMAKE_PREFIX_PATH
/opt/ros/noetic

## [it still not launching tho](https://github.com/srl-freiburg/pedsim_ros/issues/66 )

```(mustafaros) sm06554@EE-HPC-02:~/pedsim_zain/src/pedsim_ros/pedsim_simulator/launch$ roslaunch pedsim_simulator simple_pedestrians.launch
RLException: [simple_pedestrians.launch] is neither a launch file in package [pedsim_simulator] nor is [pedsim_simulator] a launch file name
The traceback for the exception was written to the log file
```


### Had issues empy version
Installed em and empy using pip. They were probably conflicting. Uninstalled em, catkin make and build still failed. installed empy=3.3.4 (which replaced empy 4.0) and catkin build worked!


### RQT didn't initialize properly at first either
