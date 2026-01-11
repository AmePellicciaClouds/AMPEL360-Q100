# LC01 — Problem Statement: AI/ML Models General

**ATA Reference:** 95-00 (General)  
**OPT-IN Axis:** T-TECHNOLOGIES / I2-INTELLIGENCE  
**Parent System:** ATA 95 — AI/ML Models  
**Scope:** Cross-cutting requirements for airborne AI/ML model lifecycle governance

---

## 1. Overview

This LC01 node orchestrates uncertainty resolution for **AI/ML Model Governance** across the AMPEL360 Q100 BWB hydrogen-hybrid aircraft program. ATA 95-00 establishes the foundational framework for certifiable machine learning systems.

The Q100 integrates AI/ML in safety-relevant functions including:

| Application Domain | DAL | ML Function |
|--------------------|-----|-------------|
| Flight Control Augmentation | A | Neural network envelope protection |
| Predictive Maintenance | C | Anomaly detection, RUL estimation |
| Energy Management | B | H₂/battery optimization, demand prediction |
| Pilot Advisory | C | Situational awareness enhancement |
| Health Monitoring | B | Sensor fusion, fault detection |

### 1.1 Certification Challenge

Traditional DO-178C/DO-254 processes assume deterministic, specification-driven development. ML systems present fundamental challenges:

| Traditional Software | ML Systems |
|---------------------|------------|
| Requirements → Code | Data → Model |
| Explicit logic | Learned representations |
| Complete testing feasible | Input space intractable |
| Static behavior | Potential drift |
| Traceable decisions | Opacity concerns |

This LC01 addresses the epistemic gap between current certification frameworks and ML system characteristics.

---

## 2. Scope Definition

### 2.1 In-Scope

- AI/ML governance framework and policies
- Model development lifecycle standards
- Training data requirements and provenance
- Verification and validation methodology for ML
- Runtime monitoring and assurance
- Explainability and interpretability requirements
- Certification strategy alignment (EASA AI Roadmap, FAA)
- Tool qualification for ML development environments
- Configuration management for models and data
- Human-AI teaming requirements

### 2.2 Out-of-Scope

- Specific model implementations (see 95-10 through 95-70)
- Synthetic data generation (ATA 97)
- Ground-based AI systems (non-airborne)
- Cybersecurity requirements → **Trace:** ATA 96 owns TARA/security objectives; ATA 95 provides model governance hooks (logging, integrity checks, update controls) consumed by ATA 96

---

## 3. Definitions

| Term | Definition |
|------|------------|
| **AI-based System** | System that uses artificial intelligence techniques to perform functions that would otherwise require human intelligence |
| **Model** | Mathematical or computational representation learned from data that maps inputs to outputs |
| **ML System** | System incorporating one or more machine learning models as functional components |
| **ODD** | Operational Design Domain — the specific conditions under which the AI/ML system is designed to function |
| **OoD** | Out-of-Distribution — inputs that fall outside the training data distribution or ODD boundaries |
| **Drift** | Gradual change in model performance due to changes in input data distribution or environment |
| **Runtime Monitor** | Component that observes AI/ML system behavior during operation to detect anomalies, OoD inputs, or performance degradation |
| **IDAL** | Item Development Assurance Level — assurance level assigned to a specific item (may differ from system DAL) |
| **DAL** | Development Assurance Level — level of rigor required in development process (A highest, E lowest) |
| **Learning Assurance** | Activities and evidence demonstrating that an ML model meets its intended function with acceptable risk |
| **W-shaped Process** | EASA-proposed development lifecycle for ML systems with parallel data and model development branches |

---

## 4. KNOT Register Summary

| KNOT ID | Title | Status | Residual |
|---------|-------|--------|----------|
| KNOT-95-00-001 | ML Certification Strategy | OPEN | 100 |
| KNOT-95-00-002 | Learning Assurance Framework | OPEN | 100 |
| KNOT-95-00-003 | Training Data Governance | OPEN | 100 |
| KNOT-95-00-004 | V&V Methodology for ML | OPEN | 100 |
| KNOT-95-00-005 | Runtime Monitoring Architecture | OPEN | 100 |
| KNOT-95-00-006 | Explainability Requirements | OPEN | 100 |
| KNOT-95-00-007 | Human-AI Interaction Design | OPEN | 100 |
| KNOT-95-00-008 | ML Tool Qualification | OPEN | 100 |

See `KNOTS.csv` for complete register.

---

## 5. Regulatory Landscape

### 5.1 Current Guidance

| Document | Authority | Status | Date / Notes |
|----------|-----------|--------|--------------|
| **EASA Artificial Intelligence Roadmap 2.0** | EASA | Published | 10 May 2023 |
| **EASA AI Concept Paper Issue 2** (Guidance for Level 1 & 2 ML applications) | EASA | Published | 6 Mar 2024 |
| **RMT.0742 — Artificial Intelligence Trustworthiness** (ToR) | EASA | Active rulemaking | 11 Sep 2024; tied to EU AI Act trustworthiness |
| **Roadmap for Artificial Intelligence Safety Assurance (Version I)** | FAA | Published | 23 Jul 2024 |
| **SAE AIR6988** — AI in Aeronautical Systems (Statement of Concerns) | SAE | Published | 29 Apr 2021 |
| **EUROCAE ED-324 / SAE ARP6983** (Process standard for AI safety-related aeronautical products) | EUROCAE/SAE | Draft / open consultation | WG-114 target: 30 Jun 2026 |
| **RTCA DO-178C** | RTCA | Published | 2011 — Software baseline |
| **RTCA DO-254** | RTCA | Published | 2000 — Hardware baseline |
| **RTCA DO-330** | RTCA | Published | 2011 — Tool qualification |

### 5.2 EASA AI Levels (per Concept Paper Issue 2)

| Level | Sublevel | Description | Human Role |
|-------|----------|-------------|------------|
| **Level 1** | 1A | Human augmentation | AI augments human perception/cognition |
| | 1B | Cognitive assistance | AI provides decision support |
| **Level 2** | 2A | Human–AI collaboration (human-initiated) | Human delegates tasks to AI |
| | 2B | Human–AI collaboration (AI-initiated) | AI proposes actions for human approval |
| **Level 3** | 3A | Advanced automation (remote monitoring) | Human oversight remote/asynchronous |
| | 3B | Advanced automation (no end-user involvement) | Full autonomy within ODD |

**Q100 Preliminary DAL Mapping (Program internal — not authority-defined):**

| Application Domain | Preliminary AI Level | Preliminary DAL | Notes |
|--------------------|----------------------|-----------------|-------|
| Flight Control Augmentation | 2B / 3A | A | Envelope protection; authority TBD |
| Predictive Maintenance | 1B | C | Decision support only |
| Energy Management | 2A | B | Optimization with crew oversight |
| Pilot Advisory | 1B | C | Situational awareness support |
| Health Monitoring | 2A | B | Fault detection with crew action |

> **Note:** DAL mapping is program preliminary. Final allocation requires authority concurrence per certification basis.

---

## 6. Closure Criteria

A KNOT in this LC01 node is **CLOSED** when:

1. ✅ All planned KNUs reach `COMPLETE` or `ACCEPTED` status
2. ✅ Residual uncertainty drops to or below target (typically ≤15)
3. ✅ All PUB artifacts pass BREX validation
4. ✅ All trace links resolve (SSOT ↔ PUB, KNU → artifact)
5. ✅ Authority engagement artifacts documented (EASA/FAA)
6. ✅ Stakeholder signoffs captured in evidence pack
7. ✅ TT rewards distributed and logged to `AWARDS_TT.csv`

### Node-Level Closure

The entire 95-00 LC01 node closes when:
- All 8 KNOTs reach CLOSED status
- Certification strategy approved by authority
- Cross-KNOT dependencies resolved
- Consolidated evidence pack approved by STK_AI, STK_CERT, STK_SAF
- TT pools fully distributed

---

## 7. Key Stakeholders

| AoR Code | Role | Responsibility |
|----------|------|----------------|
| STK_AI | AI/ML Engineering Lead | Technical ownership of ML systems |
| STK_SE | Systems Engineering | Integration with aircraft systems |
| STK_SAF | Safety Engineering | ML safety assessment, hazard analysis |
| STK_CERT | Certification | Authority liaison, compliance strategy |
| STK_DATA | Data Architecture | Training data governance, DPP integration |
| STK_TEST | Test Engineering | V&V procedures, test coverage |
| STK_SW | Software Engineering | DO-178C integration, tool qualification |
| STK_HF | Human Factors | Human-AI interaction design |
| STK_OPS | Operations | Operational deployment, monitoring |
| STK_CM | Configuration Management | Model versioning, data versioning |

---

## 8. Dependencies

### 8.1 Upstream (This node depends on)

| Source | Dependency |
|--------|------------|
| ATA 22-xx | Auto-flight system requirements |
| ATA 27-xx | Flight control system architecture |
| ATA 31-xx | Indicating/recording system interfaces |
| ATA 45-xx | Central maintenance system integration |
| ATA 46-xx | Information systems architecture |
| LC03 (Safety) | System-level hazard analysis |
| LC04 (Design) | Aircraft functional architecture |

### 8.2 Downstream (Depends on this node)

| Target | Dependency |
|--------|------------|
| ATA 95-10 | Model requirements and safety intent |
| ATA 95-20 | Training and tuning |
| ATA 95-30 | Verification and validation |
| ATA 95-40 | Deployment and runtime |
| ATA 95-50 | Monitoring and drift |
| ATA 95-60 | Data interfaces |
| ATA 95-70 | Toolchain and CI |
| ATA 97-xx | Synthetic data validation |
| LC06 (Verification) | ML-specific verification approach |
| LC07 (Validation) | ML-specific validation approach |

---

## 9. Tokenomics Summary

| Parameter | Value |
|-----------|-------|
| **Total Pool (this node)** | 800 TT |
| **Per-KNOT Allocation** | 100 TT each |
| **Effort Weight (α)** | 0.30 |
| **Impact Weight (1-α)** | 0.70 |
| **Spillover Multiplier (λ)** | 0.60 |

Note: Higher spillover multiplier (0.60 vs 0.50) reflects strong cross-KNOT interdependencies in AI governance.

See `TOKENOMICS_TT.yaml` for detailed configuration.

---

## 10. File Inventory

### 10.1 Core LC01 Files

| File | Purpose |
|------|---------|
| `README.md` | This overview document |
| `KNOTS.csv` | Uncertainty register |
| `KNU_PLAN.csv` | Expected Knowledge Units per KNOT |
| `TIMELINE.csv` | Milestones and target dates |
| `RACI.csv` | Stakeholder responsibility matrix |
| `TOKENOMICS_TT.yaml` | TT reward pool configuration |
| `AWARDS_TT.csv` | Distribution ledger (populated at closure) |

### 10.2 Authority Engagement Files (Closure Criterion #5)

| File | Purpose |
|------|---------|
| `AUTH_ENGAGEMENT_LOG.md` | Chronological record of authority interactions |
| `AUTH_QUESTIONS_REGISTER.csv` | Open questions and responses from EASA/FAA |
| `MEETING_MINUTES/` | Controlled folder for pre-application and CRI meeting records |
| `ISSUE_PAPERS/` | Certification Issue Papers submitted to authority |
| `SPECIAL_CONDITIONS/` | Special Conditions or Equivalent Safety Findings (if applicable) |

---

## 11. REC (Required End Cycle) Mapping

| KNU_Type | Artifact_Class | REC | Description |
|----------|----------------|-----|-------------|
| `REQ` | SSOT | `LC02` | System Requirements |
| `SAF` | SSOT | `LC03` | Safety & Reliability |
| `ICD` | SSOT | `LC04` | Design Definition |
| `ANA` | SSOT | `LC05` | Analysis & Models |
| `TEST` | SSOT | `LC06` | Verification |
| `VAL` | SSOT | `LC07` | Validation |
| `CM` | SSOT | `LC08` | Configuration Management |
| `PUB-AMM` | CSDB | `LC11` | Aircraft Maintenance Manual |
| `PUB-TRN` | CSDB | `LC13` | Training Manuals |

---

## 12. Revision History

| Date | Author | Change |
|------|--------|--------|
| 2026-01-11 | AMPEL360 Baseline Architect | Initial scaffold creation (v0.1) |
| 2026-01-11 | AMPEL360 Baseline Architect | v0.2: Corrected regulatory dates (EASA Roadmap 2.0 = 2023, FAA Roadmap = 2024, ED-324 = draft 2026); aligned EASA AI Levels to Concept Paper Issue 2 (1A/1B, 2A/2B, 3A/3B); added Definitions section; added Authority Engagement file inventory; marked DAL mapping as program preliminary |

---

*This document is part of the AMPEL360 Q100 SSOT baseline under the OPT-IN Framework.*
