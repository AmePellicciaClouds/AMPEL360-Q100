# ATA 04 - AIRWORTHINESS LIMITATIONS

**Airworthiness Limitations and Requirements**

## Description

ATA Chapter 04 contains mandatory airworthiness limitations for the AMPEL360 Q100 aircraft. This chapter defines the critical inspections, replacements, and operational restrictions required to maintain the aircraft's type certificate and continued airworthiness.

## Scope

This chapter includes:

- Airworthiness Limitations Section (ALS) / Airworthiness Limitations Items (ALI)
- Life-limited parts and retirement times
- Safe life and fail-safe components
- Certification maintenance requirements (CMRs)
- Critical design configuration control limitations (CDCCLs)
- Mandatory modification requirements
- Structural inspection programs
- Fatigue and damage tolerance requirements

## Sub-Subjects

### 04-00-general
General airworthiness limitations applicable to the aircraft.

**Location**: `ATA-04-airworthiness-limitations/04-00-general/`

## Content Structure

```
04-00-general/
├── SSOT/                           # Engineering source of truth
│   ├── LC01_PROBLEM_STATEMENT/     # Airworthiness basis definition
│   ├── LC02_SYSTEM_REQUIREMENTS/   # Certification requirements
│   ├── LC03_SAFETY_RELIABILITY/    # Safety case and analysis
│   ├── LC04_DESIGN_DEFINITION/     # Limitation specifications
│   ├── LC05_ANALYSIS_MODELS/       # Fatigue, damage tolerance models
│   ├── LC06_VERIFICATION/          # Certification evidence
│   ├── LC07_VALIDATION/            # Test validation data
│   ├── LC08_CONFIGURATION/         # Type design configuration
│   ├── LC09_PRODUCTION/            # Manufacturing limitations
│   ├── LC10_OPERATIONS/            # Operational limitations
│   ├── LC11_MAINTENANCE/           # Mandatory maintenance items
│   ├── LC12_CUSTOMER_CARE/         # Operator compliance support
│   ├── LC13_TRAINING/              # Limitations awareness training
│   └── LC14_RETIREMENT_CIRCULARITY/ # Life-limit phase-out
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

- **Airworthiness Limitations Section (ALS)**
  - Mandatory inspections and intervals
  - Life-limited components
  - Safe life items
  - Fail-safe structures
  
- **Certification Maintenance Requirements (CMRs)**
  - Type certificate required maintenance
  - Critical maintenance tasks
  
- **Structural Limitations**
  - Damage tolerance inspections
  - Fatigue critical structure
  - Principal structural elements (PSE)
  
- **Systems Limitations**
  - System-specific mandatory requirements
  - Component life limits
  - Operational restrictions

## Regulatory Status

⚠️ **MANDATORY**: All items in ATA 04 are regulatory requirements. Non-compliance may result in loss of airworthiness certification.

## Related Chapters

- **ATA 01**: Maintenance policy framework
- **ATA 05**: Time limits and maintenance check intervals
- **ATA 00**: General limitations overview
- **Type Certificate Data Sheet (TCDS)**: Primary certification document

## Standards & Compliance

- **EASA CS-25**: Certification specifications for large aeroplanes
- **FAA Part 25**: Airworthiness standards
- **AC 25.571-1D**: Damage tolerance and fatigue evaluation
- **AC 120-16**: Maintenance programs and limitations
- **EASA AMC 25.1529**: Instructions for continued airworthiness

---

**Part of**: [O-ORGANIZATIONS](../README.md) | [OPT-IN Framework](../../README.md)
