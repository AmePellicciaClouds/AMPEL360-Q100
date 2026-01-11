# LC01_PROBLEM_STATEMENT — ATA 00-00 General

**ATA Reference:** 00-00  
**ATA Address:** ATA-00-00-00-00  
**Title:** General — Program Baseline and Conventions  
**OPT-IN Axis:** O (Organizations)  
**Version:** v0.2  
**Status:** BASELINED  
**Last Updated:** 2026-01-12  

---

## 1. Overview

This LC01 node defines the **uncertainty register and resolution plan** for ATA 00-00 (General), which establishes the foundational conventions, terminology, and organizational structures for the AMPEL360 Q100 BWB hydrogen-hybrid electric aircraft program.

### 1.1 Purpose

ATA Chapter 00 provides program-wide definitions that all other chapters reference. For a novel aircraft configuration like the Q100, this chapter must address:

- **Novel terminology** — BWB geometry, H₂ propulsion, neural systems
- **Document architecture** — OPT-IN framework navigation, S1000D/ATA hybrid approach
- **Safety conventions** — H₂-specific warnings, cryogenic hazard labeling
- **Cross-reference systems** — Traceability across 79 ATA chapters
- **Unit standards** — SI primary with imperial equivalents for certification

> **LC01 Scope Boundary:** LC01 explicitly captures uncertainties, assumptions, and framing constraints. It does not prescribe solutions, architectures, or implementations, which are deferred to LC02 (requirements), LC04 (design), and beyond. This separation ensures that problem definition remains independent of solution bias.

### 1.2 Scope

| In-Scope | Out-of-Scope |
|----------|--------------|
| Program-wide terminology and definitions | System-specific definitions (covered in respective ATA chapters) |
| Document numbering and organization conventions | Content of individual technical publications |
| Safety warning/caution/note standards | Specific hazard analyses (ATA 26, LC03) |
| Abbreviation and acronym registry | Domain-specific acronyms (defined locally) |
| Unit systems and conversion standards | Detailed engineering calculations |
| OPT-IN framework navigation guide | Framework development methodology |
| Lifecycle category (LC) definitions | LC process procedures |

### 1.3 Q100 Program Context

The AMPEL360 Q100 introduces terminology and concepts not found in conventional aircraft programs:

| Domain | Novel Concepts |
|--------|----------------|
| **Configuration** | Blended Wing Body (BWB), center-body cabin, integrated lifting surfaces |
| **Propulsion** | PEM fuel cells, LH₂ cryogenic storage, distributed electric propulsion |
| **Energy** | H₂ energy density, boil-off management, ortho-para conversion |
| **Intelligence** | Neural envelope protection, learning assurance, runtime monitoring |
| **Circularity** | Digital Product Passport (DPP), lifecycle traceability, ANCHORS |
| **Tokenomics** | Teknia Tokens (TT), KNOT/KNU methodology, incentive alignment |

---

## 2. KNOT Register Summary

> **Uncertainty Scale:** Residual and Target values are expressed on a normalized 0–100 uncertainty scale, where 100 represents undefined or unconstrained uncertainty and 0 represents fully resolved and validated knowledge. This scale enables cross-KNOT comparison, ML training, and objective TT allocation.

| KNOT ID | Title | Residual | Target | Status |
|---------|-------|----------|--------|--------|
| [KNOT-00-00-001](#knot-00-00-001) | Program Terminology Standardization | 100 | ≤10 | OPEN |
| [KNOT-00-00-002](#knot-00-00-002) | Document Architecture Conventions | 100 | ≤10 | OPEN |
| [KNOT-00-00-003](#knot-00-00-003) | Safety Labeling Standards | 100 | ≤10 | OPEN |
| [KNOT-00-00-004](#knot-00-00-004) | Cross-Reference System Design | 100 | ≤15 | OPEN |
| [KNOT-00-00-005](#knot-00-00-005) | Unit Systems and Conversions | 100 | ≤5 | OPEN |

**Total KNOTs:** 5  
**Total Planned KNUs:** 24  
**Aggregate TT Pool:** 400 TT  

---

## 3. Definitions

| Term | Definition |
|------|------------|
| **ATA** | Air Transport Association (now A4A); refers to iSpec 2200 chapter structure |
| **BWB** | Blended Wing Body — aircraft configuration with merged fuselage and wing |
| **CSDB** | Common Source Database — S1000D publication repository |
| **DPP** | Digital Product Passport — lifecycle traceability framework |
| **KNOT** | Known Unknown — identified uncertainty requiring resolution |
| **KNU** | Knowledge Unit — artifact that addresses a KNOT |
| **LC** | Lifecycle Category — engineering phase (LC01–LC14) |
| **OPT-IN** | Organization–Program–Technology–Infrastructure–Neural Networks framework |
| **PUB** | Publications — deliverable documentation surface |
| **S1000D** | International specification for technical publications |
| **SSOT** | Single Source of Truth — authoritative engineering baseline |
| **TT** | Teknia Token — incentive unit (1 TT = 360 deg) |

---

## 4. KNOT Descriptions

### KNOT-00-00-001

**Title:** Program Terminology Standardization  
**Problem Statement:** The Q100 program introduces novel concepts (BWB geometry, H₂ systems, neural networks) that lack standardized aerospace definitions. Inconsistent terminology across teams creates ambiguity in requirements, specifications, and publications.

**Scope:**
- In: Core program terms, H₂/BWB-specific vocabulary, OPT-IN framework terms
- Out: Domain-specific terms defined in respective ATA chapters

**Owner:** STK_CM  
**Stakeholders:** STK_SE, STK_CERT, STK_PUB, STK_AI  
**Planned KNUs:** 5  

---

### KNOT-00-00-002

**Title:** Document Architecture Conventions  
**Problem Statement:** The Q100 documentation spans S1000D CSDB publications and ATA iSpec 2200-derived structures within the OPT-IN framework. Conventions for document numbering, versioning, and cross-referencing must be established to ensure navigability and configuration control.

**Scope:**
- In: Document ID syntax, version control conventions, folder structure rules
- Out: Specific document content, S1000D schema definitions

**Owner:** STK_CM  
**Stakeholders:** STK_SE, STK_PUB, STK_DATA  
**Planned KNUs:** 5  

---

### KNOT-00-00-003

**Title:** Safety Labeling Standards  
**Problem Statement:** H₂ propulsion introduces hazards (cryogenic burns, asphyxiation, flammability) not covered by conventional aircraft warning standards. Safety labeling conventions must be established for all documentation and physical placards.

**Scope:**
- In: Warning/caution/note formatting, H₂-specific hazard symbols, color conventions
- Out: Specific hazard content (defined per system in LC03)

**Owner:** STK_SAF  
**Stakeholders:** STK_SE, STK_CERT, STK_PUB, STK_OPS  
**Planned KNUs:** 5  

---

### KNOT-00-00-004

**Title:** Cross-Reference System Design  
**Problem Statement:** The OPT-IN framework spans 5 axes, 79 ATA chapters, and 14 lifecycle categories. A systematic cross-reference architecture is needed to enable traceability from requirements through certification evidence. The cross-reference system shall remain human-readable and navigable without tooling, with automation acting as an accelerator rather than a prerequisite.

**Scope:**
- In: Reference syntax, hyperlink conventions, trace matrix structure
- Out: Automated tooling implementation (separate development effort)

**Owner:** STK_DATA  
**Stakeholders:** STK_SE, STK_CM, STK_CERT  
**Planned KNUs:** 5  

---

### KNOT-00-00-005

**Title:** Unit Systems and Conversions  
**Problem Statement:** International operations require SI units; FAA certification historically uses imperial. Q100 introduces H₂-specific units (energy density, flow rates) requiring standardized presentation and conversion factors.

**Scope:**
- In: Primary/secondary unit convention, conversion tables, display precision
- Out: Unit implementation in analysis tools

**Owner:** STK_SE  
**Stakeholders:** STK_CERT, STK_OPS, STK_PUB  
**Planned KNUs:** 4  

---

## 5. Regulatory and Standards Context

| Reference | Application |
|-----------|-------------|
| ATA iSpec 2200 | Chapter/section/subject structure basis |
| S1000D Issue 5.0 | CSDB publication standard |
| ISO 80000 | Quantities and units |
| ISO 7010 | Safety signs and symbols |
| SAE ARP4761 | Safety assessment terminology |
| EASA CS-25 | Certification requirements terminology |

---

## 6. Closure Criteria

### 6.1 Per-KNOT Closure

A KNOT is **CLOSED** when:

1. ✅ All planned KNUs reach `ACCEPTED` status
2. ✅ Residual uncertainty ≤ target threshold
3. ✅ All PUB artifacts pass BREX validation
4. ✅ All trace links resolve without dangling references
5. ✅ Signoff captured from Owner and key stakeholders
6. ✅ TT rewards distributed per `TOKENOMICS_TT.yaml`

### 6.2 Node-Level Closure

ATA 00-00 LC01 node is **CLOSED** when:

- All 5 KNOTs closed
- Program glossary published and accepted
- Document conventions guide issued
- Safety labeling standard approved by STK_SAF
- Cross-reference architecture operational
- Unit conversion tables verified

---

## 7. Key Stakeholders

| AoR Code | Role | Primary Responsibility |
|----------|------|------------------------|
| STK_CM | Configuration Management | Terminology, document conventions |
| STK_SE | Systems Engineering | Technical accuracy, unit systems |
| STK_SAF | Safety | Safety labeling standards |
| STK_DATA | Data Architecture | Cross-reference system |
| STK_CERT | Certification | Regulatory alignment |
| STK_PUB | Publications | Document formatting, S1000D compliance |
| STK_OPS | Operations | Operational terminology |
| STK_AI | AI/ML Engineering | Neural systems terminology |

---

## 8. Dependencies

### 8.1 Upstream Dependencies

| Source | Dependency |
|--------|------------|
| Program Management | Q100 program identity, naming conventions |
| S1000D Business Rules | BREX constraints on terminology |
| Regulatory Authorities | Required terminology per CS-25/Part 25 |

### 8.2 Downstream Dependencies

| Target | Dependency |
|--------|------------|
| All ATA Chapters | Rely on ATA 00 terminology and conventions |
| All LC Categories | Reference document architecture |
| All PUB Deliverables | Apply safety labeling standards |
| Certification Evidence | Use cross-reference system |

---

## 9. Tokenomics Summary

| Parameter | Value |
|-----------|-------|
| **Total Pool** | 400 TT |
| **Pool per KNOT** | 80 TT |
| **Effort Weight (α)** | 0.35 |
| **Impact Weight (1-α)** | 0.65 |
| **Spillover Multiplier (λ)** | 0.40 |

**Rationale:** Foundational chapter with high impact on all downstream work. Moderate spillover due to broad applicability but limited technical depth per KNOT.

> **Token Nature:** Teknia Tokens (TT) are non-monetary units of contribution recognition and governance signaling. They do not represent financial compensation. TT allocation reflects engineering effort and uncertainty reduction, enabling objective prioritization and transparent contributor acknowledgment.

---

## 10. File Inventory

### 10.1 Core LC01 Files

> **Legend:** **(M)** = Mandatory for closure | **(O)** = Optional / supporting

| File | Req | Description |
|------|-----|-------------|
| [README.md](./README.md) | **(M)** | This document — overview and context |
| [KNOTS.csv](./KNOTS.csv) | **(M)** | Uncertainty register |
| [KNU_PLAN.csv](./KNU_PLAN.csv) | **(M)** | Planned artifacts per KNOT |
| [TIMELINE.csv](./TIMELINE.csv) | **(M)** | Milestone schedule |
| [RACI.csv](./RACI.csv) | **(M)** | Stakeholder responsibility matrix |
| [TOKENOMICS_TT.yaml](./TOKENOMICS_TT.yaml) | **(M)** | Reward pool configuration |
| [AWARDS_TT.csv](./AWARDS_TT.csv) | **(M)** | Distribution ledger (populated at closure) |

### 10.2 Supporting Files (Optional)

| File | Req | Description |
|------|-----|-------------|
| ASSUMPTIONS.md | **(O)** | Explicit assumptions log |
| CONSTRAINTS.md | **(O)** | External constraints register |
| RISKS.md | **(O)** | Risk register linked to KNOTs |
| DECISIONS.md | **(O)** | Decision log with rationale |

---

## 11. REC Mapping

| KNU Type | Target REC | Lifecycle Category |
|----------|------------|-------------------|
| REQ | LC02 | LC02_SYSTEM_REQUIREMENTS |
| ICD | LC04 | LC04_DESIGN_DEFINITION |
| ANA | LC05 | LC05_ANALYSIS_MODELS |
| CM | LC08 | LC08_CONFIGURATION |
| PUB-AMM | CSDB | PUB/AMM/CSDB |
| PUB-TRN | LC13 | LC13_TRAINING |

---

## 12. Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| v0.1 | 2026-01-11 | STK_CM | Initial LC01 scaffold for ATA 00-00 |
| v0.2 | 2026-01-12 | STK_CM | Refinements: LC01 scope boundary, uncertainty scale definition, human-readable cross-reference principle, TT non-monetary clarification, mandatory/optional file markers |

---

*This document is part of the AMPEL360 Q100 SSOT baseline under the OPT-IN Framework.*

*ATA 00-00 establishes program-wide conventions referenced by all other chapters.*
