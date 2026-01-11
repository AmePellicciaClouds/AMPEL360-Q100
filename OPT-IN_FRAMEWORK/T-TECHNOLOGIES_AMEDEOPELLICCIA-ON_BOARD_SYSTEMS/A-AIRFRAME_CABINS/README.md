# A-AIRFRAME_CABINS

**Airframe & Cabin Structures (ATA 20, 25, 44, 50–57)**

This axis of the OPT-IN Framework covers **airframe structures and cabin systems** for the AMPEL360 Q100 aircraft — fuselage, wings, stabilizers, doors, windows, nacelles/pylons, cargo compartments, and cabin equipment.

> **Governance Note:** ATA chapters 20, 25, 44, and 50–57 are standard ATA chapters for Airframe & Cabins. They represent *"what defines the physical structure and interior"* — structural components, cabin systems, and passenger/crew accommodations.

---

## ATA Chapters in This Axis

| Chapter | System | Description |
|---------|--------|-------------|
| ATA 20 | Standard Practices — Airframe | General procedures and practices for airframe maintenance |
| ATA 25 | Equipment/Furnishings | Flight compartment, passenger compartment, galley, lavatories |
| ATA 44 | Cabin Systems | Cabin core system, IFE, external communication, cabin monitoring |
| ATA 50 | Cargo & Accessory Compartments | Cargo compartments, loading systems, accessory compartments |
| ATA 51 | Standard Practices — General | Investigation, processes, materials, fasteners, repairs |
| ATA 52 | Doors | Passenger/crew doors, emergency exits, cargo doors, service doors |
| ATA 53 | Fuselage | Fuselage structure and sections |
| ATA 54 | Nacelles/Pylons | Engine nacelles and pylon structures |
| ATA 55 | Stabilizers | Horizontal/vertical stabilizers, elevator, rudder |
| ATA 56 | Windows | Flight compartment windows, passenger windows, door windows |
| ATA 57 | Wings | Center wing, outer wing, wing tip, leading/trailing edge devices |

---

## Operational Rule

> **A-AIRFRAME_CABINS (T-TECHNOLOGIES / structure)**: *"lo que define la estructura física y el interior"* → fuselage, wings, stabilizers, doors, windows, cabin equipment, cargo systems.

If the artifact is **structural/cabin/interior** → place in **A-AIRFRAME_CABINS**.

For **onboard intelligence, AI/ML models, validation** → see **I2-INTELLIGENCE** axis.

---

## Structure

```
A-AIRFRAME_CABINS/
├── README.md
├── 00_INDEX.md
│
├── ATA_20-STANDARD_PRACTICES_AIRFRAME/
│   └── ATA-20-standard-practices-airframe/
│       ├── 20-00-general/
│       ├── 20-10-reserved-as-required/
│       └── ... (through 20-90)
│
├── ATA_25-EQUIPMENT_FURNISHINGS/
│   └── ATA-25-equipment-furnishings/
│       ├── 25-00-general/
│       ├── 25-10-flight-compartment/
│       └── ... (through 25-90)
│
├── ATA_44-CABIN_SYSTEMS/
│   └── ATA-44-cabin-systems/
│       ├── 44-00-general/
│       ├── 44-10-cabin-core-system/
│       └── ... (through 44-90)
│
├── ATA_50-CARGO_AND_ACCESSORY_COMPARTMENTS/
│   └── ATA-50-cargo-accessory-compartments/
│       ├── 50-00-general/
│       ├── 50-10-cargo-compartments/
│       └── ... (through 50-90)
│
├── ATA_51-STANDARD_PRACTICES_GENERAL/
│   └── ATA-51-standard-practices-general/
│       ├── 51-00-general/
│       ├── 51-10-investigation-cleanup-aero-smoothness/
│       └── ... (through 51-90)
│
├── ATA_52-DOORS/
│   └── ATA-52-doors/
│       ├── 52-00-general/
│       ├── 52-10-passenger-crew/
│       └── ... (through 52-90)
│
├── ATA_53-FUSELAGE/
│   └── ATA-53-fuselage/
│       ├── 53-00-general/
│       ├── 53-10-fuselage-sections-as-required/
│       └── ... (through 53-90)
│
├── ATA_54-NACELLES_PYLONS/
│   └── ATA-54-nacelles-pylons/
│       ├── 54-00-general/
│       ├── 54-10-nacelle-sections-as-required/
│       └── ... (through 54-90)
│
├── ATA_55-STABILIZERS/
│   └── ATA-55-stabilizers/
│       ├── 55-00-general/
│       ├── 55-10-horizontal-stabilizer-or-canard/
│       └── ... (through 55-90)
│
├── ATA_56-WINDOWS/
│   └── ATA-56-windows/
│       ├── 56-00-general/
│       ├── 56-10-flight-compartment/
│       └── ... (through 56-90)
│
└── ATA_57-WINGS/
    └── ATA-57-wings/
        ├── 57-00-general/
        ├── 57-10-center-wing/
        └── ... (through 57-95)
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
    ├── CSDB/
    │   ├── APPLICABILITY/
    │   ├── BREX/
    │   ├── COMMON/
    │   ├── DM/
    │   ├── DML/
    │   ├── ICN/
    │   └── PM/
    ├── EXPORT/
    └── IETP/
        ├── DEPLOY/
        ├── PKG/
        └── RUNTIME/
```

---

## Related Documentation

- [OPT-IN Framework Standard](../../../OPT-IN_FRAMEWORK_STANDARD.md)
- [I2-INTELLIGENCE — Onboard AI/ML](../I2-INTELLIGENCE/)
- [AI→ASI Transition Proposal](../../../AI-ASI-TP.md)
- [Digital Twin Control Loop](../../../DIGITAL_TWIN_CONTROL_LOOP.md)

---

<p align="center">
  <em>AMPEL360 Q100 — A-AIRFRAME_CABINS Axis</em>
</p>
