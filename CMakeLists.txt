cmake_minimum_required(VERSION 3.5)
project(num_sdk_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

###############################################################################
# Add all files in subdirectories of the project in
# a dummy_target so qtcreator have access to all files
FILE(GLOB_RECURSE extra_files ${CMAKE_SOURCE_DIR}/*)
add_custom_target(all_${PROJECT_NAME}_files SOURCES ${extra_files})
###############################################################################

set(MSG_FILES
  "msg/Range3DX.msg"
  "msg/HwTrigInCfg.msg"
  "msg/Offset.msg"
  "msg/HwTrigOutCfg.msg"
  "msg/NavPos.msg"
  "msg/SystemStatus.msg"
  "msg/NavPosStatus.msg"
  "msg/TriggerStatus.msg"
  "msg/PeriodicSwTrig.msg"
  "msg/StampedString.msg"
  "msg/TriggerIndexSettings.msg"
  "msg/StringArray.msg"
  "msg/AutoManualSelection3DX.msg"
  "msg/Heading.msg"
  "msg/RUISettings.msg"
  "msg/SaveDataStatus.msg"
  "msg/Angle3DX.msg"
  "msg/Reset.msg"
  "msg/WarningFlags.msg"
  "msg/NEPIStatus.msg"
  "msg/SonarFieldOfView.msg"
  "msg/Annotation.msg"
  "msg/TestPatternCfg.msg"
  "msg/SaveData.msg"
  "msg/OotStatus.msg"
  "msg/ClassifierSelection.msg"
  "msg/SystemDefs.msg"
  "msg/Status3DX.msg"
  "msg/DatafileCtrl3DX.msg"
  "msg/TimeStatus.msg"
  "msg/SaveDataRate.msg"
)

set(SRV_FILES
  "srv/BandwidthUsageQuery.srv"
  "srv/NavPosQuery.srv"
  "srv/TriggerStatusQuery.srv"
  "srv/FileReset.srv"
  "srv/TriggerDefs.srv"
  "srv/DataProductQuery.srv"
  "srv/ImageClassifierListQuery.srv"
  "srv/NEPIStatusQuery.srv"
  "srv/IPAddrQuery.srv"
  "srv/ConvertRawTstamp.srv"
  "srv/ImageClassifierStatusQuery.srv"
  "srv/TimeStatusQuery.srv"
  "srv/NavPosStatusQuery.srv"
  "srv/OpEnvironmentQuery.srv"
  "srv/SystemDefsQuery.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
    ${MSG_FILES}
    ${SRV_FILES}
    DEPENDENCIES builtin_interfaces std_msgs geometry_msgs sensor_msgs
)

# Install URDF files
install(DIRECTORY
  urdf
  DESTINATION share/${PROJECT_NAME}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
