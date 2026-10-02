# UiPathCLI RACE — OpenClaw Coding Agent Project

A coding-agent-driven project for building, testing, and deploying UiPath Cloud automations using the **UiPath CLI** (`uip`) and **UiPath Skills**.

## What This Is

This repo is the workspace for an AI coding agent (OpenClaw) to:

- **Build** UiPath automations, agents, RPA workflows, and orchestrations
- **Test** them locally using `uip api-workflow` and `uip rpa`
- **Deploy** to UiPath Cloud via `uip solution` and `uip or`
- **Manage** cloud resources via `uip admin`, `uip or`, `uip is`

The UiPath Skills installed in the agent provide domain knowledge for each tool and capability — the agent reads skill instructions to know *how* to use the CLI correctly.

## Prerequisites

- **UiPath CLI** v1.202.1+ (`npm install -g @uipath/cli`)
- **UiPath Skills** (`uip skills install --agent codex`)
- **UiPath Cloud account** with authenticated CLI (`uip login`)
- **OpenClaw** runtime with the `uipath-*` skills available

## Project Structure

```
├── README.md              — This file
├── AGENTS.md              — Agent instructions for this project
├── config/                — CLI profiles, connection configs
│   └── cli-profile.json   — Default profile settings
├── automations/           — Automation projects
│   ├── workflows/         — API workflows and processes
│   ├── agents/            — UiPath agent projects
│   └── rpa/               — RPA workflow projects
├── solutions/             — Packed solution artifacts for deployment
├── orchestrations/        — Maestro BPMN/case/flow definitions
├── tests/                 — Test scripts and results
├── scripts/               — Helper scripts (deploy, pack, publish)
└── docs/                  — Project documentation and runbooks
```

## Quick Start

```bash
# Authenticate
uip login

# Verify connection
uip user

# List available folders
uip or folder list

# Build and deploy a solution
uip solution pack --project ./automations/workflows/my-workflow
uip solution publish --package ./solutions/my-workflow.1.0.0.nupkg
```

## Skills Available

The following UiPath Skills guide the coding agent:

| Skill | Purpose |
|-------|---------|
| `uipath-rpa` | Build and manage RPA workflows |
| `uipath-agents` | Build UiPath agent projects |
| `uipath-api-workflow` | Run API workflows locally |
| `uipath-solution` | Pack, publish, deploy solutions |
| `uipath-maestro-bpmn` | Maestro BPMN orchestrations |
| `uipath-maestro-case` | Maestro case management |
| `uipath-maestro-flow` | Maestro flow orchestrations |
| `uipath-platform` | General platform operations |
| `uipath-admin` | Admin: Identity, RCS, Audit, VPN |
| `uipath-governance` | Governance and policies |
| `uipath-insights` | Analytics and insights |
| `uipath-test` | Testing automations |
| `uipath-tasks` | Long-running tasks |
| `uipath-troubleshoot` | Debugging and troubleshooting |

Run `uip skills list` for the full catalog.

## Environment

| Item | Value |
|------|-------|
| CLI version | 1.202.1 |
| CLI binary | `uip` (or `node …/@uipath/cli/dist/index.js`) |
| Skills dir | `~/.agents/skills/` |
| Auth | `~/.uipath/.auth` |
| Config | `~/.uipath/config.json` |
