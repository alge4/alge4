# alge4

Cloud-ready workspace for logo and brand identity design.

## Logo design skill

This repo vendors the [logo-design](https://github.com/kaankiziltug/logo-design-skill) Agent Skill (MIT) at:

```text
.cursor/skills/logo-design/
```

Ask the agent for a logo, brand mark, wordmark, or favicon — or invoke `/logo-design`. The skill covers brief → concepts → SVG craft → testing → presentation kits, with a searchable library of 1,400+ reference logos and dependency-free Python tools.

## Cloud Agent

Install (idempotent):

```bash
./scripts/cloud-agent-install.sh
```

Requires Python 3.10+ and a working SVG→PNG renderer (Chrome is available on Cursor Cloud Agents).
