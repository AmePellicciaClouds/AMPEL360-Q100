# ATA Chapter Scaling Framework

**Version:** 1.0.0  
**Status:** Production Ready  
**Last Updated:** 2026-01-16

---

## Overview

This framework enables systematic scaling of the **GENESIS → SSOT → LLM ENGINE METADATA LAYER → CSDB → PUBS → EXPORT** pipeline from ATA-00-00 to other ATA Chapters across all OPT-IN domains.

The framework enforces:
- ✅ Content standardization via GENESIS templates
- ✅ Metadata enrichment with confidence scoring
- ✅ CSDB-compliant S1000D outputs
- ✅ Source tracking with docId and span referencing
- ✅ HITL escalation for low-confidence inferences

---

## Quick Start

### 1. Scaffold a New Chapter

```bash
cd OPT-IN_FRAMEWORK/_templates
python scaffold_chapter.py --chapter XX --title "Chapter Title" --axis AXIS_NAME
```

**Example:**
```bash
python scaffold_chapter.py --chapter 28 --title "Fuel" --axis T-TECHNOLOGIES
```

### 2. Follow Onboarding Checklist

See [ATA Chapter Onboarding Guide](../../docs/ATA_CHAPTER_ONBOARDING.md) for step-by-step instructions.

### 3. Customize for Chapter Domain

- Update `GENESIS/O-KNOT/*/discovery.yaml` with chapter-specific knowledge gaps
- Configure `SSOT/LC01_PROBLEM_STATEMENT/TOKENOMICS.yaml` based on complexity
- Define effectivity rules in `PUB/AMM/CSDB/DM/` data modules
- Set HITL escalation thresholds per domain criticality

---

## Architecture

### End-to-End Pipeline

```
┌─────────────────────────────────────────────────────────────────┐
│                     GENESIS (Uncertainty Space)                 │
│  O-KNOT (Discovery) → Y-KNOT (Justification) → KNOT (Framing)  │
└──────────────────────────┬──────────────────────────────────────┘
                           │ _derivation.yaml
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                      SSOT (Certainty Space)                     │
│  LC01: Problem Statement (KNOTS, KNU_PLAN, TOKENOMICS, TBDs)   │
│  LC02-LC14: Lifecycle-bound artifacts with traceability         │
└──────────────────────────┬──────────────────────────────────────┘
                           │ LLM metadata enrichment
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│              LLM ENGINE METADATA LAYER                          │
│  • Confidence scoring (0.0-1.0)                                 │
│  • Source tracking (docId, span references)                     │
│  • HITL escalation (< 0.60 or safety-critical)                 │
│  • Entity extraction (parts, specs, procedures)                 │
└──────────────────────────┬──────────────────────────────────────┘
                           │ _downstream.yaml
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                    CSDB (S1000D Data Modules)                   │
│  • DM: Data Modules (XML/YAML)                                  │
│  • BREX: Business Rules Validation                              │
│  • Transforms: XSLT for format conversion                       │
│  • Applicability: Effectivity rules per variant                 │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Publication pipeline
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                    PUBS (Publications)                          │
│  • AMM: Aircraft Maintenance Manual                             │
│  • TRN: Training Materials                                      │
│  • IETP: Interactive Electronic Technical Publications         │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Multi-format export
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                       EXPORT                                    │
│  • PDF: Printable documentation                                 │
│  • HTML: Web-based viewing                                      │
│  • IETP: Interactive viewer format                              │
│  • JSON-LD: Structured data (DPP)                               │
└─────────────────────────────────────────────────────────────────┘
```

---

## Directory Structure

```
OPT-IN_FRAMEWORK/
├── _templates/                         # Reusable templates
│   ├── GENESIS_TEMPLATE/               # O-KNOT, Y-KNOT, KNOT
│   ├── SSOT_TEMPLATE/                  # LC01-LC14 with schemas
│   ├── PUB_TEMPLATE/                   # AMM/TRN CSDB structure
│   ├── scaffold_chapter.py             # Automation script
│   └── README.md                       # Template documentation
│
├── {AXIS}/                             # O, N, T, P, I axes
│   └── ATA_{XX}-{TITLE}/               # Chapter container
│       └── ATA-{XX}-{slug}/            # Chapter root
│           └── {XX}-{SS}-general/      # Section (00 = general)
│               ├── GENESIS/            # Uncertainty space
│               ├── SSOT/               # Certainty space
│               └── PUB/                # Publications
│
└── docs/                               # Framework documentation
    ├── ATA_CHAPTER_ONBOARDING.md       # Onboarding playbook
    ├── CSDB_COMPLIANCE_VALIDATION.md   # S1000D & BREX compliance
    └── ATA_CHAPTER_SCALING_FRAMEWORK.md  # This file
```

---

## Priority Chapters

The following chapters have existing structures in their proper subdomain locations:

| Chapter | Title | Correct Path | Status | Rationale |
|---------|-------|--------------|--------|-----------|
| **ATA 28** | Fuel | `T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/C2-CIRCULAR_CRYOGENIC_CELLS/` | ✅ Existing | LH₂ storage, critical H₂ terminology |
| **ATA 71** | Power Plant | `T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/P-PROPULSION/` | ✅ Existing | Fuel cell stacks, electric motors |
| **ATA 95** | AI/ML | `T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/I2-INTELLIGENCE/` | ✅ Existing | Novel Q100 extension, learning assurance |
| **ATA 96** | DPP | `N-NEURAL_NETWORKS/ATA_96-TRACEABILITY_DPP_LEDGER/` | ✅ Existing | Digital Product Passport integration |

### Additional Priority Chapters (Future)

| Priority | Chapter | Title | Axis | Rationale |
|----------|---------|-------|------|-----------|
| 5 | ATA 04 | AWLs | O-ORGANIZATIONS | Airworthiness limitations |
| 6 | ATA 12 | Servicing | P-PROGRAMS | H₂ servicing procedures |
| 7 | ATA 85 | Fuel Cell Infra | I-INFRASTRUCTURES | Ground infrastructure |

---

## Key Features

### 1. Template-Based Scaffolding

Automated creation of complete chapter structure with domain-specific defaults:

```bash
python scaffold_chapter.py --chapter 28
# Creates:
# - GENESIS layer (O-KNOT, Y-KNOT, KNOT)
# - SSOT layer (LC01-LC14 folders)
# - PUB layer (AMM/TRN CSDB structure)
# - All with ATA 28 (Fuel) specific configurations
```

### 2. Source Tracking & Traceability

Every extracted fact maintains bidirectional traceability:

```yaml
extracted_content: "Minimum fuel cell operating temperature is -40°C"
source_tracking:
  doc_id: "ATA-71-DESIGN-0012"
  span: "span:2345-2398"
  page: 14
  confidence: 0.89
derivation_lineage:
  parent_knot: "KNOT-71-00-001"
downstream_artifacts:
  - "DMC-AMPEL360-71-00-00-00A-001A-A"
```

### 3. HITL Escalation

Automated escalation for:
- Low confidence (< 0.60)
- Safety-critical content (any confidence)
- Part numbers or specifications (unless ≥ 0.90 AND verified)
- Novel terminology
- Conflicting information

**Decision Tree:**
```
Confidence ≥ 0.85 → Auto-accept (unless safety-critical)
Confidence 0.60-0.84 → Optional review (mandatory if safety/parts)
Confidence < 0.60 → Mandatory HITL review
```

### 4. CSDB Compliance

All outputs validate against:
- S1000D Issue 5.0 schema
- AMPEL360 Q100 BREX (DMC-AMPEL360-00-00-00-00A-022A-A)
- Chapter-specific business rules
- DMC uniqueness constraints

### 5. CI/CD Pipeline

Automated validation on every commit:
- XML schema validation
- BREX business rules check
- DMC uniqueness verification
- Traceability audit
- Confidence score reporting

---

## Configuration

### TOKENOMICS Configuration

Adjust token allocation based on chapter complexity:

```yaml
# Low complexity (e.g., ATA 00 - General)
aggregate_pool:
  total_tt: 400
  lambda_spillover: 0.40

# Medium complexity (e.g., ATA 28 - Fuel)
aggregate_pool:
  total_tt: 500
  lambda_spillover: 0.45

# High complexity (e.g., ATA 95 - AI/ML)
aggregate_pool:
  total_tt: 600
  lambda_spillover: 0.50
```

### Effectivity Rules

Configure applicability per chapter:

```yaml
# ATA 28 (Fuel) - Fuel type effectivity
effectivity:
  fuel_type:
    - configuration: "BASELINE"
      fuel: "LH2"
      serial_range: "Q100-001:Q100-999"
    - configuration: "HYBRID"
      fuel: "LH2+BATTERY"
      serial_range: "Q100-501:Q100-999"

# ATA 71 (Power Plant) - Propulsion type effectivity
effectivity:
  propulsion_type:
    - type: "FUEL_CELL_PRIMARY"
      serial_range: "Q100-001:Q100-500"
    - type: "FUEL_CELL_HYBRID"
      serial_range: "Q100-501:Q100-999"
```

### HITL Thresholds

Adjust per chapter criticality:

```yaml
# High criticality (ATA 28 - Fuel)
hitl_config:
  auto_accept_threshold: 0.90  # Higher bar
  mandatory_review_threshold: 0.70  # More cautious
  safety_critical: true  # Always HITL for safety items

# Medium criticality (ATA 00 - General)
hitl_config:
  auto_accept_threshold: 0.85
  mandatory_review_threshold: 0.60
  safety_critical: false
```

---

## Validation

### Pre-Deployment Checklist

Before considering a chapter complete:

- [ ] All GENESIS templates customized
- [ ] SSOT/LC01 TOKENOMICS configured
- [ ] KNU_PLAN.csv populated
- [ ] TBD_REGISTER.csv initialized
- [ ] CSDB data modules created
- [ ] BREX validation passing
- [ ] Traceability audit clean
- [ ] HITL escalation paths tested
- [ ] CI/CD pipeline green
- [ ] Documentation complete

### Validation Commands

```bash
# Validate YAML schemas
find . -name "*.yaml" -exec python scripts/validate_schema.py {} \;

# BREX validation
python scripts/brex_validator.py --chapter XX

# Traceability check
python scripts/check_traceability.py --chapter XX

# Confidence report
python scripts/confidence_report.py --chapter XX --threshold 0.85
```

---

## Best Practices

### 1. Never Invent Data

❌ **Wrong:** Generate part number when not in source  
✅ **Right:** Mark as `null` with low confidence, escalate to HITL

### 2. Maintain Traceability

❌ **Wrong:** Content without source tracking  
✅ **Right:** Every fact has docId + span reference

### 3. Use Consistent Naming

❌ **Wrong:** Mix of `ATA-28-10` and `ATA-2810`  
✅ **Right:** Enforce `ATA-{CC}-{SS}` format

### 4. Respect BREX

❌ **Wrong:** "BREX failed but looks OK"  
✅ **Right:** Fix all BREX violations before merge

### 5. Document HITL Decisions

❌ **Wrong:** Silent overrides  
✅ **Right:** Document all HITL reviews with rationale

---

## Troubleshooting

### Issue: Scaffold Script Fails

**Symptom:** `ImportError` or `FileNotFoundError`

**Solution:**
```bash
# Ensure you're in correct directory
cd OPT-IN_FRAMEWORK/_templates

# Check Python version (3.8+ required)
python --version

# Verify templates exist
ls -la GENESIS_TEMPLATE/
```

### Issue: BREX Validation Fails

**Symptom:** CI pipeline shows BREX violations

**Solution:**
1. Check error message for specific rule
2. Consult [CSDB Compliance Guide](../../docs/CSDB_COMPLIANCE_VALIDATION.md)
3. Fix violation in data module
4. Re-run validation locally before pushing

### Issue: Duplicate DMC

**Symptom:** `ERROR: Duplicate DMC codes found`

**Solution:**
```bash
# Find duplicates
find . -name "DMC-*.XML" | xargs basename -a | sort | uniq -d

# Rename conflicting DM with new disassembly code
# OLD: DMC-AMPEL360-28-00-00-00A-001A-A
# NEW: DMC-AMPEL360-28-00-00-00A-002A-A
```

---

## Support & Resources

### Documentation

- [ATA Chapter Onboarding Guide](../../docs/ATA_CHAPTER_ONBOARDING.md) - Step-by-step onboarding
- [CSDB Compliance & Validation](../../docs/CSDB_COMPLIANCE_VALIDATION.md) - S1000D & BREX
- [ATA-00-00 Reference](../O-ORGANIZATIONS/ATA_00-GENERAL/ATA-00-general/00-00-general/README.md) - Implementation example

### Tools

- `scaffold_chapter.py` - Chapter scaffolding automation
- `brex_validator.py` - BREX business rules validation
- `validate_traceability.py` - Traceability audit
- `confidence_report.py` - Confidence scoring analysis

### CI/CD

- `.github/workflows/csdb-validation.yml` - Automated validation pipeline
- `.git/hooks/pre-commit` - Pre-commit validation hook

---

## Revision History

| Date | Version | Author | Change |
|------|---------|--------|--------|
| 2026-01-16 | 1.0.0 | STK_CM | Initial framework release with 4 priority chapters |

---

## License

This framework is part of the AMPEL360 Q100 program and follows the project's licensing terms.

---

**Questions or Issues?**

Contact: STK_CM (Configuration Management Team)  
Repository: [AMPEL360-Q100](https://github.com/AmedeoPelliccia/AMPEL360-Q100)
