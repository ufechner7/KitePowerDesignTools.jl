# KitePowerDesignTools

[![Build Status](https://github.com/ufechner7/KitePowerDesignTools.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ufechner7/KitePowerDesignTools.jl/actions/workflows/CI.yml?query=branch%3Amain)

## Tools

A tool to calculate the max torque and power that can be transmitted when using a carousel and two kites, 
flying in a circle.

**Input:**
- elevation (average elevation angle)
- tether length
- circle radius (of flight path)
- v_wind

**Output:**
- torque
- power
- tether_angle (with respect to the carousel arm)