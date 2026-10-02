# UiPathCLI RACE — OpenClaw Coding Agent Project

## Deploy Key

- Key: `~/.ssh/id_ed25519_race_openclaw` (ed25519)
- Added as deploy key to `Laurentcadieux/UiPathCLI_RACE_OPENCLAW` with write access

## SSH Config

Add to `~/.ssh/config`:

```
Host github-race-openclaw
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_race_openclaw
    IdentitiesOnly yes
```

## Push

```bash
cd /home/work10/.openclaw/workspace/UiPathCLI_RACE_OPENCLAW
git remote set-url origin git@github-race-openclaw:Laurentcadieux/UiPathCLI_RACE_OPENCLAW.git
git push -u origin main
```
