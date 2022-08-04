#!/usr/bin/env bash

cd /workspace
colcon build --event-handlers=console_cohesion+ --packages-select gz-cmake3
colcon build --event-handlers=console_cohesion+ --packages-above gz-cmake3
