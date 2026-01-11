# ATA 00-00 — General

**ATA Address:** ATA-00-00-00-00  
**Section:** 00-00  
**Title:** General — Core Conventions and Definitions  
**Chapter:** [ATA 00 — General](../../)  
**Axis:** [O-ORGANIZATIONS](../../../)  

---

## 1. Overview

Section 00-00 contains the core conventions and definitions for the AMPEL360 Q100 program. This section establishes:

- Program glossary and terminology standards
- Document architecture and numbering conventions
- Safety labeling standards for all publications
- Cross-reference system for traceability
- Unit systems and conversion standards

---

## 2. Folder Structure

```
00-00-general/
├── README.md                    # This file
├── SSOT/
│   ├── LC01_PROBLEM_STATEMENT/  # Uncertainty orchestration
│   │   ├── README.md
│   │   ├── KNOTS.csv
│   │   ├── KNU_PLAN.csv
│   │   ├── TIMELINE.csv
│   │   ├── RACI.csv
│   │   ├── TOKENOMICS_TT.yaml
│   │   └── AWARDS_TT.csv
│   ├── LC02_SYSTEM_REQUIREMENTS/
│   ├── LC04_DESIGN_DEFINITION/
│   ├── LC05_ANALYSIS_MODELS/
│   └── LC08_CONFIGURATION/
└── PUB/
    └── AMM/
        ├── CSDB/
        │   ├── DM/              # Data Modules
        │   ├── PM/              # Publication Modules
        │   ├── DML/             # Data Module Lists
        │   ├── BREX/            # Business Rules
        │   ├── ICN/             # Graphics
        │   ├── COMMON/          # Shared content
        │   └── APPLICABILITY/   # ACT/PCT/CCT
        ├── EXPORT/              # Rendered outputs
        └── IETP/                # Interactive delivery
```

---

## 3. LC01 Summary

| Attribute | Value |
|-----------|-------|
| **KNOTs** | 5 |
| **Planned KNUs** | 24 |
| **TT Pool** | 400 TT |
| **Target Closure** | 2026-05-31 |
| **Status** | ACTIVE |

### KNOTs in This Section

| KNOT ID | Title | Target Residual |
|---------|-------|-----------------|
| KNOT-00-00-001 | Program Terminology Standardization | ≤10 |
| KNOT-00-00-002 | Document Architecture Conventions | ≤10 |
| KNOT-00-00-003 | Safety Labeling Standards | ≤10 |
| KNOT-00-00-004 | Cross-Reference System Design | ≤15 |
| KNOT-00-00-005 | Unit Systems and Conversions | ≤5 |

→ [LC01_PROBLEM_STATEMENT](./SSOT/LC01_PROBLEM_STATEMENT/)

---

## 4. Key Artifacts

### 4.1 SSOT Artifacts (Planned)

| LC | Artifact | Description |
|----|----------|-------------|
| LC02 | Program Glossary Requirements | REQ document defining terminology needs |
| LC02 | Document Numbering Requirements | REQ document for ID conventions |
| LC02 | Safety Labeling Requirements | REQ document for warning standards |
| LC04 | Terminology Database Schema | ICD for glossary data structure |
| LC04 | Reference Syntax Specification | ICD for cross-reference URIs |
| LC05 | Terminology Gap Analysis | ANA comparing vs standards |
| LC08 | Version Control Convention Guide | CM process document |

### 4.2 PUB Artifacts (Planned)

| Publication | DM Title | Description |
|-------------|----------|-------------|
| AMM | Program Glossary | Searchable terminology reference |
| AMM | Safety Labeling Standard | Warning/caution/note guide |
| AMM | Unit Conversion Reference | Conversion tables |
| TRN | Document Architecture Training | Navigation and conventions guide |
| TRN | Cross-Reference Guide | Traceability user manual |

---

## 5. Stakeholders

| AoR | Responsibility |
|-----|----------------|
| STK_CM | Section owner, terminology, document conventions |
| STK_SE | Technical accuracy, unit systems |
| STK_SAF | Safety labeling standards |
| STK_DATA | Cross-reference system, database schema |
| STK_CERT | Regulatory alignment |
| STK_PUB | Publication formatting, S1000D compliance |

---

## 6. Dependencies

### Upstream

- Program-level naming conventions
- S1000D BREX business rules
- Regulatory terminology requirements

### Downstream

- All 78 other ATA chapters reference 00-00 conventions
- All lifecycle categories use document architecture
- All publications apply safety labeling standards

---

## 7. Navigation

- ↑ [ATA 00 Chapter](../../)
- ↑ [O-ORGANIZATIONS Axis](../../../)
- → [LC01_PROBLEM_STATEMENT](./SSOT/LC01_PROBLEM_STATEMENT/)
- → [00-90 Tables/Schemas/Index](../00-90-tables-schemas-index/)

---

## 8. Revision History

| Date | Author | Change |
|------|--------|--------|
| 2026-01-11 | STK_CM | Initial section README |

---

*Section 00-00 establishes core conventions for the entire Q100 program.*
