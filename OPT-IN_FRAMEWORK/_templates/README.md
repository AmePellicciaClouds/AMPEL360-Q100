# ATA Chapter Scaffold Templates

This directory contains reusable templates for scaling the GENESIS → SSOT → LLM ENGINE → CSDB → PUBS → EXPORT framework to new ATA Chapters.

## Overview

The templates implement the full end-to-end pipeline established in ATA-00-00:
- **GENESIS**: Uncertainty space (O-KNOT, Y-KNOT, KNOT)
- **SSOT**: Certainty space (LC01-LC14 lifecycle categories)
- **PUB**: Publication space (AMM/TRN with CSDB structure)

## Template Structure

```
_templates/
├── README.md                          # This file
├── GENESIS_TEMPLATE/                  # Discovery, justification, framing templates
│   ├── O-KNOT/
│   ├── Y-KNOT/
│   ├── KNOT/
│   └── _registry/
├── SSOT_TEMPLATE/                     # Lifecycle-bound artifacts
│   ├── LC01_PROBLEM_STATEMENT/
│   ├── LC02_SYSTEM_REQUIREMENTS/
│   ├── LC03_SAFETY_RELIABILITY/
│   ├── LC04_DESIGN_DEFINITION/
│   ├── LC05_ANALYSIS_MODELS/
│   ├── LC06_VERIFICATION/
│   └── ... (LC07-LC14)
├── PUB_TEMPLATE/                      # Publications structure
│   ├── AMM/
│   └── TRN/
└── scaffold_chapter.py                # Scaffolding automation script
```

## Usage

**Note:** For on-board systems (T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS), chapters are organized under domain-specific subdirectories:
- ATA 28 (Fuel): `C2-CIRCULAR_CRYOGENIC_CELLS/`
- ATA 71 (Power Plant): `P-PROPULSION/`
- ATA 95 (AI/ML): `I2-INTELLIGENCE/`

These chapters already exist in their proper locations. The scaffold script is primarily for creating new chapters in other axes or domains.

To create a new ATA chapter structure:

```bash
python scaffold_chapter.py --chapter XX --title "Chapter Title" --axis AXIS_NAME
```

Example for a new chapter:
```bash
python scaffold_chapter.py --chapter 85 --title "Fuel Cell Infrastructure" --axis I-INFRASTRUCTURES
```

This will:
1. Create the full folder structure for ATA-XX
2. Populate templates with chapter-specific values
3. Generate initial registry files
4. Create placeholder README files

## Customization

After scaffolding, customize the following per chapter:
1. Update discovery.yaml with chapter-specific knowledge gaps
2. Adjust TOKENOMICS.yaml based on chapter complexity
3. Configure effectivity rules in PUB templates
4. Define chapter-specific metadata in derivation schemas

## See Also

- [ATA Chapter Onboarding Guide](../../docs/ATA_CHAPTER_ONBOARDING.md)
- [ATA-00-00 Reference Implementation](../O-ORGANIZATIONS/ATA_00-GENERAL/ATA-00-general/00-00-general/README.md)
