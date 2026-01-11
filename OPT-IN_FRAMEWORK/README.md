# OPT-IN Framework

This directory contains the complete OPT-IN Framework (5-Axis Topology) for the AMPEL360 Q100 aircraft.

## Overview

The OPT-IN Framework organizes all ATA chapters across five axes for systematic management of engineering artifacts and publications:

| Axis | Description | ATA Scope |
|------|-------------|-----------|
| **O-ORGANIZATIONS** | Organizational policies, maintenance, operations | ATA 00–05 |
| **P-PROGRAMS** | Program procedures, dimensions, servicing | ATA 06–12 |
| **T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS** | On-board systems and technologies | ATA 20–98 |
| **I-INFRASTRUCTURES** | Ground support, H₂ logistics, facilities | Selected ATAs + IN-XX |
| **N-NEURAL_NETWORKS** | Governance, traceability, ledger | ATA 96–98 |

## Structure

```
OPT-IN_FRAMEWORK/
├── README.md
├── 00_INDEX.md
│
├── O-ORGANIZATIONS/                    # ATA 00–05
├── P-PROGRAMS/                         # ATA 06–12
├── T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/  # ATA 20–98
├── I-INFRASTRUCTURES/                  # Ground support
└── N-NEURAL_NETWORKS/                  # Governance + ledger
```

## SSOT + PUB Architecture

Each ATA section contains:

```
<section>/
├── SSOT/                              # Single Source of Truth
│   ├── LC01_PROBLEM_STATEMENT/        # Uncertainty orchestration
│   ├── LC02_SYSTEM_REQUIREMENTS/
│   ├── LC03_SAFETY_RELIABILITY/
│   ├── LC04_DESIGN_DEFINITION/
│   ├── LC05_ANALYSIS_MODELS/
│   ├── LC06_VERIFICATION/
│   ├── LC07_VALIDATION/
│   ├── LC08_CONFIGURATION/
│   ├── LC09_PRODUCTION/
│   ├── LC10_OPERATIONS/
│   ├── LC11_MAINTENANCE/
│   ├── LC12_CUSTOMER_CARE/
│   ├── LC13_TRAINING/
│   └── LC14_RETIREMENT_CIRCULARITY/
│
└── PUB/                               # Controlled Deliverables
    └── AMM/
        ├── CSDB/                      # S1000D Common Source Database
        │   ├── APPLICABILITY/
        │   ├── BREX/
        │   ├── COMMON/
        │   ├── DM/
        │   ├── DML/
        │   ├── ICN/
        │   └── PM/
        ├── EXPORT/
        └── IETP/
            ├── DEPLOY/
            ├── PKG/
            └── RUNTIME/
```

## LC01 Problem Statement Template

The LC01 folder contains uncertainty orchestration files:

| File | Purpose |
|------|---------|
| `KNOTS.csv` | Uncertainty register (known unknowns) |
| `KNU_PLAN.csv` | Expected Knowledge Units per KNOT |
| `TIMELINE.csv` | Milestones and dates |
| `RACI.csv` | Stakeholder responsibility matrix |
| `TOKENOMICS_TT.yaml` | Teknia Token reward allocation |
| `AWARDS_TT.csv` | Actual TT distributions at closure |

## Navigation

- [O-ORGANIZATIONS](./O-ORGANIZATIONS/README.md) — Organizational chapters (ATA 00–05)
- [P-PROGRAMS](./P-PROGRAMS/README.md) — Program chapters (ATA 06–12)
- [T-TECHNOLOGIES](./T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/README.md) — Technology chapters
- [I-INFRASTRUCTURES](./I-INFRASTRUCTURES/README.md) — Infrastructure chapters
- [N-NEURAL_NETWORKS](./N-NEURAL_NETWORKS/README.md) — Governance chapters
- [00_INDEX.md](./00_INDEX.md) — Complete index

## Related Documentation

- See the main [README.md](../README.md) for overall repository structure
- Refer to individual axis folders for detailed content
