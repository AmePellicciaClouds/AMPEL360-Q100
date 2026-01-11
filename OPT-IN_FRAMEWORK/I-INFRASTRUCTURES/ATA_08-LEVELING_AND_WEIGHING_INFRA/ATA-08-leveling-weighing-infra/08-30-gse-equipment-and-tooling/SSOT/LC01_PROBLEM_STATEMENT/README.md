# LC01 — Problem Statement: GSE Equipment and Tooling
**ATA Address:** ATA-08-30-00-00  
**ATA Reference:** 08-30 (Infrastructure)  
**OPT-IN Axis:** I-INFRASTRUCTURES  
**Parent System:** ATA 08 — Leveling and Weighing  
**Scope:** Ground Support Equipment (GSE) for aircraft leveling and weighing operations

---

## 1. Overview

This LC01 node orchestrates uncertainty resolution for **Ground Support Equipment (GSE) and Tooling** required to support leveling and weighing operations on the AMPEL360 Q100 BWB hydrogen-hybrid aircraft.

The BWB configuration and hydrogen propulsion architecture introduce unique GSE requirements:

| Challenge | Impact on GSE |
|-----------|---------------|
| **BWB Geometry** | Non-conventional jack point locations; wider stance requirements |
| **Composite Airframe** | Load distribution sensitivity; specialized adapters required |
| **LH₂ Tank Mass Variation** | Extended weighing range; fuel state compensation algorithms |
| **CG Envelope** | Tighter tolerances due to BWB stability characteristics |
| **Certification Novelty** | GSE must support novel type certificate evidence collection |

---

## 2. Scope Definition

### 2.1 In-Scope
- Aircraft jacks and jack adapters (main gear, nose gear, wing)
- Electronic load cells and weighing platforms
- Leveling equipment (optical, laser, digital inclinometers)
- Jack control units and safety interlock systems
- Calibration standards and traceability artifacts
- Digital data acquisition and export interfaces
- Operator training equipment and simulators
- Tooling storage, transport, and lifecycle management

### 2.2 Out-of-Scope
- On-board weighing systems (see ATA 08-10)
- Airframe structural provisions for jacking (see ATA 53/57)
- Facility civil works and utilities (see 08-50)
- Metrology laboratory equipment (see 08-40)

---

## 3. Assumptions & Constraints (LC01)
- GSE must support development, test, certification evidence capture, and operational use cases (MRO).
- Initial KNOT residuals start at 100 unless justified otherwise.
- Target residual default is ≤15 unless risk/novelty requires a different target per KNOT.
- SSOT artifacts are authoritative; PUB artifacts (S1000D) are derived and validated under BREX.
- Any safety interlock affecting aircraft/ground safety must be traceable to LC03 hazards and LC06 verification evidence.

---

## 4. KNOT Register Summary

| KNOT ID | Title | Status | Residual (Current) | Target |
|---------|-------|--------|--------------------|--------|
| KNOT-08-30-001 | BWB Jack Point Configuration | OPEN | 100 | 20 |
| KNOT-08-30-002 | Load Cell Range & Accuracy | OPEN | 100 | 15 |
| KNOT-08-30-003 | LH₂ State Compensation Algorithm | OPEN | 100 | 15 |
| KNOT-08-30-004 | Composite Adapter Materials | OPEN | 100 | 20 |
| KNOT-08-30-005 | Digital Integration Protocol | OPEN | 100 | 15 |
| KNOT-08-30-006 | Safety Interlock Architecture | OPEN | 100 | 15 |

See `KNOTS.csv` for the complete register and closure criteria.

---

## 5. Closure Criteria

A KNOT in this LC01 node is **CLOSED** when:
1. ✅ All planned KNUs reach `COMPLETE` or `ACCEPTED`
2. ✅ Residual uncertainty drops to or below target
3. ✅ All PUB artifacts (if any) pass BREX validation
4. ✅ All trace links resolve (SSOT ↔ PUB, KNU → artifact)
5. ✅ Stakeholder signoffs captured in evidence pack
6. ✅ TT rewards distributed and logged to `AWARDS_TT.csv`

### Node-Level Closure
The entire 08-30 LC01 node closes when:
- All 6 KNOTs reach CLOSED status
- Cross-KNOT dependencies resolved
- Consolidated evidence pack approved by STK_GSE and STK_CERT
- TT pools fully distributed

---

## 6. Key Stakeholders

| AoR Code | Role | Responsibility |
|----------|------|----------------|
| STK_GSE | GSE Engineering Lead | Technical ownership of GSE specifications |
| STK_SE | Systems Engineering | Integration with aircraft systems |
| STK_SAF | Safety Engineering | Hazard analysis, interlock requirements |
| STK_CERT | Certification | Compliance evidence, authority liaison |
| STK_MRO | MRO Operations | Operational feedback, maintainability |
| STK_TEST | Test Engineering | Validation procedures, acceptance tests |
| STK_DATA | Data Architecture | Digital interfaces, data standards |
| STK_CM | Configuration Management | Baseline control, change management |

---

## 7. Dependencies

### Upstream (This node depends on)
| Source | Dependency | Type |
|--------|------------|------|
| ATA 53-xx | Fuselage jack point structural provisions | BLOCKING |
| ATA 57-xx | Wing jack point structural provisions | BLOCKING |
| ATA 32-xx | Landing gear interface geometry | BLOCKING |
| LC04 | Aircraft mass properties baseline | INFORMING/BLOCKING (weighing method) |
| LC03 | GSE-related hazard identification | BLOCKING (interlocks) |

### Downstream (Depends on this node)
| Target | Dependency |
|--------|------------|
| ATA 08-10 | On-board weighing system integration |
| ATA 08-40 | Metrology calibration requirements |
| ATA 08-80 | Digital traceability data schemas |
| LC09 | GSE procurement specifications |
| LC11 | GSE maintenance program inputs |

---

## 8. Tokenomics Summary

| Parameter | Value |
|-----------|-------|
| **Total Pool (this node)** | 600 TT |
| **Per-KNOT Allocation** | 100 TT each |
| **Effort Weight (α)** | 0.30 |
| **Impact Weight (1-α)** | 0.70 |
| **Spillover Multiplier (λ)** | 0.50 |

See `TOKENOMICS_TT.yaml` for detailed configuration.

---

## 9. File Inventory

| File | Purpose |
|------|---------|
| `README.md` | This overview document |
| `KNOTS.csv` | Uncertainty register |
| `KNU_PLAN.csv` | Expected Knowledge Units per KNOT |
| `TIMELINE.csv` | Milestones and target dates |
| `RACI.csv` | Stakeholder responsibility matrix |
| `TOKENOMICS_TT.yaml` | TT reward pool configuration |
| `AWARDS_TT.csv` | Distribution ledger (populated at closure) |

---

## 10. Revision History

| Date | Author | Change |
|------|--------|--------|
| 2026-01-11 | AMPEL360 Baseline Architect | Initial scaffold creation |
