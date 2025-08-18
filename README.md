# Social Role-Based Air Quality Monitor

## Overview

This project explores how AI agents can develop intelligent behavior through **social role adoption** rather than traditional programming approaches. Using air quality monitoring as a practical demonstration domain, we create a distributed system where autonomous agents take on workplace roles - Field Technicians, Data Analyst, and Operations Supervisor - and develop competencies through social interaction patterns.

Built with `pylua-bioxen-vm` for distributed Lua VM orchestration, this system demonstrates how agents with defined social roles can exhibit natural collaborative behaviors, error recovery, and adaptive learning that emerges from role-based identity rather than explicit programming.

## Conceptual Framework

### Social Roles as Intelligence Scaffolding

Rather than programming intelligence from scratch, this system bootstraps AI behavior through established social structures that humans intuitively understand:

- **Field Technicians** (Sensor Node VMs) develop domain expertise, maintain professional standards, and coordinate with peers
- **Data Analyst** (Gateway VM) synthesizes information, maintains quality standards, and provides analytical insights  
- **Operations Supervisor** (Python Control Center) manages resources, coordinates responses, and interfaces with stakeholders

Each role comes with natural affordances, responsibility boundaries, communication patterns, and performance expectations that shape intelligent behavior.

### Why Social Roles?

Social roles provide:
- **Built-in competencies** - Agents know what constitutes good performance in their domain
- **Communication protocols** - Natural patterns for reporting, escalation, and coordination
- **Learning scaffolding** - Agents develop expertise by observing role-appropriate behaviors
- **Error recovery** - Social structures provide natural fallback patterns for handling failures
- **Interpretable behavior** - Actions make sense within familiar workplace dynamics

## System Architecture

### Agent Roles and Responsibilities

| Role | Agent | Core Competencies | Social Behaviors |
|------|-------|------------------|------------------|
| **Field Technician** | Sensor Node VMs | Air quality measurement expertise<br>Data validation skills<br>Equipment monitoring | Professional pride in data quality<br>Peer collaboration for validation<br>Escalation awareness for anomalies |
| **Data Analyst** | Gateway VM | Statistical analysis<br>Pattern recognition<br>Quality assurance | Analytical objectivity<br>Synthesis across data sources<br>Clear communication to management |
| **Operations Supervisor** | Python Control Center | System management<br>Resource allocation<br>Stakeholder communication | Leadership responsibility<br>Team coordination<br>Decision authority |

### Communication as Social Interaction

Rather than simple data transfer, agents engage in workplace communication patterns:

- **Regular Reporting** - Field Technicians provide structured updates to the Data Analyst
- **Exception Escalation** - Anomalies trigger appropriate alert chains up the hierarchy  
- **Peer Coordination** - Technicians collaborate on cross-validation and calibration
- **Management Queries** - Supervisor requests status updates and performance summaries
- **Stakeholder Interface** - Supervisor translates technical information for human users

## Technical Implementation

### System Components
- **2 Field Technician VMs** (Lua processes) - Generate and validate air quality sensor data
- **1 Data Analyst VM** (Lua process) - Aggregate data and calculate analytical metrics
- **1 Operations Supervisor** (Python process) - Orchestrate system and provide user interface

### Role-Based Data Flow
1. **Field Technicians** generate realistic sensor readings (PM2.5, PM10, temperature, humidity) with professional-quality validation
2. **Data Analyst** receives reports, performs quality assurance, calculates derived metrics (AQI), and maintains system-wide statistics
3. **Operations Supervisor** monitors all agents, provides human interface, and coordinates system responses

### Communication Protocols
- Field Technicians → Data Analyst: Regular data reports via socket connections
- Data Analyst → Operations Supervisor: On-demand status and analytical summaries
- Operations Supervisor ↔ All Agents: Lifecycle management and coordination commands

## Research Questions

This system investigates:

- **Emergent Collaboration** - Do agents with social roles naturally develop better coordination than programmed interactions?
- **Adaptive Learning** - Can agents improve their role performance through social observation and feedback?
- **Error Recovery** - Do social structures provide more robust failure handling than technical error management?
- **Scalability** - How easily can new agents adopt existing roles or create new ones?
- **Interpretability** - Are socially-structured agent behaviors more understandable and debuggable?

## Quick Start

### Dependencies
```bash
pip install pylua-bioxen-vm questionary rich
# Lua 5.3+ with LuaSocket and lua-cjson
```

### Launch System
```bash
python control_center.py
```

The Operations Supervisor will initialize all Field Technician and Data Analyst agents, establish communication channels, and provide an interactive menu for system monitoring.

### Monitoring Agent Behavior

The interface provides insight into:
- **Role Performance** - How well each agent fulfills their role expectations
- **Social Coordination** - Communication patterns and collaborative behaviors
- **Adaptive Responses** - How agents handle exceptions and changing conditions
- **System Health** - Overall coordination and performance metrics

## Development Phases

### Phase 1: Social Role Foundation
- Establish basic role identities and competencies for each agent type
- Implement natural communication patterns between roles
- Create role-appropriate decision making and error handling

### Phase 2: Collaborative Behaviors
- Add peer coordination between Field Technicians
- Implement adaptive quality standards in Data Analyst role
- Create responsive management behaviors in Operations Supervisor

### Phase 3: Emergent Intelligence
- Observe and enhance naturally developing agent behaviors
- Add role-based learning and adaptation mechanisms
- Document emergent collaborative patterns and error recovery strategies

## Success Metrics

### Social Coordination Indicators
- **Role Clarity** - Agents operate within appropriate authority boundaries
- **Natural Communication** - Interactions follow recognizable workplace patterns
- **Collaborative Problem Solving** - Agents coordinate effectively on complex tasks
- **Adaptive Learning** - Role performance improves through social interaction

### Technical Performance Goals
- Stable concurrent operation of all agents
- Sub-second data latency from sensors to human interface
- Graceful handling of agent failures and network issues
- Intuitive human interaction through Operations Supervisor role

## Research Applications

This system serves as a platform for investigating:
- **Social Intelligence** - How social structures bootstrap intelligent behavior
- **Multi-Agent Coordination** - Natural patterns for distributed problem solving
- **Adaptive Systems** - Learning and improvement through role-based interaction
- **Human-AI Collaboration** - Intuitive interfaces based on familiar social roles

The air quality monitoring domain provides concrete, measurable tasks while the social role framework offers a pathway toward more natural and interpretable AI systems.

## Contributing

This project explores fundamental questions about intelligence, social interaction, and distributed systems. We welcome contributions that:
- Enhance role-based agent behaviors and competencies
- Add new social roles or communication patterns
- Improve adaptive learning and error recovery mechanisms
- Document emergent behaviors and collaboration patterns

## License

MIT License - This research platform is open for experimentation and extension.
