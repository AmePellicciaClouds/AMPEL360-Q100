# I2-INTELLIGENCE

**Onboard AI/ML Intelligence (ATA 95, 97)**

This axis of the OPT-IN Framework covers **onboard intelligence assets** for the AMPEL360 Q100 aircraft — models, validation, deployment, monitoring, and runtime interfaces.

> **Governance Note:** ATA 95 and 97 are internal ATA-like chapters for I2-INTELLIGENCE (onboard AI/ML). They represent *"what flies and decides"* — operational model lifecycle and runtime.

---

## ATA Chapters in This Axis

| Chapter | System | Description |
|---------|--------|-------------|
| ATA 95 | AI/ML Models | Machine learning models for predictive maintenance, optimization, and decision support — model lifecycle + runtime |
| ATA 97 | Synthetic Data Validation | Synthetic data generation and validation for model training and V&V |

---

## Operational Rule

> **I2-INTELLIGENCE (T-TECHNOLOGIES / onboard)**: *"lo que vuela y decide"* → models, validation, deployment, monitoring, runtime interfaces.

If the artifact is **model/validation/deployment/monitoring** → place in **I2-INTELLIGENCE**.

For **identifiers, ledger, DPP, auditing, evidence, export contracts** → see **N-NEURAL_NETWORKS** (governance + ledger axis).

---

## Structure

```
I2-INTELLIGENCE/
├── README.md
├── 00_INDEX.md
├── 00-00-general/
│
├── ATA_95-AI_ML_MODELS/
│   └── ATA-95-ai-ml-models/
│       ├── 95-00-general/
│       ├── 95-10-model-requirements-and-safety-intent/
│       ├── 95-20-training-and-tuning/
│       ├── 95-30-verification-and-validation/
│       ├── 95-40-deployment-runtime-and-inference/
│       ├── 95-50-monitoring-drift-and-health/
│       ├── 95-60-data-interfaces-and-buses/
│       ├── 95-70-toolchain-ci-and-reproducibility/
│       ├── 95-80-reserved-as-required/
│       └── 95-90-tables-schemas-index/
│
└── ATA_97-SYNTHETIC_DATA_VALIDATION/
    └── ATA-97-synthetic-data-validation/
        ├── 97-00-general/
        ├── 97-10-synthetic-data-generation/
        ├── 97-20-scenario-coverage-and-edge-cases/
        ├── 97-30-labeling-truth-and-oracles/
        ├── 97-40-quality-metrics-and-bias-checks/
        ├── 97-50-validation-protocols-and-evidence/
        ├── 97-60-data-packaging-and-release/
        ├── 97-70-tooling-automation-ci/
        ├── 97-80-reserved-as-required/
        └── 97-90-tables-schemas-index/
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

- [OPT-IN Framework Standard](../../../OPT-IN_FRAMEWORK_STANDARD.md)
- [N-NEURAL_NETWORKS — Governance + Ledger](../../N-NEURAL_NETWORKS/)
- [AI→ASI Transition Proposal](../../../AI-ASI-TP.md)
- [Digital Twin Control Loop](../../../DIGITAL_TWIN_CONTROL_LOOP.md)

---

<p align="center">
  <em>AMPEL360 Q100 — I2-INTELLIGENCE Axis</em>
</p>
