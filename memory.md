# Coding Agent Memory

This file tracks thought process, context, and project state for continuity across sessions.

## Project: UiPathCLI RACE OpenClaw Coding Agent

### Purpose

Coding agent workspace for building UiPath Cloud automations via the UiPath CLI (`uip`) and Skills. Uses OpenClaw runtime with installed UiPath skills.

### Current State

**Solution:**
- Name: `Solution.uipx` (id: `80647e4b-340d-4344-a4e1-ab513e9964cc`)
- Contains 1 project: **Maestro Case** (CaseManagement, id: `9debb16e-ee04-45b6-88e6-f40d855cb333`)
- Location: `/home/work10/.openclaw/workspace/UiPathCLI_RACE_OPENCLAW/Solution/`
- Case state: Blank starter — 1 manual trigger, 1 empty stage, no tasks/variables/SLAs

**Repo:**
- URL: https://github.com/Laurentcadieux/UiPathCLI_RACE_OPENCLAW
- Branch: `main`
- Latest commit: `1f73026` (pushed, contains typo files to be removed)
- Git remote: `git@github-race-openclaw:Laurentcadieux/UiPathCLI_RACE_OPENCLAW.git`

**UiPath CLI:**
- Version: `1.202.1` (updated from 1.198.0 on 2026-10-02)
- Skills installed: 27 skills in `~/.agents/skills/` (uipath-admin, uipath-agents, uipath-aops, uipath-api-workflow, uipath-automation-discovery, uipath-automationhub, uipath-coded-apps, uipath-connector-builder, uipath-feedback, uipath-functions, uipath-governance, uipath-human-in-the-loop, uipath-insights, uipath-ixp, uipath-maestro-bpmn, uipath-maestro-case, uipath-maestro-flow, uipath-mcp-servers, uipath-planner, uipath-platform, uipath-process-mining, uipath-review, uipath-rpa, uipath-solution, uipath-tasks, uipath-test, uipath-troubleshoot)
- Auth: `~/.uipath/.auth` (configured)
- SSH key: `~/.ssh/id_ed25518_race_openclaw` for GitHub deploy access

### What Was Done

- **2026-10-02 17:32** - Created repo scaffold with README.md, AGENTS.md, config/, scripts/, docs/
- **2026-10-02 17:35** - Created SSH deploy key for GitHub repo access
- **2026-10-02 17:52** - User asked to create "HermerFieldTech" Maestro Case Management solution
- **2026-10-02 18:05** - Pulled repo — found user had already created Solution with Maestro Case project in Studio Web
- **2026-10-02 19:33** - Created race-timeline.log for tracking steps with timestamps
- **2026-10-02 19:34** - Created FaceTime.md, Radetime.md, FaceTime.ms, RaceTime.md (marked as typos to remove)
- **2026-10-02 19:36** - Pushed commit 1f73026 with typo files
- **2026-10-02 19:38** - Staged removal of typo files

### What's Pending

1. **Remove typo files** — Commit and push the deletion of FaceTime.md, FaceTime.ms, RaceTime.md, Radetime.md
2. **HermerFieldTech case design** — Need to clarify requirements for the case:
   - What does it manage? (field service tickets, equipment inspections, work orders, customer complaints?)
   - Who are the actors? (field techs, dispatchers, customers, managers?)
   - What triggers a case? (manual, email, scheduled?)
   - What's the lifecycle? (stages, transitions)
   - Any SLAs or escalations?
   - Integrations? (email, Salesforce, SAP, custom APIs?)

3. **Rename or keep "Maestro Case"** — Project is currently named "Maestro Case" but user asked for "HermerFieldTech"

### Key Decisions

- Use **UiPath CLI** (`uip`) exclusively — no manual REST calls for solution/maestro operations
- Follow **skill-based workflow** — read relevant SKILL.md before using any `uip` command
- **Design handoff** when no SDD exists — invoke `uipath-planner` Case Design Lane before building
- **Brownfield vs greenfield** — since a solution/case exists, this is a brownfield edit (no handoff needed)

### Next Steps

1. Commit and push the removal of typo files
2. Await user clarification on HermerFieldTech requirements
3. Either rename the project to HermerFieldTech or build inside the existing "Maestro Case" project
4. Execute the appropriate maestro-case skill workflow

### Environment

- **Workspace:** `/home/work10/.openclaw/workspace/UiPathCLI_RACE_OPENCLAW/`
- **Solution path:** `/home/work10/.openclaw/workspace/UiPathCLI_RACE_OPENCLAW/Solution/`
- **Case project:** `/home/work10/.openclaw/workspace/UiPathCLI_RACE_OPENCLAW/Solution/Maestro Case/`
- **Log files:** `race-timeline.log`, `memory.md`
- **Skills location:** `~/.agents/skills/`
- **UiPath config:** `~/.uipath/config.json`

### Reference Skills

When working on this project, read these skills:

- `uipath-maestro-case` — For building/editing the case definition
- `uipath-solution` — For packing/publishing/deploying the solution
- `uipath-planner` — For designing a case when no SDD exists
- `uipath-platform` — For Orchestrator operations outside solution scope