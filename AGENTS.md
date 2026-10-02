# AGENTS.md — UiPathCLI RACE OpenClaw Project

## Project Purpose

This is a **Coding Agent project** for building and deploying UiPath Cloud automations via the UiPath CLI (`uip`) and Skills. The agent (OpenClaw) uses the installed `uipath-*` skills to know how to correctly use each CLI tool.

## Key Commands

```bash
# Authenticate
uip login

# Verify session
uip user

# Work with orchestrator
uip or folder list
uip or process list

# Build solutions
uip solution pack --project <path>
uip solution publish --package <nupkg>

# Run API workflows locally
uip api-workflow run <workflow>

# RPA project management
uip rpa init <name>
uip rpa pack
```

## Workflow

1. **Read the relevant skill** — before using any `uip` tool, read the matching skill SKILL.md for instructions
2. **Develop locally** — build automations under `automations/`
3. **Test** — run locally with `uip api-workflow` or `uip test`
4. **Package** — `uip solution pack`
5. **Publish** — `uip solution publish`
6. **Deploy** — create/trigger processes in Orchestrator

## Conventions

- All automation source lives under `automations/`
- Packed solutions go under `solutions/`
- Maestro definitions go under `orchestrations/`
- Helper scripts go under `scripts/`
- Never commit secrets — use `uip` auth and profiles

## Skills Reference

When working on a task, read the relevant skill first:
- RPA workflow → `uipath-rpa`
- Agent project → `uipath-agents`
- API workflow → `uipath-api-workflow`
- Solution deploy → `uipath-solution`
- Maestro → `uipath-maestro-bpmn` / `uipath-maestro-case` / `uipath-maestro-flow`
- Admin ops → `uipath-admin`
- Troubleshooting → `uipath-troubleshoot`
