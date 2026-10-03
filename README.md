# cospy-data

Simulation assets (maps, weather, vessel traffic, regulations and scenarios) for maritime ports worldwide.

[cospy](https://github.com/sreekants/cospy) is the Co-Simulation Operating System (COS). It is a Python engine that runs large numbers of scenario simulations to test autonomous vessels. This repository holds the engine's data, so it contains no code.

## Quick start

Clone both repositories side by side:

```bash
git clone git@github.com:sreekants/cospy.git
git clone git@github.com:sreekants/cospy-data.git
cd cospy && poetry install
poetry run ../cospy-data/sim.sh trondheim
```

Any folder under `config/simulation/<country>/` is a valid location.

Full documentation: [docs/overview.md](docs/overview.md).

Pictures of each location: [docs/gallery.md](docs/gallery.md).
