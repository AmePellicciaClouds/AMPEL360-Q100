---
# ═══════════════════════════════════════════════════════════════════════════════
# KNU ARTIFACT METADATA
# ═══════════════════════════════════════════════════════════════════════════════
knu_id: "KNU-95-00-001-REQ-001"
knot_id: "KNOT-95-00-001"
title: "ML Certification Basis Requirements"
knu_type: "REQ"
artifact_class: "SSOT"
lifecycle_category: "LC02"
rec: "LC02"
ata_reference: "95-00"
ata_address: "ATA-95-00-00-00"
expected_location: "../LC02_SYSTEM_REQUIREMENTS/"
status: "DRAFT"
version: "I01-R01"
priority: "HIGH"

# Ownership & Governance
owner_aor: "STK_CERT"
contributors:
  - "STK_AI"
  - "STK_SAF"
  - "STK_SE"
  - "STK_SW"
  - "STK_TEST"
reviewers:
  - "STK_AI"
  - "STK_SAF"
approved_by: null
approval_date: null

# Dates
created_date: "2026-01-11"
due_date: "2026-05-15"
last_updated: "2026-01-11"

# Acceptance & Verification
acceptance_criteria: "Certification basis defined for each ML application; DAL allocation justified; MoC identified"
verification_method: "Review"
effort_predicted: 13

# Metrics
requirements_count: 35
tbd_count: 6

# Traceability
parent_requirements:
  - "EASA Artificial Intelligence Roadmap 2.0 (Version 2.0, 10 May 2023)"
  - "EASA Artificial Intelligence (AI) Concept Paper Issue 2: Guidance for Level 1 & 2 Machine Learning Applications (Mar 2024)"
  - "ToR RMT.0742: Artificial intelligence trustworthiness (Issue 1, 11 Sep 2024)"
  - "FAA Roadmap for Artificial Intelligence Safety Assurance, Version I (23 Jul 2024)"
  - "SAE AIR 6988 (2021)"
  - "EUROCAE ED-324 / SAE ARP6983 (Draft; Open Consultation Aug 2025; Target Publication Jun 2026)"
child_requirements: []
related_knots:
  - "KNOT-95-00-002"  # Learning Assurance Framework
  - "KNOT-95-00-004"  # V&V Methodology
  - "KNOT-95-00-006"  # Explainability
  - "KNOT-22-00-001"  # Auto-flight (if applicable)
  - "KNOT-27-00-001"  # Flight controls (if applicable)
related_knus:
  - "KNU-95-00-001-PLAN-001"  # ML Certification Plan
  - "KNU-95-00-001-ANA-001"   # Certification Gap Analysis
  - "KNU-95-00-002-REQ-001"   # Learning Assurance Objectives
ata_traces:
  - "ATA-95"   # AI/ML Models
  - "ATA-22"   # Auto Flight
  - "ATA-27"   # Flight Controls
  - "ATA-31"   # Indicating/Recording
  - "ATA-45"   # Central Maintenance
  - "ATA-46"   # Information Systems

# Regulatory Context
regulatory_references:
  - "CS-25.1301"      # Function and Installation
  - "CS-25.1309"      # Equipment, Systems, and Installations
  - "CS-25.1322"      # Flightcrew Alerting
  - "CS-25.1329"      # Flight Guidance System
  - "CS-25.1302"      # Installed Systems and Equipment for Use by the Flightcrew
  - "CS-25 Subpart F" # Equipment
certification_guidance:
  - "EASA Artificial Intelligence Roadmap 2.0 (Version 2.0, 10 May 2023)"
  - "EASA Artificial Intelligence (AI) Concept Paper Issue 2: Guidance for Level 1 & 2 Machine Learning Applications (Mar 2024)"
  - "ToR RMT.0742: Artificial intelligence trustworthiness (Issue 1, 11 Sep 2024)"
  - "FAA Roadmap for Artificial Intelligence Safety Assurance, Version I (23 Jul 2024)"
  - "SAE AIR 6988 (2021)"
  - "EUROCAE ED-324 / SAE ARP6983 (Draft; Open Consultation Aug 2025; Target Publication Jun 2026)"
  - "DO-178C (2011)"
  - "DO-254 (2000)"
  - "DO-330 (2011)"

# Document Control
classification: "INTERNAL"
export_control: "NONE"
canonical_hash: null
---

# ML Certification Basis Requirements

**KNU ID:** KNU-95-00-001-REQ-001  
**KNOT:** KNOT-95-00-001 (ML Certification Strategy)  
**ATA Reference:** 95-00 (AI/ML Models General)  
**ATA Address:** ATA-95-00-00-00  
**Status:** DRAFT  
**Version:** I01-R01  
**Priority:** HIGH  

---

## 1. Purpose and Scope

### 1.1 Purpose

This document defines the **certification basis requirements** for Machine Learning (ML) systems integrated into the AMPEL360 Q100 BWB hydrogen-hybrid electric aircraft. It establishes:

- Certification basis for each ML application
- Design Assurance Level (DAL) allocation with justification
- Means of Compliance (MoC) for ML-specific objectives
- Authority engagement requirements
- Evidence and documentation requirements

### 1.2 Scope

#### 1.2.1 In-Scope

| Domain | Coverage |
|--------|----------|
| ML Applications | All airborne ML functions per Table 1.3 |
| Certification Basis | CS-25 + Special Conditions + CRI/IP |
| DAL Allocation | System safety-driven allocation |
| Means of Compliance | ML-specific compliance approaches |
| Authority Engagement | EASA/FAA coordination requirements |
| Evidence Requirements | Certification documentation |

#### 1.2.2 Out-of-Scope

| Item | Reference |
|------|-----------|
| Detailed learning assurance processes | KNU-95-00-002-REQ-001 |
| V&V test procedures | KNU-95-00-004-REQ-001 |
| Specific model architectures | ATA 95-10 through 95-70 |
| Ground-based ML systems | Non-airborne scope |

### 1.3 ML Applications Registry

> **NOTE (SSOT):** “EASA AI Level” entries below are **initial program classifications** (Level 1/2/3). Sublevel (e.g., 1A/1B/2A/2B/3A/3B) shall be confirmed under REQ-MLCB-020.

| App ID | Application | ATA | DAL | EASA AI Level | Function Type |
|--------|-------------|-----|-----|---------------|---------------|
| ML-APP-001 | Flight Envelope Protection | 27 | A | Level 3 | Control augmentation |
| ML-APP-002 | Energy Management Optimization | 24/28 | B | Level 2 | Resource optimization |
| ML-APP-003 | Predictive Health Monitoring | 45 | B | Level 2 | Fault detection |
| ML-APP-004 | Pilot Situational Awareness | 31/34 | C | Level 2 | Advisory display |
| ML-APP-005 | Anomaly Detection | 45 | C | Level 2 | Maintenance advisory |
| ML-APP-006 | Fuel Cell Degradation Prediction | 28 | B | Level 2 | RUL estimation |
| ML-APP-007 | Turbulence Detection | 34 | C | Level 1 | Weather advisory |
| ML-APP-008 | Passenger Load Estimation | 08 | D | Level 1 | Weight/balance assist |

---

## 2. Applicable Documents

### 2.1 Regulatory Basis

| Document | Title | Applicability |
|----------|-------|---------------|
| CS-25 | Certification Specifications for Large Aeroplanes | Primary airworthiness basis |
| CS-25.1309 | Equipment, Systems, and Installations | Safety assessment basis |
| CS-25.1301 | Function and Installation | Equipment requirements |
| CS-25.1302 | Installed Systems for Flightcrew Use | HMI requirements |
| CS-25.1322 | Flightcrew Alerting | Alert requirements |
| CS-25.1329 | Flight Guidance System | FGS requirements |

### 2.2 AI/ML Guidance

| Document | Authority | Date | Status |
|----------|-----------|------|--------|
| EASA Artificial Intelligence Roadmap 2.0 (Version 2.0) | EASA | 10 May 2023 | Published |
| EASA Artificial Intelligence (AI) Concept Paper Issue 2: Guidance for Level 1 & 2 ML | EASA | Mar 2024 | Published |
| AI trustworthiness analysis (building block) | EASA | May 2023 | In AI Roadmap 2.0 (Section G.1) |
| ToR RMT.0742: Artificial intelligence trustworthiness (Issue 1) | EASA | 11 Sep 2024 | Rulemaking (active) |
| FAA Roadmap for Artificial Intelligence Safety Assurance, Version I | FAA | 23 Jul 2024 | Published |
| SAE AIR 6988 | SAE | 2021 | Published |
| EUROCAE ED-324 / SAE ARP6983 | EUROCAE/SAE | Aug 2025 → Jun 2026 | Draft / Consultation / Target publication |

### 2.3 Baseline Standards

| Document | Title | Application |
|----------|-------|-------------|
| DO-178C | Software Considerations in Airborne Systems | Software baseline |
| DO-254 | Design Assurance Guidance for Airborne Electronic Hardware | Hardware baseline |
| DO-330 | Software Tool Qualification Considerations | Tool qualification |
| DO-331 | Model-Based Development and Verification | MBD supplement |
| ARP 4754A | Guidelines for Development of Civil Aircraft and Systems | System development |
| ARP 4761 | Guidelines for Conducting Safety Assessment | Safety assessment |

### 2.4 Program Documents

| Document | Title |
|----------|-------|
| AMPEL360-SSA-001 | System Safety Assessment |
| AMPEL360-FHA-001 | Functional Hazard Assessment |
| AMPEL360-PSSA-001 | Preliminary System Safety Assessment |
| KNU-95-00-001-PLAN-001 | ML Certification Plan |

---

## 3. Definitions and Abbreviations

| Term | Definition |
|------|------------|
| AI | Artificial Intelligence |
| CRI | Certification Review Item (EASA) |
| DAL | Design Assurance Level (A through E) |
| FHA | Functional Hazard Assessment |
| IP | Issue Paper (FAA) |
| LAP | Learning Assurance Plan |
| ML | Machine Learning |
| MoC | Means of Compliance |
| ODD | Operational Design Domain (validity envelope for ML operation) |
| OOD | Out-of-Distribution (inputs outside training/ODD assumptions) |
| PSSA | Preliminary System Safety Assessment |
| SC | Special Condition |
| SSA | System Safety Assessment |
| W-shaped | ML lifecycle concept integrating development and assurance loops (data-centric assurance) |

### 3.1 EASA AI Levels (taxonomy)

| Level | Sublevel | Description (summary) | Human role (summary) |
|------:|:--------:|------------------------|----------------------|
| 1 | 1A | Human augmentation | AI augments human capability; human remains primary |
| 1 | 1B | Human cognitive assistance | AI assists selection/decision; human remains accountable |
| 2 | 2A | Human–AI teaming (cooperation) | Shared task execution with defined supervision/override |
| 2 | 2B | Human–AI collaboration | Increased authority allocation; stronger HMI + assurance needs |
| 3 | 3A | Advanced automation (safeguarded) | AI acts with safeguarding; human oversight may be remote |
| 3 | 3B | Advanced automation (non-supervised) | AI acts without end-user involvement (future/limited scope) |

> **NOTE (SSOT):** Any mapping between EASA AI Levels and DAL is **program-internal** and must be justified via FHA/PSSA/SSA and authority agreement.

---

## 4. Requirements

### 4.1 General Certification Requirements

#### REQ-MLCB-001: Certification Basis Identification

**Requirement:** For each ML application identified in Table 1.3, the certification basis shall be formally identified comprising:
- Applicable CS-25 paragraphs
- Special Conditions (if required)
- Certification Review Items (CRI) or Issue Papers (IP)
- Equivalent Safety Findings (ESF), if applicable

| Attribute | Value |
|-----------|-------|
| **Rationale** | Establishes regulatory framework for each ML application |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; program certification strategy |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-002: Special Condition Determination

**Requirement:** A Special Condition proposal shall be developed for ML applications where:
- The ML function is novel and not addressed by existing CS-25 provisions
- The ML function performs safety-critical functions (DAL A or B)
- The ML function affects aircraft handling qualities or structural loads
- Traditional means of compliance are not applicable

| Attribute | Value |
|-----------|-------|
| **Rationale** | Novel ML usage may require Special Conditions and agreed MoC |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; authority engagement plan |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-003: CRI/IP Development

**Requirement:** For each ML application requiring authority agreement on means of compliance, a CRI (EASA) or IP (FAA) shall be developed addressing:
- Learning assurance approach
- Training data requirements
- Verification and validation methodology
- Runtime monitoring approach
- Explainability provisions
- Configuration management approach

| Attribute | Value |
|-----------|-------|
| **Rationale** | Formal mechanism for compliance method agreement |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA/FAA engagement practice; program compliance approach |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-004: Bilateral Harmonization

**Requirement:** The ML certification strategy shall address harmonization requirements between EASA and FAA to support bilateral validation, including:
- Common certification basis elements
- Delta requirements identification
- Unified evidence packages where feasible
- Coordination plan for divergent requirements

| Attribute | Value |
|-----------|-------|
| **Rationale** | Q100 targets both EASA and FAA certification |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | Program requirement |
| **Allocated To** | STK_CERT |

---

### 4.2 DAL Allocation Requirements

#### REQ-MLCB-010: Safety-Driven DAL Allocation

**Requirement:** DAL allocation for each ML application shall be derived from the System Safety Assessment process per ARP 4754A/ARP 4761, based on:
- Functional Hazard Assessment (FHA) results
- Failure condition classification (Catastrophic, Hazardous, Major, Minor, No Effect)
- Fault tree analysis / dependency diagrams
- Common cause analysis

| Attribute | Value |
|-----------|-------|
| **Rationale** | DAL must be traceable to system safety analysis |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | ARP 4754A/ARP 4761; CS-25.1309 |
| **Allocated To** | STK_SAF, STK_CERT |

---

#### REQ-MLCB-011: DAL A Application Requirements

**Requirement:** For ML applications allocated DAL A (ML-APP-001: Flight Envelope Protection), the following additional requirements apply:
- Complete independence from any DAL B or lower ML function
- Dissimilar backup system or reversionary mode
- Formal methods application where practical (as agreed with authority)
- Enhanced runtime monitoring with fail-safe activation
- Authority pre-engagement prior to detailed design

| Attribute | Value |
|-----------|-------|
| **Rationale** | Catastrophic failure condition requires highest assurance |
| **Verification** | Review, Analysis |
| **Priority** | MUST |
| **Trace To** | CS-25.1309; DO-178C objective intent (adapted) |
| **Allocated To** | STK_SAF, STK_AI |

---

#### REQ-MLCB-012: DAL B Application Requirements

**Requirement:** For ML applications allocated DAL B (ML-APP-002, ML-APP-003, ML-APP-006), the following additional requirements apply:
- Runtime monitoring with graceful degradation capability
- Defined operational domain with boundary enforcement
- Quantified uncertainty bounds for outputs (where applicable)
- Crew alerting for ML function degradation or failure (when flightcrew-facing)

| Attribute | Value |
|-----------|-------|
| **Rationale** | Hazardous failure condition requires high assurance |
| **Verification** | Review, Analysis |
| **Priority** | MUST |
| **Trace To** | CS-25.1309; EASA/FAA ML assurance guidance |
| **Allocated To** | STK_SAF, STK_AI |

---

#### REQ-MLCB-013: DAL C/D Application Requirements

**Requirement:** For ML applications allocated DAL C or D (ML-APP-004, ML-APP-005, ML-APP-007, ML-APP-008), the means of compliance may leverage:
- Proportionate assurance activities consistent with criticality
- Simplified runtime monitoring (as justified)
- Standard V&V techniques with ML-specific extensions
- Applicable guidance per EASA Concept Paper Issue 2 (Level 1 & 2)

| Attribute | Value |
|-----------|-------|
| **Rationale** | Major/Minor failure conditions allow proportionate assurance |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | CS-25.1309; EASA Concept Paper Issue 2 |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-014: DAL Justification Documentation

**Requirement:** For each ML application, a DAL Justification Document shall be produced containing:
- Failure condition classification with supporting rationale
- Fault tree or dependency diagram
- Independence and dissimilarity analysis
- Mapping to safety objectives
- Authority acceptance record

| Attribute | Value |
|-----------|-------|
| **Rationale** | Provides auditable trail for DAL assignment |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | ARP 4754A/ARP 4761 |
| **Allocated To** | STK_SAF |

---

### 4.3 EASA AI Level Requirements

#### REQ-MLCB-020: AI Level Classification

**Requirement:** Each ML application shall be classified according to EASA AI Levels (including sublevels where applicable) based on:
- Degree of human involvement in decision loop
- Criticality of function
- Autonomy level
- Reversibility of actions

| Classification Criteria | Level 1 | Level 2 | Level 3 |
|------------------------|---------|---------|---------|
| Human role | AI assists human | Teaming/collaboration | AI acts, human oversees |
| Decision authority | Human | Shared/allocated | AI with safeguarding/override |
| Program preliminary DAL expectation (informative) | D, E | C, D | A, B, C |

| Attribute | Value |
|-----------|-------|
| **Rationale** | EASA framework requires AI level classification and justification |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; EASA Concept Paper Issue 2 |
| **Allocated To** | STK_AI, STK_CERT |

---

#### REQ-MLCB-021: Level 3 Enhanced Requirements

**Requirement:** For Level 3 ML applications (ML-APP-001), the following enhanced requirements apply:
- Trustworthiness analysis approach and acceptance criteria agreed with authority
- Enhanced explainability provisions for design-time and investigation
- Continuous learning provisions (if applicable) with explicit change management
- Bias and fairness assessment (where relevant to operational/decision outputs)
- Robustness verification against perturbations and abnormal inputs

**Additional requirement:** Where Level 3 guidance is immature or evolving, compliance shall be formalized via **Special Condition + CRI/IP** with authority-agreed MoC prior to detailed design.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Level 3 applications require enhanced scrutiny and authority alignment |
| **Verification** | Review, Analysis |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; authority engagement strategy |
| **Allocated To** | STK_AI, STK_SAF |

---

#### REQ-MLCB-022: Level 2 Collaboration Requirements

**Requirement:** For Level 2 ML applications (ML-APP-002 through ML-APP-006), the following requirements apply:
- Clear delineation of human vs. AI responsibilities (including accountability)
- Crew/maintainer awareness of AI state and confidence (where user-facing)
- Override capability with minimal delay (where action authority is allocated)
- Trust calibration provisions in training / procedures (where applicable)

| Attribute | Value |
|-----------|-------|
| **Rationale** | Human–AI collaboration requires clear interfaces and operational discipline |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA Concept Paper Issue 2; CS-25.1302 (when flightcrew-facing) |
| **Allocated To** | STK_HF, STK_AI |

---

#### REQ-MLCB-023: Level 1 Assistance Requirements

**Requirement:** For Level 1 ML applications (ML-APP-007, ML-APP-008), the following minimum requirements apply:
- Clear indication that output is AI-generated (where user-facing)
- Human retains full decision authority
- AI output presented as recommendation, not command
- Graceful degradation with manual fallback

| Attribute | Value |
|-----------|-------|
| **Rationale** | Assistance functions still require clarity of roles and failure behavior |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA Concept Paper Issue 2 |
| **Allocated To** | STK_HF |

---

### 4.4 Means of Compliance Requirements

#### REQ-MLCB-030: Learning Assurance Compliance

**Requirement:** The means of compliance for learning assurance shall address a W-shaped lifecycle concept consistent with EASA/EUROCAE guidance:

```

Requirements ──▶ Data ──▶ Learning ──▶ Model ──▶ Deployment
│            │          │          │           │
▼            ▼          ▼          ▼           ▼
Safety     Data Mgmt   Training   V&V of     Runtime
Intent     Plan        Assur.      Model      Monitoring

```

| Attribute | Value |
|-----------|-------|
| **Rationale** | ML requires data-centric lifecycle assurance, not code-centric |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EUROCAE ED-324 / SAE ARP6983 (draft); EASA AI Roadmap 2.0 |
| **Allocated To** | STK_AI |

---

#### REQ-MLCB-031: DO-178C Adaptation

**Requirement:** For software aspects of ML systems, DO-178C objective intent shall be adapted as follows (subject to authority agreement):

| DO-178C Objective Intent | ML Adaptation (examples) |
|--------------------------|--------------------------|
| Requirements-based testing | Operational domain coverage testing |
| Structural coverage | Activation/feature coverage + OOD monitoring (as justified) |
| Requirements traceability | Data requirements + behavior traceability |
| Code review | Model architecture + training process review |
| Configuration management | Model + data versioning + training environment control |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Direct DO-178C application is not sufficient for learned behavior |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | SAE AIR 6988; EUROCAE ED-324 / SAE ARP6983 (draft) |
| **Allocated To** | STK_SW, STK_AI |

---

#### REQ-MLCB-032: Operational Domain Definition

**Requirement:** For each ML application, an Operational Design Domain (ODD) shall be formally defined specifying:
- Input parameter ranges and valid combinations
- Environmental conditions (temperature, altitude, flight phase)
- Sensor quality and availability requirements
- Exclusions and limitations
- Boundary behavior and enforcement mechanism

| Attribute | Value |
|-----------|-------|
| **Rationale** | ML validity is bounded by domain assumptions |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; SAE AIR 6988 |
| **Allocated To** | STK_AI, STK_SE |

---

#### REQ-MLCB-033: Training Data Compliance

**Requirement:** The means of compliance for training data shall address:
- Data provenance and chain of custody
- Representativeness relative to ODD
- Balance and bias mitigation (where relevant)
- Annotation quality and consistency
- Independence of test data from training data
- Data configuration management

| Attribute | Value |
|-----------|-------|
| **Rationale** | Training data quality directly impacts model behavior |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EUROCAE ED-324 / SAE ARP6983 (draft); EASA guidance |
| **Allocated To** | STK_DATA |

---

#### REQ-MLCB-034: Verification Coverage Compliance

**Requirement:** The means of compliance for verification coverage shall define:
- Coverage metrics appropriate for ML (not traditional structural coverage)
- Operational domain coverage targets
- Corner case and boundary testing approach
- Robustness testing (noise, perturbations, abnormal inputs)
- Regression testing strategy for model updates

| Attribute | Value |
|-----------|-------|
| **Rationale** | Traditional code coverage is not directly meaningful for ML |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EUROCAE ED-324 / SAE ARP6983 (draft); SAE AIR 6988 |
| **Allocated To** | STK_TEST |

---

#### REQ-MLCB-035: Runtime Monitoring Compliance

**Requirement:** The means of compliance for runtime assurance shall define:
- Out-of-distribution (OOD) detection mechanisms (where appropriate)
- Confidence/uncertainty estimation (where appropriate)
- Anomaly detection for model behavior
- Safeguard activation criteria and response
- Degradation and fallback modes

| Attribute | Value |
|-----------|-------|
| **Rationale** | Runtime monitoring compensates for verification gaps |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; EUROCAE ED-324 / SAE ARP6983 (draft) |
| **Allocated To** | STK_AI |

---

#### REQ-MLCB-036: Explainability Compliance

**Requirement:** The means of compliance for explainability shall define:
- Explanation requirements by DAL and use case
- Explanation methods and their validation
- Developer vs. operator vs. investigator explanations
- Limitations acknowledgment

| Explainability Need | DAL A/B | DAL C | DAL D/E |
|--------------------|---------|-------|---------|
| Design-time understanding | Required | Required | Recommended |
| Runtime explanation | Required | Recommended | Optional |
| Post-incident analysis | Required | Required | Required |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Explainability expectations vary by criticality and audience |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA AI Roadmap 2.0; trustworthiness expectations |
| **Allocated To** | STK_AI |

---

### 4.5 Authority Engagement Requirements

#### REQ-MLCB-040: Familiarization Meeting

**Requirement:** An ML familiarization meeting with EASA shall be conducted prior to CRI submission, covering:
- Overview of ML applications and their criticality
- Proposed certification approach
- Key technical challenges and proposed solutions
- Preliminary timeline

| Attribute | Value |
|-----------|-------|
| **Rationale** | Early engagement reduces certification risk |
| **Verification** | Demonstration |
| **Priority** | MUST |
| **Trace To** | EASA engagement practice |
| **Allocated To** | STK_CERT |
| **Target Date** | 2026-Q2 |

---

#### REQ-MLCB-041: CRI-AI-001 Submission

**Requirement:** CRI-AI-001 (ML Certification Strategy) shall be submitted to EASA containing:
- Complete list of ML applications with DAL/AI Level
- Proposed certification basis per application
- Special Condition proposal (if applicable)
- Means of compliance summary
- Key milestones and dependencies

| Attribute | Value |
|-----------|-------|
| **Rationale** | Formal agreement on certification approach |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA engagement practice |
| **Allocated To** | STK_CERT |
| **Target Date** | 2026-Q3 |

---

#### REQ-MLCB-042: CRI-AI-002 Submission

**Requirement:** CRI-AI-002 (Learning Assurance Framework) shall be submitted to EASA containing:
- Learning Assurance Plan overview
- Data management approach
- V&V methodology
- Runtime monitoring strategy
- Tool qualification approach

| Attribute | Value |
|-----------|-------|
| **Rationale** | Detailed agreement on assurance approach |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | EASA engagement practice |
| **Allocated To** | STK_CERT, STK_AI |
| **Target Date** | 2026-Q4 |

---

#### REQ-MLCB-043: Authority Technical Reviews

**Requirement:** Technical review meetings with EASA shall be conducted at the following milestones:
- Post-LAP approval
- Post-training data validation
- Post-model verification
- Pre-flight test

| Attribute | Value |
|-----------|-------|
| **Rationale** | Progressive compliance demonstration |
| **Verification** | Demonstration |
| **Priority** | MUST |
| **Trace To** | EASA engagement practice |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-044: FAA Coordination

**Requirement:** FAA engagement shall parallel EASA engagement with:
- Issue Paper submission aligned with CRI content
- Bilateral coordination meetings
- Unified evidence packages where requirements align
- Delta documentation where requirements diverge

| Attribute | Value |
|-----------|-------|
| **Rationale** | Dual certification objective |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | Program requirement |
| **Allocated To** | STK_CERT |

---

### 4.6 Documentation Requirements

#### REQ-MLCB-050: ML Certification Plan

**Requirement:** An ML Certification Plan shall be developed and maintained containing:
- ML application inventory with classification
- Certification basis per application
- Means of compliance summary
- Authority engagement plan
- Milestone schedule
- Evidence matrix

| Attribute | Value |
|-----------|-------|
| **Rationale** | Master document for ML certification |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | ARP 4754A intent |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-051: Compliance Matrix

**Requirement:** A Compliance Matrix shall be maintained mapping:
- Each certification requirement to evidence artifact(s)
- Status of each compliance item
- Authority acceptance status
- Open issues and their resolution plan

| Attribute | Value |
|-----------|-------|
| **Rationale** | Auditable compliance tracking |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | Certification practice |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-052: Authority Correspondence Log

**Requirement:** All authority correspondence related to ML certification shall be logged and controlled, including:
- Meeting minutes
- CRI/IP submissions and responses
- Formal letters and decisions
- Technical queries and responses

| Attribute | Value |
|-----------|-------|
| **Rationale** | Configuration control of regulatory decisions |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Certification practice |
| **Allocated To** | STK_CERT, STK_CM |

---

#### REQ-MLCB-053: Evidence Package Structure

**Requirement:** The ML certification evidence package shall follow the structure:

```

ML_CERTIFICATION_EVIDENCE/
├── 01_CERTIFICATION_BASIS/
│   ├── ML_Certification_Plan.pdf
│   ├── Compliance_Matrix.xlsx
│   ├── Special_Conditions/
│   └── CRI_IP_Correspondence/
├── 02_SAFETY_ASSESSMENT/
│   ├── FHA_ML_Functions.pdf
│   ├── PSSA_ML_Systems.pdf
│   ├── DAL_Justification/
│   └── SSA_ML_Integration.pdf
├── 03_LEARNING_ASSURANCE/
│   ├── Learning_Assurance_Plan.pdf
│   ├── Data_Management_Plan.pdf
│   ├── Training_Reports/
│   └── Model_Documentation/
├── 04_VERIFICATION/
│   ├── Verification_Plan.pdf
│   ├── Test_Reports/
│   ├── Coverage_Analysis/
│   └── Robustness_Reports/
├── 05_VALIDATION/
│   ├── Validation_Plan.pdf
│   ├── Operational_Testing/
│   └── Human_Factors_Evaluation/
├── 06_RUNTIME_ASSURANCE/
│   ├── Monitor_Architecture.pdf
│   ├── Safeguard_Analysis.pdf
│   └── Integration_Test_Reports/
├── 07_CONFIGURATION/
│   ├── Model_Configuration_Index.pdf
│   ├── Data_Configuration_Index.pdf
│   └── Tool_Qualification/
└── 08_AUTHORITY_RECORDS/
├── Meeting_Minutes/
├── Decisions/
└── Acceptance_Records/

```

| Attribute | Value |
|-----------|-------|
| **Rationale** | Organized evidence for authority review |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Best practice |
| **Allocated To** | STK_CERT, STK_CM |

---

### 4.7 Per-Application Requirements

#### REQ-MLCB-060: ML-APP-001 Flight Envelope Protection

**Requirement:** The certification basis for ML-APP-001 (Flight Envelope Protection) shall include:

| Element | Requirement |
|---------|-------------|
| CS-25 Paragraphs | 25.143, 25.207, 25.251, 25.1309, 25.1329 |
| Special Condition | Required (novel ML in flight-critical function) |
| DAL | A |
| EASA AI Level | Level 3 (sublevel TBD via REQ-MLCB-020) |
| Dissimilar Backup | Required |
| Formal Methods | Required where practical (authority-agreed scope) |
| Runtime Monitor | Required with fail-safe activation |
| Explainability | Full design-time + post-incident |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Highest criticality ML application |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | FHA/PSSA/SSA outputs |
| **Allocated To** | STK_CERT, STK_SAF |

---

#### REQ-MLCB-061: ML-APP-002 Energy Management

**Requirement:** The certification basis for ML-APP-002 (Energy Management Optimization) shall include:

| Element | Requirement |
|---------|-------------|
| CS-25 Paragraphs | 25.1309, 25.1351 (Electrical) |
| Special Condition | To be determined (TBD-001) |
| DAL | B |
| EASA AI Level | Level 2 (sublevel TBD via REQ-MLCB-020) |
| Crew Override | Required with <2 second latency |
| Runtime Monitor | Required with degradation mode |
| Explainability | Design-time + operator awareness |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Safety-critical energy resource management |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | FHA/PSSA/SSA outputs |
| **Allocated To** | STK_CERT, STK_SAF |

---

#### REQ-MLCB-062: ML-APP-003 Predictive Health Monitoring

**Requirement:** The certification basis for ML-APP-003 (Predictive Health Monitoring) shall include:

| Element | Requirement |
|---------|-------------|
| CS-25 Paragraphs | 25.1309, 25.1310 (Power source capacity) |
| Special Condition | Not anticipated (subject to authority agreement) |
| DAL | B |
| EASA AI Level | Level 2 (sublevel TBD via REQ-MLCB-020) |
| False Positive Rate | Defined limit (TBD-002) |
| Missed Detection Rate | Defined limit (TBD-003) |
| Maintenance Action | Recommendation only; human approval required |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Influences maintenance actions; requires controlled decision authority |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | FHA/PSSA/SSA outputs |
| **Allocated To** | STK_CERT, STK_SAF |

---

#### REQ-MLCB-063: ML-APP-004 through 008 (DAL C/D)

**Requirement:** The certification basis for ML-APP-004 through ML-APP-008 (DAL C/D applications) shall leverage:
- EASA Concept Paper Issue 2 guidance (Level 1 & 2)
- Standard CRI/IP process without Special Condition unless justified
- Proportionate assurance activities

| App ID | CS-25 Paragraphs | DAL | Level | Special Notes |
|--------|------------------|-----|-------|---------------|
| ML-APP-004 | 25.1302, 25.1322 | C | 2 | HMI requirements |
| ML-APP-005 | 25.1309 | C | 2 | Maintenance advisory |
| ML-APP-006 | 25.1309, 25.981 | B | 2 | Fuel system safety |
| ML-APP-007 | 25.1309, 25.1323 | C | 1 | Weather advisory |
| ML-APP-008 | 25.23, 25.25 | D | 1 | Weight/balance assist |

| Attribute | Value |
|-----------|-------|
| **Rationale** | Proportionate assurance for lower criticality functions |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | FHA outputs; EASA Concept Paper Issue 2 |
| **Allocated To** | STK_CERT |

---

### 4.8 Continuous Improvement Requirements

#### REQ-MLCB-070: Regulatory Monitoring

**Requirement:** The ML certification team shall monitor evolving regulatory guidance and assess impact on certification basis, including:
- EASA AI Roadmap updates
- FAA AI guidance evolution
- ED-324/ARP6983 publication progress
- Industry best practice evolution
- Applicable rulemaking outcomes (e.g., RMT.0742)

| Attribute | Value |
|-----------|-------|
| **Rationale** | Regulatory landscape for aviation ML is evolving |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | Program requirement |
| **Allocated To** | STK_CERT |

---

#### REQ-MLCB-071: Gap Assessment Updates

**Requirement:** The certification gap assessment shall be updated:
- Upon publication of new regulatory guidance
- Upon changes to ML application scope or criticality
- At program phase gates
- Upon authority feedback

| Attribute | Value |
|-----------|-------|
| **Rationale** | Maintain current understanding of compliance gaps |
| **Verification** | Review |
| **Priority** | SHOULD |
| **Trace To** | Best practice |
| **Allocated To** | STK_CERT |

---

## 5. Verification Matrix

| Req ID | Review | Inspection | Analysis | Test | Demonstration |
|--------|:------:|:----------:|:--------:|:----:|:-------------:|
| REQ-MLCB-001 | ✓ | | | | |
| REQ-MLCB-002 | ✓ | | | | |
| REQ-MLCB-003 | ✓ | | | | |
| REQ-MLCB-004 | ✓ | | | | |
| REQ-MLCB-010 | ✓ | | | | |
| REQ-MLCB-011 | ✓ | | ✓ | | |
| REQ-MLCB-012 | ✓ | | ✓ | | |
| REQ-MLCB-013 | ✓ | | | | |
| REQ-MLCB-014 | ✓ | | | | |
| REQ-MLCB-020 | ✓ | | | | |
| REQ-MLCB-021 | ✓ | | ✓ | | |
| REQ-MLCB-022 | ✓ | | | | |
| REQ-MLCB-023 | ✓ | | | | |
| REQ-MLCB-030 | ✓ | | | | |
| REQ-MLCB-031 | ✓ | | | | |
| REQ-MLCB-032 | ✓ | | | | |
| REQ-MLCB-033 | ✓ | | | | |
| REQ-MLCB-034 | ✓ | | | | |
| REQ-MLCB-035 | ✓ | | | | |
| REQ-MLCB-036 | ✓ | | | | |
| REQ-MLCB-040 | | | | | ✓ |
| REQ-MLCB-041 | ✓ | | | | |
| REQ-MLCB-042 | ✓ | | | | |
| REQ-MLCB-043 | | | | | ✓ |
| REQ-MLCB-044 | ✓ | | | | |
| REQ-MLCB-050 | ✓ | | | | |
| REQ-MLCB-051 | ✓ | | | | |
| REQ-MLCB-052 | | ✓ | | | |
| REQ-MLCB-053 | | ✓ | | | |
| REQ-MLCB-060 | ✓ | | | | |
| REQ-MLCB-061 | ✓ | | | | |
| REQ-MLCB-062 | ✓ | | | | |
| REQ-MLCB-063 | ✓ | | | | |
| REQ-MLCB-070 | ✓ | | | | |
| REQ-MLCB-071 | ✓ | | | | |

**Summary:** 35 requirements | Review: 31 | Inspection: 2 | Analysis: 3 | Demonstration: 2

---

## 6. Traceability

### 6.1 Upstream Traceability

| Requirement Group | Source |
|-------------------|--------|
| REQ-MLCB-001 to 004 | EASA AI Roadmap 2.0; FAA AI Safety Assurance Roadmap; program certification strategy |
| REQ-MLCB-010 to 014 | ARP 4754A/ARP 4761; CS-25.1309 |
| REQ-MLCB-020 to 023 | EASA AI Roadmap 2.0; EASA Concept Paper Issue 2 |
| REQ-MLCB-030 to 036 | EUROCAE ED-324 / SAE ARP6983 (draft); SAE AIR 6988 |
| REQ-MLCB-040 to 044 | EASA/FAA certification engagement practice |
| REQ-MLCB-050 to 053 | ARP 4754A intent; certification best practice |
| REQ-MLCB-060 to 063 | FHA/PSSA/SSA outputs (per-application) |

### 6.2 Downstream Traceability

| Requirement Group | Target Artifact | KNU ID |
|-------------------|-----------------|--------|
| REQ-MLCB-001 to 004 | ML Certification Plan | KNU-95-00-001-PLAN-001 |
| REQ-MLCB-010 to 014 | DAL Justification Documents | (Per application) |
| REQ-MLCB-030 to 036 | Learning Assurance Plan | KNU-95-00-002-PLAN-001 |
| REQ-MLCB-033 | Data Management Plan | KNU-95-00-003-PLAN-001 |
| REQ-MLCB-034 | ML V&V Plan | KNU-95-00-004-PLAN-001 |
| REQ-MLCB-035 | Runtime Monitor Architecture | KNU-95-00-005-ICD-001 |
| REQ-MLCB-036 | Explainability Requirements | KNU-95-00-006-REQ-001 |

---

## 7. Open Items and TBDs

| ID | Description | Owner | Target Date | Status |
|----|-------------|-------|-------------|--------|
| TBD-001 | Determine SC requirement for ML-APP-002 Energy Mgmt | STK_CERT | 2026-03-31 | OPEN |
| TBD-002 | Define false positive rate limit for ML-APP-003 | STK_AI | 2026-04-15 | OPEN |
| TBD-003 | Define missed detection rate limit for ML-APP-003 | STK_AI | 2026-04-15 | OPEN |
| TBD-004 | Confirm FAA IP numbering and submission timeline | STK_CERT | 2026-03-15 | OPEN |
| TBD-005 | Define explainability levels per DAL (quantitative) | STK_AI | 2026-04-30 | OPEN |
| TBD-006 | Finalize ML application registry (confirm App IDs) | STK_SE | 2026-02-28 | OPEN |

---

## 8. Revision History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| I01-R01 | 2026-01-11 | STK_CERT | Initial draft — certification basis requirements |

---

## 9. Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Author (STK_CERT) | | | |
| Reviewer (STK_AI) | | | |
| Reviewer (STK_SAF) | | | |
| Approver (STK_CERT Lead) | | | |

---

*This document is part of the AMPEL360 Q100 SSOT baseline under LC02_SYSTEM_REQUIREMENTS.*

*Generated as KNU artifact for KNOT-95-00-001 (ML Certification Strategy).*
```
