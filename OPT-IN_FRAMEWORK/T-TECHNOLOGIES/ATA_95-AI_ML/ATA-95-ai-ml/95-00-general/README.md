# ATA 95-00 — AI/ML

**ATA Address:** ATA-95-00-00-00  
**Chapter:** ATA 95 — AI/ML  
**Axis:** [T-TECHNOLOGIES](../../)  
**Status:** SCAFFOLDED - Requires customization

---

## Overview

This chapter structure implements the full GENESIS → SSOT → LLM ENGINE → CSDB → PUBS → EXPORT pipeline for ATA 95 (AI/ML).

## Structure

```
95-00-general/
├── GENESIS/          # Uncertainty space (O-KNOT, Y-KNOT, KNOT)
├── SSOT/             # Certainty space (LC01-LC14)
└── PUB/              # Publications (AMM, TRN)
```

## Next Steps

1. Review and customize `GENESIS/O-KNOT/*/discovery.yaml`
2. Update `SSOT/LC01_PROBLEM_STATEMENT/TOKENOMICS.yaml`
3. Define chapter-specific KNUs in `KNU_PLAN.csv`
4. Configure CSDB data modules in `PUB/AMM/CSDB/DM/`
5. See [ATA Chapter Onboarding Guide](../../../../../docs/ATA_CHAPTER_ONBOARDING.md)

---

**Created:** 2026-01-16  
**Tool:** scaffold_chapter.py v1.0.0  
**Requires:** Customization per chapter domain
