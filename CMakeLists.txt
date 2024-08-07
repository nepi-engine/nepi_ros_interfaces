#[[
Copyright (c) 2024 Numurus, LLC <https://www.numurus.com>.

This file is part of nepi-engine
(see https://github.com/nepi-engine).

License: 3-clause BSD, see https://opensource.org/licenses/BSD-3-Clause
]]
cmake_minimum_required(VERSION 2.8.3)
project(nepi_ros_interfaces)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)
add_compile_options(-Wall)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS message_generation std_msgs sensor_msgs geometry_msgs nav_msgs)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

## Use the verbose version of make
#set(CMAKE_VERBOSE_MAKEFILE ON)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a run_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
add_message_files(
    FILES
    Annotation.msg
    Reset.msg
    SaveData.msg
    SaveDataStatus.msg
    SaveDataRate.msg
    DatafileCtrl3DX.msg
    RangeWindow.msg
    Angle3DX.msg
    AutoManualSelection3DX.msg
    BoundingBox.msg
    BoundingBox3D.msg
    BoundingBoxes.msg
    BoundingBoxes3D.msg
    Frame3DTransform.msg
    Frame3DTransformUpdate.msg
    IDXStatus.msg
    HwTrigInCfg.msg
    HwTrigOutCfg.msg
    TestPatternCfg.msg
    PeriodicSwTrig.msg
    NavPose.msg
    NavPoseResponse.msg
    StampedString.msg
    SystemStatus.msg
    SystemDefs.msg
    TriggerStatus.msg
    WarningFlags.msg
    NavPoseStatus.msg
    TimeStatus.msg
    TriggerIndexSettings.msg
    OotStatus.msg
    ClassifierSelection.msg
    Heading.msg
    NEPILinkStatus.msg
    ObjectCount.msg
    SettingUpdate.msg
    StringArray.msg
    StringEnable.msg
    Offset.msg
    RUISettings.msg
    SonarFieldOfView.msg
    TargetLocalization.msg
    TargetLocalizationScene.msg
    ImageMuxInput.msg
    ImageMuxSequence.msg
    ImageSize.msg
    ImageSelection.msg
    AutoStartEnabled.msg
    WifiCredentials.msg
    PanTiltPosition.msg
    PanTiltLimits.msg
    PanTiltStatus.msg
    PointcloudSelectionStatus.msg
    PointcloudProcessStatus.msg
    PointcloudRenderStatus.msg
    SingleAxisTimedMove.msg
    AbsolutePanTiltWaypoint.msg
    OnvifDeviceCfg.msg
    OnvifDeviceStatus.msg
    AxisControls.msg
    RBXErrorBounds.msg
    RBXGotoErrors.msg
    RBXGotoPose.msg
    RBXGotoPosition.msg
    RBXGotoLocation.msg
    RBXMotorControl.msg
    RBXInfo.msg
    RBXStatus.msg
    LSXStatus.msg
)

## Generate services in the 'srv' folder
add_service_files(
    FILES
    ConvertRawTstamp.srv
    FileReset.srv
    SystemDefsQuery.srv
    TriggerStatusQuery.srv
    TriggerDefs.srv
    NavPoseQuery.srv
    NavPoseStatusQuery.srv
    TimeStatusQuery.srv
    IPAddrQuery.srv
    WifiQuery.srv
    OpEnvironmentQuery.srv
    ImageClassifierListQuery.srv
    ImageClassifierStatusQuery.srv
    DataProductQuery.srv
    NEPILinkStatusQuery.srv
    BandwidthUsageQuery.srv
    SystemSoftwareStatusQuery.srv
    IDXCapabilitiesQuery.srv
    GetScriptsQuery.srv
    GetRunningScriptsQuery.srv
    GetScriptStatusQuery.srv
    LaunchScript.srv
    SetScriptEnabled.srv
    SettingsCapabilitiesQuery.srv
    StopScript.srv
    GetSystemStatsQuery.srv
    SystemStorageFolderQuery.srv
    ImageMuxSequenceQuery.srv
    PTXCapabilitiesQuery.srv
    OnvifDeviceListQuery.srv
    OnvifDeviceCfgUpdate.srv
    OnvifDeviceCfgDelete.srv
    OnvifDeviceDriverListQuery.srv
    RBXCapabilitiesQuery.srv
    NavPoseCapabilitiesQuery.srv
    LSXCapabilitiesQuery.srv
)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs  # Or other packages containing msgs
   sensor_msgs
   geometry_msgs
   nav_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a run_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
# ${catkin_INCLUDE_DIRS}
)

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide

## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(${PROJECT_NAME}_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation - Msgs and Services are under the project name subdir
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
