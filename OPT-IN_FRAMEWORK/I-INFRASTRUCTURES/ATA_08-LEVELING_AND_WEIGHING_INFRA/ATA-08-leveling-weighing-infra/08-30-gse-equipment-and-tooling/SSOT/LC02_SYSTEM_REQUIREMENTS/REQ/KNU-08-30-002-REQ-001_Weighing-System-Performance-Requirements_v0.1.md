---
# ═══════════════════════════════════════════════════════════════════════════════
# KNU ARTIFACT METADATA
# ═══════════════════════════════════════════════════════════════════════════════
knu_id: "KNU-08-30-002-REQ-001"
knot_id: "KNOT-08-30-002"
title: "Weighing System Performance Requirements"
knu_type: "REQ"
artifact_class: "SSOT"
lifecycle_category: "LC02"
rec:  "LC02"
ata_reference: "08-30"
ata_address: "ATA-08-30-00-00"
expected_location: "../LC02_SYSTEM_REQUIREMENTS/"
status: "DRAFT"
version: "I01-R01"
priority: "HIGH"

# Ownership & Governance
owner_aor: "STK_GSE"
contributors:
  - "STK_SE"
  - "STK_SAF"
  - "STK_OPS"
  - "STK_DATA"
reviewers:
  - "STK_SE"
  - "STK_SAF"
approved_by: null
approval_date: null

# Dates
created_date:  "2026-01-11"
due_date: "2026-03-15"
last_updated: "2026-01-11"

# Acceptance & Verification
acceptance_criteria:  "Requirements cover load cell accuracy, environmental range, calibration traceability; reviewed by STK_SE and STK_SAF; traceable to CS-25. 23/25/27/29 and AC 120-27F"
verification_method: "Review"
effort_predicted: 10

# Metrics
requirements_count: 44
tbd_count: 3

# Traceability
parent_requirements: 
  - "AMPEL360-MP-001"  # Mass Properties Specification
  - "AC 120-27F"       # Aircraft Weight and Balance Control
child_requirements:  []
related_knots: 
  - "KNOT-08-30-001"  # Jack Point Location
  - "KNOT-08-30-003"  # LH₂ Compensation Algorithms
  - "KNOT-08-30-005"  # Digital Interface Protocols
  - "KNOT-08-30-006"  # Safety Interlock
related_knus:
  - "KNU-08-30-001-REQ-001"  # Jack Point Requirements
  - "KNU-08-30-002-ANA-001"  # Uncertainty Analysis (downstream)
  - "KNU-08-30-002-TEST-001" # Load Cell ATP (downstream)
  - "KNU-08-30-005-ICD-001"  # GSE-to-DPP ICD (downstream)
ata_traces:
  - "ATA-08"   # Leveling and Weighing
  - "ATA-28"   # Fuel (LH₂ considerations)

# Standards Compliance
regulatory_references:
  - "CS-25.23"   # Load Distribution Limits
  - "CS-25.25"   # Weight Limits
  - "CS-25.27"   # Center of Gravity Limits
  - "CS-25.29"   # Empty Weight and Corresponding CG
  - "AC 120-27F" # Aircraft Weight and Balance Control
industry_standards:
  - "OIML R76"      # Non-automatic Weighing Instruments
  - "ISO 376"       # Calibration of Force-proving Instruments
  - "EURAMET cg-18" # Calibration Guidelines
  - "ASTM E74"      # Force-Measuring Instruments
  - "EN 61326-1"    # EMC for Industrial Environments
  - "IEC 61010-1"   # Safety of Measurement Equipment

# Document Control
classification: "INTERNAL"
export_control: "NONE"
canonical_hash: null
---

# Weighing System Performance Requirements

**KNU ID:** KNU-08-30-002-REQ-001  
**KNOT:** KNOT-08-30-002  
**ATA Reference:** 08-30 (GSE Equipment and Tooling)  
**ATA Address:** ATA-08-30-00-00  
**Status:** DRAFT  
**Version:** I01-R01  
**Priority:** HIGH  

---

## 1. Purpose and Scope

### 1.1 Purpose

This document defines the performance requirements for Ground Support Equipment (GSE) weighing systems used to determine aircraft mass and center of gravity (CG) for the AMPEL360 Q100 BWB hydrogen-hybrid electric aircraft.

### 1.2 Scope

#### 1.2.1 In-Scope

| Domain | Coverage |
|--------|----------|
| Load cell performance | Accuracy, repeatability, hysteresis, creep |
| Weighing platforms | Height, portability, mechanical ratings |
| Data acquisition | Resolution, sampling rate, interfaces |
| Environment | Operating/storage temperature, humidity, altitude |
| Accuracy & uncertainty | Error budgets, CG impact analysis |
| Calibration | Intervals, traceability, verification |

#### 1.2.2 Out-of-Scope

| Item | Reference |
|------|-----------|
| On-board weighing systems | ATA 08-10 |
| LH₂ compensation algorithms | KNOT-08-30-003 |
| Digital interface protocols | KNOT-08-30-005 |
| Facility infrastructure | 08-50 |

---

## 2. Applicable Documents

### 2.1 Regulatory

| Document | Title | Relationship |
|----------|-------|--------------|
| CS-25.23 | Load Distribution Limits | Regulatory basis |
| CS-25.25 | Weight Limits | Regulatory basis |
| CS-25.27 | Center of Gravity Limits | Regulatory basis |
| CS-25.29 | Empty Weight and Corresponding CG | Regulatory basis |
| AC 120-27F | Aircraft Weight and Balance Control | Advisory guidance |

### 2.2 Industry Standards

| Document | Title | Relationship |
|----------|-------|--------------|
| OIML R76 | Non-automatic Weighing Instruments | Accuracy classification |
| ISO 376 | Metallic Materials — Calibration of Force-proving Instruments | Calibration standard |
| EURAMET cg-18 | Guidelines on the Calibration of Non-Automatic Weighing Instruments | Calibration guidelines |
| ASTM E74 | Standard Practices for Calibration and Verification of Force-Measuring Instruments | Verification practices |
| EN 61326-1 | EMC for Industrial Environments | EMC compliance |
| IEC 61010-1 | Safety of Measurement Equipment | Electrical safety |

### 2.3 Program Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| AMPEL360-MP-001 | Aircraft Mass Properties Specification | Parent specification |
| AMPEL360-ICD-08-30-001 | Jack-to-Airframe Interface Control Document | Interface definition |
| KNOT-08-30-002 | Load Cell Range and Accuracy Problem Statement | Problem definition |

---

## 3. Definitions and Abbreviations

| Term | Definition |
|------|------------|
| CG | Center of Gravity |
| DOW | Dry Operating Weight |
| LH₂ | Liquid Hydrogen |
| MAC | Mean Aerodynamic Chord |
| MPE | Maximum Permissible Error |
| MTOW | Maximum Takeoff Weight |
| MZF | Maximum Zero Fuel Weight |
| OEW | Operating Empty Weight |
| ZFW | Zero Fuel Weight |
| RSS | Root Sum of Squares |

---

## 4. Requirements

### 4.1 Mass Range Requirements

#### REQ-WSP-001: Individual Jack Point Load Range

**Requirement:** The weighing system shall measure individual jack point loads from 5,000 kg to 35,000 kg. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Accommodates load distribution across 4 jack points for aircraft mass range |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | AMPEL360-MP-001 §3.2 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-002: Total Aircraft Mass Range

**Requirement:** The weighing system shall support total aircraft mass measurement from 25,000 kg (ferry configuration) to 85,000 kg (MTOW).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Covers full operational mass envelope per AMPEL360-MP-001 |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | AMPEL360-MP-001 §3.2, CS-25.25 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-003: LH₂ Fuel Mass Accommodation

**Requirement:** The weighing system shall accommodate LH₂ fuel mass variations from 0 kg to 3,500 kg.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Maximum LH₂ capacity per tank design |
| **Verification** | Analysis |
| **Priority** | MUST |
| **Trace To** | AMPEL360-MP-001 §4.1, ATA 28 |
| **Allocated To** | STK_GSE |

---

### 4.2 Accuracy Requirements

#### REQ-WSP-010: Individual Load Cell Accuracy

**Requirement:** Individual load cell accuracy shall be ±0.03% of applied load or ±15 kg, whichever is greater.

| Attribute | Value |
|-----------|-------|
| **Rationale** | OIML R76 Class III accuracy for aircraft weighing |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | OIML R76, AC 120-27F §7 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-011: Total Aircraft Mass Accuracy

**Requirement:** Total aircraft mass accuracy shall be ±0.05% of measured mass or ±30 kg, whichever is greater. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports CG determination within certification limits |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | CS-25.27, CS-25.29, AC 120-27F |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-012: Repeatability

**Requirement:** Repeatability shall be ≤0.02% of applied load across 10 consecutive measurements.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Ensures consistent results for certification evidence |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | OIML R76 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-013: Reproducibility

**Requirement:** Reproducibility shall be ≤0.05% of applied load across different environmental conditions within operating range.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Accounts for temperature and humidity variations |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | OIML R76, EURAMET cg-18 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-014: Load Cell Hysteresis

**Requirement:** Load cell hysteresis shall be ≤0.02% of rated capacity.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Minimizes loading/unloading measurement differences |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | ISO 376 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-015: Load Cell Creep

**Requirement:** Load cell creep shall be ≤0.02% of applied load over 30 minutes at constant load.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Ensures stability during extended weighing operations |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | ISO 376 |
| **Allocated To** | STK_GSE |

---

### 4.3 Resolution Requirements

#### REQ-WSP-020: Display Resolution

**Requirement:** Display resolution shall be 1 kg for individual jack point readings. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Provides sufficient granularity for CG calculations |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | OIML R76 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-021: Internal Resolution

**Requirement:** Internal resolution shall be ≤0.5 kg (minimum 65,000 divisions across range).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports accuracy requirements with margin |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | OIML R76 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-022: A/D Converter Resolution

**Requirement:** A/D converter resolution shall be minimum 24-bit. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Industry standard for precision weighing applications |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Industry best practice |
| **Allocated To** | STK_GSE |

---

### 4.4 Environmental Requirements

#### REQ-WSP-030: Operating Temperature Range

**Requirement:** The weighing system shall operate within specified accuracy at ambient temperatures from -10°C to +45°C.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Covers typical hangar and apron conditions |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | AMPEL360-OPS-001 §5.1 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-031: Storage Temperature Range

**Requirement:** The weighing system shall survive storage temperatures from -40°C to +70°C without degradation.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Addresses transport and storage conditions |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Industry practice |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-032: Humidity Range

**Requirement:** The weighing system shall operate within specified accuracy at relative humidity from 10% to 95% non-condensing. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Covers typical operational humidity range |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | AMPEL360-OPS-001 §5.1 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-033: Temperature Coefficient

**Requirement:** Temperature coefficient of sensitivity shall be ≤0.001% of applied load per °C.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Limits temperature-induced measurement drift |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | ISO 376 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-034: Ingress Protection

**Requirement:** The weighing system shall be rated IP65 minimum for dust and water ingress protection.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Protects against hangar and apron environment |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | IEC 60529 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-035: Altitude Range

**Requirement:** The weighing system shall operate within specification at altitudes from sea level to 3,000 m. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Covers major airport elevations globally |
| **Verification** | Analysis |
| **Priority** | MUST |
| **Trace To** | Operational requirement |
| **Allocated To** | STK_GSE |

---

### 4.5 Electrical Requirements

#### REQ-WSP-040:  Mains Power Compatibility

**Requirement:** The weighing system shall operate from 100-240 VAC, 50/60 Hz mains power.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Universal compatibility for global deployment |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Operational requirement |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-041: Battery Backup

**Requirement:** The weighing system shall include battery backup providing minimum 4 hours of operation. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports outdoor operations without mains power |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Operational requirement |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-042: Load Cell Excitation

**Requirement:** Load cell excitation voltage shall be 10 VDC ±0.1%. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Standard excitation for precision strain gauge sensors |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Industry standard |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-043: EMC Compliance

**Requirement:** The weighing system shall comply with EMC requirements per EN 61326-1 for industrial environments.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Ensures immunity to electrical noise in hangar environment |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | EN 61326-1 |
| **Allocated To** | STK_GSE |

---

### 4.6 Mechanical Requirements

#### REQ-WSP-050: Load Cell Rated Capacity

**Requirement:** Load cells shall have rated capacity of 50,000 kg each with 150% safe overload. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Provides margin for asymmetric loading conditions |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Safety margin requirement |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-051: Platform Height

**Requirement:** Weighing platform height shall not exceed 100 mm to minimize aircraft jacking height.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Reduces jacking complexity and time |
| **Verification** | Inspection |
| **Priority** | SHOULD |
| **Trace To** | Operational efficiency |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-052: Transportability

**Requirement:** Each weighing unit shall be transportable by two persons (≤40 kg per unit).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Enables practical deployment without lifting equipment |
| **Verification** | Inspection |
| **Priority** | SHOULD |
| **Trace To** | Human factors |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-053: Fatigue Life

**Requirement:** Load cell rated fatigue life shall be minimum 10⁶ cycles at rated capacity.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports 20-year service life with typical usage |
| **Verification** | Analysis |
| **Priority** | MUST |
| **Trace To** | Lifecycle requirement |
| **Allocated To** | STK_GSE |

---

### 4.7 Interface Requirements

#### REQ-WSP-060: RS-485 Interface

**Requirement:** The weighing system shall provide RS-485 digital output for data acquisition. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Standard industrial interface for data logging |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | Industry standard |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-061: Ethernet Interface

**Requirement:** The weighing system shall provide Ethernet (RJ-45) connectivity for network integration.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Enables integration with facility systems and DPP |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | KNOT-08-30-005 |
| **Allocated To** | STK_GSE, STK_DATA |

---

#### REQ-WSP-062: Data Output Rate

**Requirement:** Data output rate shall be minimum 10 Hz for dynamic load monitoring.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports load stabilization detection algorithms |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Functional requirement |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-063: SI Units Output

**Requirement:** The weighing system shall output data in SI units (kg) with configurable display units.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Standardization per international requirements |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | International standards |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-064: Analog Output (Optional)

**Requirement:** The weighing system shall provide analog 4-20 mA output proportional to load (optional).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Legacy interface compatibility |
| **Verification** | Inspection |
| **Priority** | COULD |
| **Trace To** | Legacy systems |
| **Allocated To** | STK_GSE |

---

### 4.8 Calibration Requirements

#### REQ-WSP-070: Calibration Interval

**Requirement:** Calibration interval shall not exceed 12 months.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Industry standard for certified weighing equipment |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | AC 120-27F §7 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-071: Calibration Traceability

**Requirement:** Calibration shall be traceable to national standards (NIST, PTB, NPL, or equivalent).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Regulatory requirement for certification evidence |
| **Verification** | Review |
| **Priority** | MUST |
| **Trace To** | AC 120-27F §7, ISO 376 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-072: Field Verification

**Requirement:** The weighing system shall support field verification using certified test weights.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Enables pre-use verification at operational sites |
| **Verification** | Demonstration |
| **Priority** | MUST |
| **Trace To** | AC 120-27F §7, EURAMET cg-18 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-073: Digital Calibration Export

**Requirement:** Calibration data shall be exportable in digital format with tamper-evident signatures.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports DPP integration and audit trail |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | KNOT-08-30-005 |
| **Allocated To** | STK_GSE, STK_DATA |

---

#### REQ-WSP-074: Calibration Record Storage

**Requirement:** The weighing system shall store minimum 100 calibration records internally.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Maintains calibration history for traceability |
| **Verification** | Inspection |
| **Priority** | SHOULD |
| **Trace To** | Data integrity |
| **Allocated To** | STK_GSE |

---

### 4.9 Safety Requirements

#### REQ-WSP-080:  Overload Indication

**Requirement:** The weighing system shall provide visual indication of overload condition at 105% of rated capacity. 

| Attribute | Value |
|-----------|-------|
| **Rationale** | Warns operator before damage threshold |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Safety requirement |
| **Allocated To** | STK_GSE, STK_SAF |

---

#### REQ-WSP-081: Overload Interlock Output

**Requirement:** The weighing system shall provide output signal for external interlock systems indicating overload.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Integration with jack safety systems per KNOT-08-30-006 |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | KNOT-08-30-006 |
| **Allocated To** | STK_GSE, STK_SAF |

---

#### REQ-WSP-082: Electrical Safety

**Requirement:** Electrical safety shall comply with IEC 61010-1 for measurement equipment.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Regulatory compliance for operator safety |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | IEC 61010-1 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-083: Fault Indication

**Requirement:** The weighing system shall indicate fault conditions (sensor failure, out-of-range, communication loss).

| Attribute | Value |
|-----------|-------|
| **Rationale** | Prevents use of erroneous data |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Data integrity |
| **Allocated To** | STK_GSE |

---

### 4.10 Data Integrity Requirements

#### REQ-WSP-090:  Timestamp Accuracy

**Requirement:** Weighing records shall include timestamp with ±1 second accuracy synchronized to UTC.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Enables correlation with other data sources |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Data traceability |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-091: Equipment Identification

**Requirement:** Weighing records shall include unique equipment identifier and calibration status.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Traceability for certification evidence |
| **Verification** | Inspection |
| **Priority** | MUST |
| **Trace To** | AC 120-27F §7 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-092: Uncertainty Recording

**Requirement:** The weighing system shall calculate and store measurement uncertainty with each record.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Supports uncertainty budget for CG determination |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | EURAMET cg-18 |
| **Allocated To** | STK_GSE |

---

#### REQ-WSP-093: Data Protection

**Requirement:** Stored data shall be protected against unauthorized modification.

| Attribute | Value |
|-----------|-------|
| **Rationale** | Data integrity for regulatory compliance |
| **Verification** | Test |
| **Priority** | MUST |
| **Trace To** | Data governance |
| **Allocated To** | STK_GSE, STK_DATA |

---

## 5. Performance Budget

### 5.1 Uncertainty Allocation

| Source | Contribution (1σ) | Notes |
|--------|-------------------|-------|
| Load cell accuracy | ±0.015% | Dominant contributor |
| Temperature effects | ±0.010% | Compensated range |
| Resolution | ±0.002% | Negligible |
| Repeatability | ±0.010% | Environmental variation |
| Calibration uncertainty | ±0.010% | Traceable standards |
| **Combined (RSS)** | **±0.024%** | Root sum of squares |
| **Expanded (k=2)** | **±0.048%** | 95% confidence level |

### 5.2 CG Impact Analysis

| Aircraft Mass | Mass Uncertainty (±) | CG Uncertainty (±%MAC) | Compliance |
|---------------|----------------------|------------------------|------------|
| 25,000 kg (min) | ±12 kg | ±0.08% | ✓ |
| 55,000 kg (typical) | ±26 kg | ±0.05% | ✓ |
| 85,000 kg (MTOW) | ±41 kg | ±0.04% | ✓ |

**Assessment:** CG uncertainty contribution from weighing system is within acceptable limits for certification per CS-25.27.

---

## 6. Verification Matrix

| Req ID      | Review | Inspection | Analysis | Test | Demonstration |
| ----------- | :----: | :--------: | :------: | :--: | :-----------: |
| REQ-WSP-001 |        |            |          |   ✓  |               |
| REQ-WSP-002 |        |            |          |   ✓  |               |
| REQ-WSP-003 |        |            |     ✓    |      |               |
| REQ-WSP-010 |        |            |          |   ✓  |               |
| REQ-WSP-011 |        |            |          |   ✓  |               |
| REQ-WSP-012 |        |            |          |   ✓  |               |
| REQ-WSP-013 |        |            |          |   ✓  |               |
| REQ-WSP-014 |        |            |          |   ✓  |               |
| REQ-WSP-015 |        |            |          |   ✓  |               |
| REQ-WSP-020 |        |      ✓     |          |      |               |
| REQ-WSP-021 |        |      ✓     |          |      |               |
| REQ-WSP-022 |        |      ✓     |          |      |               |
| REQ-WSP-030 |        |            |          |   ✓  |               |
| REQ-WSP-031 |        |            |          |   ✓  |               |
| REQ-WSP-032 |        |            |          |   ✓  |               |
| REQ-WSP-033 |        |            |          |   ✓  |               |
| REQ-WSP-034 |        |      ✓     |          |      |               |
| REQ-WSP-035 |        |            |     ✓    |      |               |
| REQ-WSP-040 |        |            |          |   ✓  |               |
| REQ-WSP-041 |        |            |          |   ✓  |               |
| REQ-WSP-042 |        |      ✓     |          |      |               |
| REQ-WSP-043 |        |            |          |   ✓  |               |
| REQ-WSP-050 |        |      ✓     |          |      |               |
| REQ-WSP-051 |        |      ✓     |          |      |               |
| REQ-WSP-052 |        |      ✓     |          |      |               |
| REQ-WSP-053 |        |            |     ✓    |      |               |
| REQ-WSP-060 |        |      ✓     |          |      |               |
| REQ-WSP-061 |        |      ✓     |          |      |               |
| REQ-WSP-062 |        |            |          |   ✓  |               |
| REQ-WSP-063 |        |      ✓     |          |      |               |
| REQ-WSP-064 |        |      ✓     |          |      |               |
| REQ-WSP-070 |        |      ✓     |          |      |               |
| REQ-WSP-071 |    ✓   |            |          |      |               |
| REQ-WSP-072 |        |            |          |      |       ✓       |
| REQ-WSP-073 |        |            |          |   ✓  |               |
| REQ-WSP-074 |        |      ✓     |          |      |               |
| REQ-WSP-080 |        |            |          |   ✓  |               |
| REQ-WSP-081 |        |            |          |   ✓  |               |
| REQ-WSP-082 |        |      ✓     |          |      |               |
| REQ-WSP-083 |        |            |          |   ✓  |               |
| REQ-WSP-090 |        |            |          |   ✓  |               |
| REQ-WSP-091 |        |      ✓     |          |      |               |
| REQ-WSP-092 |        |            |          |   ✓  |               |
| REQ-WSP-093 |        |            |          |   ✓  |               |


**Summary:** 44 requirements | Review: 1 | Inspection: 17 | Analysis: 4 | Test: 21 | Demonstration:  1

---

## 7. Traceability

### 7.1 Upstream Traceability

| Requirement Group | Source Document | Section |
|-------------------|-----------------|---------|
| REQ-WSP-001 to REQ-WSP-003 | AMPEL360-MP-001 | §3.2 Mass Envelope |
| REQ-WSP-010 to REQ-WSP-015 | KNOT-08-30-002 | Problem Statement |
| REQ-WSP-010 to REQ-WSP-015 | OIML R76 | Accuracy classes |
| REQ-WSP-030 to REQ-WSP-035 | AMPEL360-OPS-001 | §5.1 Ground Operations Environment |
| REQ-WSP-070 to REQ-WSP-074 | AC 120-27F | §7 Weighing Equipment |

### 7.2 Downstream Traceability

| Requirement Group | Target Artifact | KNU ID |
|-------------------|-----------------|--------|
| REQ-WSP-010 to REQ-WSP-015 | Uncertainty Analysis | KNU-08-30-002-ANA-001 |
| REQ-WSP-060 to REQ-WSP-064 | GSE-to-DPP ICD | KNU-08-30-005-ICD-001 |
| REQ-WSP-080 to REQ-WSP-081 | Safety Interlock Requirements | KNU-08-30-006-REQ-001 |
| All REQ-WSP-0xx | Load Cell ATP | KNU-08-30-002-TEST-001 |

---

## 8. Open Items and TBDs

| ID | Description | Owner | Target Date | Status |
|----|-------------|-------|-------------|--------|
| OI-001 | Confirm MTOW value with mass properties team | STK_SE | 2026-02-01 | OPEN |
| OI-002 | Validate temperature range with operations stakeholders | STK_OPS | 2026-02-01 | OPEN |
| OI-003 | Coordinate interface requirements with DPP team | STK_DATA | 2026-02-15 | OPEN |

---

## 9. Revision History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 0.1 | 2026-01-11 | STK_GSE | Initial draft |
| I01-R01 | 2026-01-11 | STK_GSE | Converted to KNU artifact format with YAML metadata |

---

## 10.  Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Author (STK_GSE) | | | |
| Reviewer (STK_SE) | | | |
| Reviewer (STK_SAF) | | | |
| Approver (STK_CERT) | | | |

---

*This document is part of the AMPEL360 Q100 SSOT baseline under LC02_SYSTEM_REQUIREMENTS.*

*Generated as KNU artifact for KNOT-08-30-002.*
