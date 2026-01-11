# P-PROGRAMS

This axis of the OPT-IN Framework covers **Program Procedures, Dimensions, Lifting, Parking, Placards, and Servicing** for the AMPEL360 Q100 aircraft.

## Overview

The P-PROGRAMS axis encompasses program-level documentation including:

- Dimensions and areas
- Lifting and shoring procedures
- Leveling and weighing (program scope)
- Towing and taxiing
- Parking, mooring, storage, and return to service
- Placards and markings
- Servicing procedures

## Structure

```
P-PROGRAMS/
├── README.md
├── 00_INDEX.md
│
├── ATA_06-DIMENSIONS_AND_AREAS/
│   └── ATA-06-dimensions-areas/
│       ├── 06-00-general/
│       ├── 06-10-reserved-as-required/
│       ├── 06-20-reserved-as-required/
│       ├── 06-30-reserved-as-required/
│       ├── 06-40-reserved-as-required/
│       ├── 06-50-reserved-as-required/
│       ├── 06-60-reserved-as-required/
│       ├── 06-70-reserved-as-required/
│       ├── 06-80-reserved-as-required/
│       └── 06-90-tables-schemas-index/
│
├── ATA_07-LIFTING_AND_SHORING/
│   └── ATA-07-lifting-shoring/
│       ├── 07-00-general/
│       ├── 07-10-jacking/
│       ├── 07-20-shoring/
│       ├── 07-30-reserved-as-required/
│       ├── 07-40-reserved-as-required/
│       ├── 07-50-reserved-as-required/
│       ├── 07-60-reserved-as-required/
│       ├── 07-70-reserved-as-required/
│       ├── 07-80-reserved-as-required/
│       └── 07-90-tables-schemas-index/
│
├── ATA_08-LEVELING_AND_WEIGHING/
│   └── ATA-08-leveling-weighing/
│       ├── 08-00-general/
│       ├── 08-10-weighing-balancing/
│       └── 08-20-leveling/
│
├── ATA_09-TOWING_AND_TAXIING/
│   └── ATA-09-towing-taxiing/
│       ├── 09-00-general/
│       ├── 09-10-towing/
│       ├── 09-20-taxiing/
│       ├── 09-30-reserved-as-required/
│       ├── 09-40-reserved-as-required/
│       ├── 09-50-reserved-as-required/
│       ├── 09-60-reserved-as-required/
│       ├── 09-70-reserved-as-required/
│       ├── 09-80-reserved-as-required/
│       └── 09-90-tables-schemas-index/
│
├── ATA_10-PARKING_MOORING_STORAGE_RETURN_TO_SERVICE/
│   └── ATA-10-parking-mooring-storage-rts/
│       ├── 10-00-general/
│       ├── 10-10-reserved-as-required/
│       ├── 10-20-reserved-as-required/
│       ├── 10-30-reserved-as-required/
│       ├── 10-40-reserved-as-required/
│       ├── 10-50-reserved-as-required/
│       ├── 10-60-reserved-as-required/
│       ├── 10-70-reserved-as-required/
│       ├── 10-80-reserved-as-required/
│       └── 10-90-tables-schemas-index/
│
├── ATA_11-PLACARDS_AND_MARKINGS/
│   └── ATA-11-placards-markings/
│       ├── 11-00-general/
│       ├── 11-10-exterior-color-schemes-markings/
│       ├── 11-20-exterior-placards-markings/
│       ├── 11-30-interior-placards/
│       ├── 11-40-reserved-as-required/
│       ├── 11-50-reserved-as-required/
│       ├── 11-60-reserved-as-required/
│       ├── 11-70-reserved-as-required/
│       ├── 11-80-reserved-as-required/
│       └── 11-90-tables-schemas-index/
│
└── ATA_12-SERVICING/
    └── ATA-12-servicing/
        ├── 12-00-general/
        ├── 12-10-replenishing/
        ├── 12-20-scheduled-servicing/
        ├── 12-30-unscheduled-servicing/
        ├── 12-40-reserved-as-required/
        ├── 12-50-reserved-as-required/
        ├── 12-60-reserved-as-required/
        ├── 12-70-reserved-as-required/
        ├── 12-80-reserved-as-required/
        └── 12-90-tables-schemas-index/
```

## ATA Chapters Covered

| Chapter | Description | Notes |
|---------|-------------|-------|
| ATA 06 | Dimensions and Areas | — |
| ATA 07 | Lifting and Shoring | — |
| ATA 08 | Leveling and Weighing | PROGRAM scope (no overlay with I-INFRASTRUCTURES) |
| ATA 09 | Towing and Taxiing | — |
| ATA 10 | Parking, Mooring, Storage, Return to Service | — |
| ATA 11 | Placards and Markings | — |
| ATA 12 | Servicing | — |

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
