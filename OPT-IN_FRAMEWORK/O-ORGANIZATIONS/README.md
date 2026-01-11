# O-ORGANIZATIONS

This axis of the OPT-IN Framework covers **Organizational Policies, Maintenance Policy, and Operations Organization** for the AMPEL360 Q100 aircraft.

## Overview

The O-ORGANIZATIONS axis encompasses organizational-level documentation including:

- General organizational information
- Maintenance policy documentation
- Operations organization structure
- Support information management
- Airworthiness limitations
- Time limits and maintenance check schedules

## Structure

```
O-ORGANIZATIONS/
├── README.md
├── 00_INDEX.md
│
├── ATA_00-GENERAL/
│   └── ATA-00-general/
│       ├── 00-00-general/
│       ├── 00-10-reserved-as-required/
│       ├── 00-20-reserved-as-required/
│       ├── 00-30-reserved-as-required/
│       ├── 00-40-reserved-as-required/
│       ├── 00-50-reserved-as-required/
│       ├── 00-60-reserved-as-required/
│       ├── 00-70-reserved-as-required/
│       ├── 00-80-reserved-as-required/
│       └── 00-90-tables-schemas-index/
│
├── ATA_01-MAINTENANCE_POLICY/
│   └── ATA-01-maintenance-policy/
│       ├── 01-00-general/
│       ├── 01-10-reserved-as-required/
│       ├── 01-20-reserved-as-required/
│       ├── 01-30-reserved-as-required/
│       ├── 01-40-reserved-as-required/
│       ├── 01-50-reserved-as-required/
│       ├── 01-60-reserved-as-required/
│       ├── 01-70-reserved-as-required/
│       ├── 01-80-reserved-as-required/
│       └── 01-90-tables-schemas-index/
│
├── ATA_02-OPERATIONS_ORG/
│   └── ATA-02-operations-organization/
│       ├── 02-00-general/
│       ├── 02-10-reserved-as-required/
│       ├── 02-20-reserved-as-required/
│       ├── 02-30-reserved-as-required/
│       ├── 02-40-reserved-as-required/
│       ├── 02-50-reserved-as-required/
│       ├── 02-60-reserved-as-required/
│       ├── 02-70-reserved-as-required/
│       ├── 02-80-reserved-as-required/
│       └── 02-90-tables-schemas-index/
│
├── ATA_03-SUPPORT_INFORMATION/
│   └── ATA-03-support-information/
│       ├── 03-00-general/
│       ├── 03-10-reserved-as-required/
│       ├── 03-20-reserved-as-required/
│       ├── 03-30-reserved-as-required/
│       ├── 03-40-reserved-as-required/
│       ├── 03-50-reserved-as-required/
│       ├── 03-60-reserved-as-required/
│       ├── 03-70-reserved-as-required/
│       ├── 03-80-reserved-as-required/
│       └── 03-90-tables-schemas-index/
│
├── ATA_04-AIRWORTHINESS_LIMITATIONS/
│   └── ATA-04-airworthiness-limitations/
│       ├── 04-00-general/
│       ├── 04-10-reserved-as-required/
│       ├── 04-20-reserved-as-required/
│       ├── 04-30-reserved-as-required/
│       ├── 04-40-reserved-as-required/
│       ├── 04-50-reserved-as-required/
│       ├── 04-60-reserved-as-required/
│       ├── 04-70-reserved-as-required/
│       ├── 04-80-reserved-as-required/
│       └── 04-90-tables-schemas-index/
│
└── ATA_05-TIME_LIMITS_MAINT_CHECKS/
    └── ATA-05-time-limits-maintenance-checks/
        ├── 05-00-general/
        ├── 05-10-reserved-as-required/
        ├── 05-20-reserved-as-required/
        ├── 05-30-reserved-as-required/
        ├── 05-40-reserved-as-required/
        ├── 05-50-reserved-as-required/
        ├── 05-60-reserved-as-required/
        ├── 05-70-reserved-as-required/
        ├── 05-80-reserved-as-required/
        └── 05-90-tables-schemas-index/
```

## ATA Chapters Covered

| Chapter | Description |
|---------|-------------|
| ATA 00 | General |
| ATA 01 | Maintenance Policy |
| ATA 02 | Operations Organization |
| ATA 03 | Support Information |
| ATA 04 | Airworthiness Limitations |
| ATA 05 | Time Limits / Maintenance Checks |

## Sub-Subject Structure

Each sub-subject folder contains SSOT (Single Source of Truth) and PUB (Publications) subdirectories:

```
<sub-subject>/
├── SSOT/                              # Lifecycle Engineering Artifacts
│   ├── LC01_PROBLEM_STATEMENT/
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
        ├── CSDB/
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

## Related Documentation

- See the main [OPT-IN Framework](../README.md) documentation for overall structure
- Refer to [00_INDEX.md](./00_INDEX.md) for the complete index
- Refer to individual ATA chapter folders for detailed content
