# N-NEURAL_NETWORKS

**DPP, Traceability, Governance (ATA 96, 98)**

This axis of the OPT-IN Framework covers **governance and traceability** for the AMPEL360 Q100 aircraft — Digital Product Passport, lifecycle traceability, ledger systems, and AI artifact compliance.

> **Governance Note:** ATA 96 and 98 are internal ATA-like chapters for N-AXIS (governance + ledger). They do not replace canonical ATA iSpec2200 chapters.

> **Note:** ATA 95 (AI/ML Models) and ATA 97 (Synthetic Data Validation) have been moved to **I2-INTELLIGENCE** axis (T-TECHNOLOGIES) as they are operational/runtime artifacts.

---

## Operational Rule

> **N-NEURAL_NETWORKS (transversal axis)**: *"lo que gobierna y da trazabilidad"* → DPP/ledger, data/model governance, auditing, export packs, evidence, AI artifact compliance.

If the artifact is **identifiers, ledger, DPP, auditing, evidence, export contracts** → place in **N-NEURAL_NETWORKS**.

For **model/validation/deployment/monitoring** → see **I2-INTELLIGENCE** (T-TECHNOLOGIES axis).

---

## ATA Chapters in This Axis

| Chapter | System | Description |
|---------|--------|-------------|
| ATA 96 | Traceability/DPP Ledger | Digital Product Passport and lifecycle traceability |
| ATA 98 | Reserved Program Slot | Reserved for future program-specific governance extensions |

---

## Structure

```
N-NEURAL_NETWORKS/
├── README.md
├── 00_INDEX.md
│
├── ATA_96-TRACEABILITY_DPP_LEDGER/
│   └── ATA-96-traceability-dpp-ledger/
│       ├── 96-00-general/
│       ├── 96-10-identifier-grammar-namespaces/
│       ├── 96-20-schema-registry-and-canonical-models/
│       ├── 96-30-ledger-anchoring-hash-chain/
│       ├── 96-40-dpp-sbom-and-config-effectivity/
│       ├── 96-50-audit-evidence-packs-and-signoffs/
│       ├── 96-60-export-publishing-contracts/
│       ├── 96-70-governance-policies-and-rules/
│       ├── 96-80-security-privacy-and-access-control/
│       └── 96-90-tables-schemas-index/
│
└── ATA_98-RESERVED_PROGRAM_SLOT/
    └── ATA-98-program-slot/
        ├── 98-00-general/
        ├── 98-10-reserved-as-required/
        ├── 98-20-reserved-as-required/
        ├── 98-30-reserved-as-required/
        ├── 98-40-reserved-as-required/
        ├── 98-50-reserved-as-required/
        ├── 98-60-reserved-as-required/
        ├── 98-70-reserved-as-required/
        ├── 98-80-reserved-as-required/
        └── 98-90-tables-schemas-index/
```

---

## Content Pattern

Each sub-subject follows the canonical SSOT + PUB pattern:

```
xx-yy-zz-<sub-subject>/
├── SSOT/
│   ├── LC01_PROBLEM_STATEMENT/
│   ├── LC02_SYSTEM_REQUIREMENTS/
│   ├── LC03_SAFETY_RELIABILITY/
│   ├── ... 
│   └── LC14_RETIREMENT_CIRCULARITY/
│
└── PUB/
    └── <SUB_ID>/
        ├── CSDB/
        ├── EXPORT/
        └── IETP/
```

---

## Related Documentation

- [OPT-IN Framework Standard](../../OPT-IN_FRAMEWORK_STANDARD.md)
- [I2-INTELLIGENCE — Onboard AI/ML](../T-TECHNOLOGIES_AMEDEOPELLICCIA-ON_BOARD_SYSTEMS/I2-INTELLIGENCE/)
- [AI→ASI Transition Proposal](../../AI-ASI-TP.md)
- [Digital Twin Control Loop](../../DIGITAL_TWIN_CONTROL_LOOP.md)

---

<p align="center">
  <em>AMPEL360 Q100 — N-NEURAL_NETWORKS Axis</em>
</p>
