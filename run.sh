#!/usr/bin/env bash

cd /workspace
colcon build --event-handlers=console_cohesion+ --packages-select gz-cmake3
colcon build --event-handlers=console_cohesion+ --packages-select ogre-2.1 
colcon build --event-handlers=console_cohesion+ --packages-select ogre-2.2 
colcon build --event-handlers=console_cohesion+ --packages-select ogre-2.3 
