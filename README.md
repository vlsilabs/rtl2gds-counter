# 4-bit Counter: RTL to GDSII Flow

A full digital design flow example using Yosys, OpenLane, and KLayout. This project implements a 4-bit synchronous binary counter.

## 🔧 Prerequisites
- Linux (Ubuntu preferred)
- Docker
- Git

## 🚀 Setup
```bash
chmod +x scripts/setup_tools.sh
./scripts/setup_tools.sh
```

## ▶️ Run Full Flow
```bash
make all
```

## 📦 GDSII Output
Check under: `openlane/counter/runs/<run-id>/results/final/gds/counter.gds`
