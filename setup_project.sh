#!/bin/bash

# Air Quality Monitor MVP - Project Setup Script
# Creates initial project structure for pylua-bioxen-vm air quality monitoring system

set -e  # Exit on any error

PROJECT_NAME="aqi-monitor-mvp"
echo "Setting up Air Quality Monitor MVP project structure..."

# Create main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Create directory structure
echo "Creating directory structure..."
mkdir -p src/python
mkdir -p src/lua
mkdir -p docs
mkdir -p tests
mkdir -p config

# Create Python files
echo "Creating Python files..."

# Main control center
cat > src/python/control_center.py << 'EOF'
#!/usr/bin/env python3
"""
Air Quality Monitor Control Center
Main orchestrator for the AQI monitoring system using pylua-bioxen-vm
"""

from pylua_bioxen_vm import VMManager
import questionary
EOF

# VM orchestrator
cat > src/python/vm_orchestrator.py << 'EOF'
"""
VM Orchestrator - Manages lifecycle of Lua VMs
Handles sensor and gateway VM creation, monitoring, and cleanup
"""

import subprocess
import time
EOF

# Data interface
cat > src/python/data_interface.py << 'EOF'
"""
Data Interface - Handles data communication with Gateway VM
Queries and formats air quality data for display
"""

import json
import socket
EOF

# CLI interface
cat > src/python/cli_interface.py << 'EOF'
"""
CLI Interface - Interactive command-line interface using questionary
Provides menu system and real-time data display
"""

import questionary
from rich.console import Console
EOF

# Create Lua files
echo "Creating Lua files..."

# Sensor VM script
cat > src/lua/sensor_vm.lua << 'EOF'
-- Sensor VM - Air Quality Sensor Simulation
-- Generates mock sensor data and transmits to gateway
-- Usage: lua sensor_vm.lua <sensor_id> <gateway_host> <gateway_port>

local socket = require("socket")
local json = require("cjson")
EOF

# Gateway VM script
cat > src/lua/gateway_vm.lua << 'EOF'
-- Gateway VM - Data Aggregation and Processing
-- Receives data from multiple sensors and provides aggregated metrics
-- Usage: lua gateway_vm.lua <port>

local socket = require("socket")
local json = require("cjson")
EOF

# Utility functions for Lua
cat > src/lua/aqi_utils.lua << 'EOF'
-- AQI Utilities - Air Quality Index calculations and data processing
-- Common functions shared between sensor and gateway VMs

local M = {}

-- Calculate AQI from PM2.5 concentration
EOF

# Create configuration files
echo "Creating configuration files..."

# Main config
cat > config/config.json << 'EOF'
{
  "system": {
    "gateway_port": 8080,
    "sensor_count": 2,
    "data_update_interval": 3
  }
}
EOF

# Sensor config
cat > config/sensor_config.lua << 'EOF'
-- Sensor Configuration
-- Default settings for sensor VMs

return {
    update_interval = 3,
    data_variance = 0.1
}
EOF

# Create requirements and setup files
echo "Creating project files..."

# Python requirements
cat > requirements.txt << 'EOF'
pylua-bioxen-vm
questionary>=1.10.0
rich>=13.0.0
colorama>=0.4.6
EOF

# Main entry point
cat > main.py << 'EOF'
#!/usr/bin/env python3
"""
Air Quality Monitor MVP - Main Entry Point
Launches the interactive CLI interface for the AQI monitoring system
"""

from src.python.control_center import ControlCenter
EOF

# Create documentation files
echo "Creating documentation..."

# README
cat > README.md << 'EOF'
# Air Quality Monitor MVP

Software-defined air quality monitoring system using pylua-bioxen-vm.

## Quick Start

```bash
pip install -r requirements.txt
EOF

# Setup instructions
cat > docs/setup.md << 'EOF'
# Setup Instructions

## Prerequisites

- Python 3.7+
- Lua 5.3+
EOF

# API documentation
cat > docs/architecture.md << 'EOF'
# System Architecture

## Overview

The AQI Monitor MVP consists of:
EOF

# Create test files
echo "Creating test files..."

# Python tests
cat > tests/test_vm_orchestrator.py << 'EOF'
"""
Tests for VM Orchestrator functionality
"""

import unittest
from src.python.vm_orchestrator import VMOrchestrator
EOF

# Integration tests
cat > tests/test_integration.py << 'EOF'
"""
Integration tests for the complete AQI monitoring system
"""

import unittest
import time
EOF

# Create utility scripts
echo "Creating utility scripts..."

# Development helper
cat > dev_setup.sh << 'EOF'
#!/bin/bash
# Development environment setup

echo "Setting up development environment..."
python -m venv venv
EOF

# Demo script
cat > demo.py << 'EOF'
#!/usr/bin/env python3
"""
Demo script to showcase AQI Monitor MVP capabilities
"""

import time
from src.python.control_center import ControlCenter
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
venv/
EOF

# Make scripts executable
chmod +x main.py
chmod +x demo.py
chmod +x dev_setup.sh

# Create project structure summary
echo "Creating project structure summary..."
cat > PROJECT_STRUCTURE.md << 'EOF'
# Project Structure

```
aqi-monitor-mvp/
├── src/
│   ├── python/          # Python orchestration code
│   │   ├── control_center.py      # Main control center
│   │   ├── vm_orchestrator.py     # VM lifecycle management
│   │   ├── data_interface.py      # Data communication
│   │   └── cli_interface.py       # Interactive CLI
│   └── lua/             # Lua VM scripts
│       ├── sensor_vm.lua          # Sensor data generation
│       ├── gateway_vm.lua         # Data aggregation
│       └── aqi_utils.lua          # Shared utilities
├── config/              # Configuration files
├── docs/               # Documentation
├── tests/              # Test suite
├── main.py             # Entry point
└── demo.py             # Demo script
```
EOF

echo ""
echo "✅ Project structure created successfully!"
echo ""
echo "📁 Project location: $(pwd)"
echo ""
echo "🚀 Next steps:"
echo "   1. cd $PROJECT_NAME"
echo "   2. python -m venv venv && source venv/bin/activate"
echo "   3. pip install -r requirements.txt"
echo "   4. python main.py"
echo ""
echo "📖 See PROJECT_STRUCTURE.md for detailed layout"
echo "📋 See docs/setup.md for full setup instructions"
