# AI/ML Decision Indication Symbols Specification

## 1. Purpose

Define visual indication symbols for AI/ML-assisted decisions in the AMPEL360 Q100 aircraft.

## 2. Symbol Categories

**Note:** Unicode characters shown in the "Visual" column are **conceptual placeholders only** and represent the intended meaning of each symbol. Actual cockpit and maintenance display symbols will be developed as SVG/vector graphics according to the requirements in Sections 3 and 4, compliant with aviation display standards and certification requirements.

### Category 1: AI Status Indicators

| Symbol ID | Name | ICN Reference | Meaning |
|-----------|------|---------------|---------|
| AI-STAT-001 | AI Active | [ICN-AMPEL360-S1-00095-0040-001-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-001-A.svg) | AI system providing recommendations |
| AI-STAT-002 | AI Confidence High | [ICN-AMPEL360-S1-00095-0040-002-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-002-A.svg) | ≥95% confidence in recommendation |
| AI-STAT-003 | AI Confidence Low | [ICN-AMPEL360-S1-00095-0040-003-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-003-A.svg) | ≤80% confidence, human review required |
| AI-STAT-004 | AI Degraded | [ICN-AMPEL360-S1-00095-0040-004-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-004-A.svg) | AI in fallback mode |
| AI-STAT-005 | AI Override | [ICN-AMPEL360-S1-00095-0040-005-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-005-A.svg) | Human has overridden AI |

**Confidence Thresholds Clarification (AI Status Indicators)**

- Confidence thresholds are defined as follows:
  - **0%–80% (inclusive):** Display **AI-STAT-003 (AI Confidence Low)**.
  - **>80%–<95%:** Display **AI-STAT-001 (AI Active)** without additional confidence symbol.
  - **95%–100% (inclusive):** Display **AI-STAT-002 (AI Confidence High)**.
- The **80% threshold is inclusive** for low confidence (80% → AI-STAT-003).
- The **95% threshold is inclusive** for high confidence (95% → AI-STAT-002).
- No separate "medium confidence" symbol is defined; intermediate confidence (80%–95%) is represented by **AI-STAT-001** alone.
### Category 2: OOD (Out-of-Distribution) Indicators

| Symbol ID | Name | ICN Reference | Meaning |
|-----------|------|---------------|---------|
| AI-OOD-001 | OOD Detected | [ICN-AMPEL360-S1-00095-0040-006-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-006-A.svg) | Input outside training envelope |
| AI-OOD-002 | OOD Severe | [ICN-AMPEL360-S1-00095-0040-007-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-007-A.svg) | Significant deviation, manual required |

### Category 3: Learning Status

| Symbol ID | Name | ICN Reference | Meaning |
|-----------|------|---------------|---------|
| AI-LRN-001 | Learning Enabled | [ICN-AMPEL360-S1-00095-0040-008-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-008-A.svg) | System is learning from operations |
| AI-LRN-002 | Learning Frozen | [ICN-AMPEL360-S1-00095-0040-009-A](../../PUB/CSDB/ICN/AI-ML/ICN-AMPEL360-S1-00095-0040-009-A.svg) | Learning disabled (certified config) |

## 3. Display Requirements

### Cockpit Display
- Symbol size: Minimum 10mm height
- Position: Adjacent to affected parameter
- Contrast: WCAG AAA compliant
- Animation: Blink for state changes (max 3 seconds)

### Maintenance Display
- Symbol size: Minimum 8mm height
- Color coding per ATA iSpec 2200
- Tooltip on hover with detailed status

## 4. Symbol Development Requirements

### Vector Graphics Specifications
- **Format:** SVG (Scalable Vector Graphics) primary format
- **Fallback:** PNG at multiple resolutions (2x, 3x for high-DPI displays)
- **Color Space:** sRGB for digital displays
- **Stroke Width:** Minimum 2px at baseline size for visibility
- **Simplicity:** Maximum 3 geometric elements per symbol for quick recognition

### Design Guidelines
- Symbols must be developed by certified aviation human factors specialists
- Each symbol requires usability testing per DO-178C and EASA CS-25 requirements
- Placeholder Unicode characters in this specification are for conceptual understanding only
- Final symbols will be based on aviation symbology standards (ARINC 661, MIL-STD-2525)
- Color coding must maintain 4.5:1 contrast ratio minimum in all lighting conditions

### Asset Management
- Vector symbols stored in Git LFS as part of KNU-00-00-003-ICD-002 asset repository
- Each symbol maintained with version history and approval metadata
- Symbol updates require CCB approval and recertification testing

## 5. S1000D Integration

```xml
<symbol>
  <symbolIdent>AI-STAT-001</symbolIdent>
  <symbolName>AI Active</symbolName>
  <symbolType>status</symbolType>
  <symbolCategory>ai-ml</symbolCategory>
</symbol>
```

## 6. Certification Approach

Per EASA AI Roadmap 2.0:
1. Symbol clarity testing with pilots
2. Recognition time: <1 second
3. No confusion with existing symbols
4. Tested in all lighting conditions

## 7. Resolves

**RESOLVES:** TBD-00-00-003-ICD-001-001 (AI/ML decision indication symbol)

**UNBLOCKS:**
- KNU-00-00-003-PUB-001 (Safety labeling guide)
- ATA 95 documentation

## 8. Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2026-01-12 | STK_SAF | Initial symbol set defined |
