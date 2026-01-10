# ATA 05 - TIME LIMITS & MAINTENANCE CHECKS

**Time Limits and Maintenance Check Intervals**

## Description

ATA Chapter 05 establishes the scheduled maintenance program structure, inspection intervals, and time limits for the AMPEL360 Q100 aircraft. This chapter defines the maintenance planning document (MPD) framework and scheduled check requirements.

## Scope

This chapter includes:

- Scheduled maintenance check structure (A, B, C, D checks)
- Inspection intervals and thresholds
- Service interval definitions
- Calendar and flight hour/cycle limits
- Maintenance planning data
- Zone inspection programs
- Lubrication and servicing schedules
- Component overhaul intervals

## Sub-Subjects

### 05-00-general
General time limits and maintenance check structure.

**Location**: `ATA-05-time-limits-maintenance-checks/05-00-general/`

## Content Structure

```
05-00-general/
├── SSOT/                           # Engineering source of truth
│   ├── LC01_PROBLEM_STATEMENT/     # Maintenance interval requirements
│   ├── LC02_SYSTEM_REQUIREMENTS/   # Check structure requirements
│   ├── LC03_SAFETY_RELIABILITY/    # Reliability-centered maintenance
│   ├── LC04_DESIGN_DEFINITION/     # MPD design and structure
│   ├── LC05_ANALYSIS_MODELS/       # MSG-3 analysis and modeling
│   ├── LC06_VERIFICATION/          # Interval verification
│   ├── LC07_VALIDATION/            # Check program validation
│   ├── LC08_CONFIGURATION/         # MPD baseline and revisions
│   ├── LC09_PRODUCTION/            # Initial check requirements
│   ├── LC10_OPERATIONS/            # Operational impact analysis
│   ├── LC11_MAINTENANCE/           # Maintenance program sources
│   ├── LC12_CUSTOMER_CARE/         # Operator MPD support
│   ├── LC13_TRAINING/              # Maintenance planning training
│   └── LC14_RETIREMENT_CIRCULARITY/ # End-of-life maintenance
│
└── PUB/                            # Published deliverables
    └── AMM/                        # Aircraft Maintenance Manual
        ├── CSDB/                   # S1000D Common Source Database
        │   ├── DM/                 # Data Modules
        │   ├── PM/                 # Publication Modules
        │   ├── DML/                # Data Module Lists
        │   ├── BREX/               # Business Rules Exchange
        │   ├── ICN/                # Illustrations
        │   ├── COMMON/             # Reusable content
        │   └── APPLICABILITY/      # Filtering rules
        ├── EXPORT/                 # Rendered outputs (PDF/HTML)
        └── IETP/                   # Interactive Electronic Tech Pubs
            ├── RUNTIME/            # Viewer application
            ├── PKG/                # Package manifests
            └── DEPLOY/             # Deployment artifacts
```

## Key Topics

### Maintenance Check Structure
- **A-Check**: Line maintenance, typically 400-800 flight hours
- **B-Check**: Minor scheduled checks, typically 3-6 months
- **C-Check**: Heavy maintenance, typically 18-24 months
- **D-Check**: Major overhaul, typically 5-10 years

### Interval Types
- Flight hours (FH)
- Flight cycles (FC)
- Calendar days/months
- Combination thresholds (whichever occurs first)

### Maintenance Planning Document (MPD)
- Task identification and descriptions
- Interval specifications
- Skill level and manhour estimates
- Access and equipment requirements
- Reference to detailed procedures

### Zone Inspection Program
- General visual inspections (GVI)
- Detailed inspections (DET)
- Special detailed inspections (SDI)
- Zone groupings and intervals

## MSG-3 Analysis Integration

This chapter implements results from MSG-3 (Maintenance Steering Group) analysis:
- Structural Significant Items (SSI)
- Systems/Powerplant Significant Items
- Zonal analysis results
- Maintenance task selection logic

## Related Chapters

- **ATA 01**: Maintenance policy and philosophy
- **ATA 04**: Airworthiness limitations (mandatory items)
- **ATA 00**: General introduction
- **All ATA Chapters**: System-specific maintenance tasks

## Standards & Compliance

- **MSG-3**: Maintenance program development methodology
- **ATA Spec 2300**: MPD format and structure
- **EASA Part-M**: Continuing airworthiness management
- **FAA AC 120-16**: Maintenance programs
- **S1000D**: Technical publication format for maintenance data

---

**Part of**: [O-ORGANIZATIONS](../README.md) | [OPT-IN Framework](../../README.md)
