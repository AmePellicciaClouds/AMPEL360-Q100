# NU-00-00-001-CSDBREF-001 — Program Glossary CSDB Consumption Contract (Bridge)

**NU ID:** NU-00-00-001-CSDBREF-001  
**Upstream SSOT KNU:** KNU-00-00-001-REQ-001 — Program Glossary Requirements  
**KNOT Reference:** KNOT-00-00-001 — Program Terminology Standardization  
**Artifact Class:** CSDBref  
**NU Type:** BRIDGE_CONTRACT  
**Version:** I01-R01  
**Status:** DRAFT  
**Owner (AoR):** STK_CM  
**Downstream Consumers (AoR):** STK_PUB, STK_DATA, STK_AI  
**Lifecycle Binding:** SSOT (LC01–LC09) → PUBS/CSDB (LC10–LC14)  
**Baseline Binding:** Required (see §3.3)  
**Due Date:** 2026-02-28  

---

## 1. Purpose

This NU defines the **consumption contract** that projects the authoritative requirements in **KNU-00-00-001-REQ-001** into the **PUBS/CSDB** pipeline. It specifies:

- What must be produced in **PUBS/CSDB** (deliverables and datasets)
- The **minimum structure** and **validation rules** for the Program Glossary
- The required **trace hooks** (KNU → NU → PUBS) and **baseline binding**
- CI/BREX obligations enabling deterministic compliance and downstream automation

This NU is a **bridge**: it does not contain glossary content; it defines how content is produced, validated, and referenced.

---

## 2. Scope

### 2.1 In-Scope
- Publishing the Program Glossary as an **S1000D Data Module (DM)** in CSDB
- Providing a **machine-readable** glossary dataset (CSV/JSON/YAML)
- Defining validation: **BREX + CI checks** (structure, uniqueness, quality, counts)
- Defining cross-reference linkage rules for terms used in other documents
- Defining packaging obligations for IETP runtime (where applicable in LC10–LC14)

### 2.2 Out-of-Scope
- Authoring the glossary term definitions themselves (PUBS content activity)
- Supplier-specific or non-program-specific terminology
- Standard terms already governed by ATA iSpec 2200 / S1000D / CS-25 / Part 25

---

## 3. Contract Interfaces

### 3.1 Upstream Inputs (SSOT)
The following SSOT assets are normative inputs:
- **KNU-00-00-001-REQ-001** (requirements for glossary existence, structure, governance)
- Controlled vocabularies (term categories and governance fields)
- Applicable standards references as enumerated in KNU-00-00-001-REQ-001 §2

### 3.2 Downstream Outputs (PUBS/CSDB Obligations)
This NU obligates creation and maintenance of:

**PUBS Deliverables**
- **PUB-GLS-DM**: Program Glossary as S1000D DM (see §4)  
- Optional: Publication module packaging for IETP runtime usage (LC10–LC14)

**Data Exports**
- **DATA-GLS-SET**: Machine-readable glossary dataset (see §5)

**Validation Evidence**
- **EVID-GLS-BREX**: BREX validation report for glossary DM  
- **EVID-GLS-CI**: CI report for deterministic checks (structure, uniqueness, counts)

### 3.3 Baseline Binding (Required)
All downstream outputs (PUBS and datasets) **shall** bind to a frozen baseline:

Required fields in each output manifest (or metadata header):
- `source_baseline_id`
- `source_baseline_manifest_hash`
- `source_knu_id = KNU-00-00-001-REQ-001`
- `source_nu_id = NU-00-00-001-CSDBREF-001`

Failure to bind to a baseline invalidates the deliverable for release/export.

---

## 4. S1000D DM Publication Contract (PUB-GLS-DM)

### 4.1 DM Structure Obligations
The glossary DM **shall** implement the minimum entry fields required by KNU-00-00-001-REQ-001 §3.3:

| Field | DM Representation | Required |
|---|---|---|
| Term | term title + stable anchor | MUST |
| Abbreviation | abbreviation field | SHOULD |
| Definition | definition field (single sentence) | MUST |
| Source | citation field | MUST |
| Category | controlled category tag | MUST |
| ATA Reference | ATA tag list | SHOULD |
| Related Terms | cross-reference list | SHOULD |
| Notes | notes/remarks field | MAY |

### 4.2 Organization Obligations
- The DM **shall** be organized alphabetically by term.
- A dedicated abbreviations section **shall** exist (or an equivalent structured listing).

### 4.3 BREX Obligations
- The DM **shall** be BREX-compliant and validated in CI prior to packaging/export.

---

## 5. Machine-Readable Dataset Contract (DATA-GLS-SET)

### 5.1 Dataset Output Formats
At least one machine-readable format **shall** be produced:
- CSV **or** JSON **or** YAML (selection is a TBD in SSOT KNU)

### 5.2 Required Primary Key and Columns
The dataset **shall** include a stable primary key:

- `glossary_entry_id` (deterministic; not positional)

Minimum required columns:
- `glossary_entry_id`
- `term`
- `abbr` (nullable)
- `definition`
- `category`
- `source_type`
- `source_ref`
- `ata_refs` (list or delimited string)
- `related_terms` (list or delimited string)
- `status` (ACTIVE | DEPRECATED)
- `version_introduced`
- `version_deprecated` (nullable)
- `approving_authority` (required when source_type = PROGRAM_DEFINED)
- `approval_date` (required when source_type = PROGRAM_DEFINED)

---

## 6. Deterministic Validation Rules (CI Evidence)

The following checks **shall** be executed and reported:

### 6.1 Structural Completeness
- Each entry contains mandatory fields (Term, Definition, Source, Category)

### 6.2 Definition Quality
- Definition is a single complete sentence
- No circular definition (term does not appear in its own definition)
- Uses only standard or glossary-defined terms (best-effort check)

### 6.3 Abbreviation Uniqueness
- Abbreviations are unique within the glossary unless explicitly domain-qualified

### 6.4 Source Policy
- Each entry has a source and a source type consistent with KNU §3.4 hierarchy
- Program-defined terms include rationale, approval date, and approving authority

### 6.5 Minimum Term Counts (Acceptance Metrics)
Term count thresholds shall meet or exceed:
- BWB ≥40
- H₂ ≥60
- AI/ML ≥50
- Circularity/DPP ≥30
- OPT-IN ≥40
- DEP ≥35
- Total ≥255

### 6.6 Deprecation Policy
- Superseded/removed terms remain present and are marked DEPRECATED (not deleted)
- Deprecation metadata is populated

**Evidence Outputs**
- `EVID-GLS-CI` (machine-readable report)
- `EVID-GLS-BREX` (BREX validation report)

---

## 7. Cross-Reference Linkage Contract

### 7.1 Link Behavior
Where publication formats support hyperlinks:
- Terms used in other documents **should** link to the glossary anchor.

### 7.2 Link Map Output (Recommended)
A link map **should** be generated:
- `term` → `glossary_entry_id` → `dm_anchor`

This supports ASIT/UI configuration and automated cross-linking.

---

## 8. Traceability Hooks

### 8.1 Upstream Trace
- `KNU-00-00-001-REQ-001` → `NU-00-00-001-CSDBREF-001`

### 8.2 Downstream Trace (Obligations)
This NU establishes trace obligations to:
- `KNU-00-00-001-PUB-001` (Program Glossary DM deliverable)
- `KNU-00-00-001-ICD-001` (Terminology DB schema support)
- `KNU-00-00-001-ANA-001` (Terminology gap analysis)
- `KNU-00-00-001-CM-001` (Change control process)

---

## 9. Change Control
Changes to the glossary and its publishing contract **shall** follow the program change control process as specified in SSOT KNU §3.6. The NU version shall be incremented when:
- the contract fields change
- validation rules change
- dataset schema changes
- baseline binding rules change

---

## 10. Acceptance Criteria (for this NU)
This NU is accepted when:
1) PUBS pipeline can produce a BREX-valid glossary DM bound to a frozen baseline  
2) Machine-readable dataset exists with required columns and primary key  
3) CI checks produce deterministic reports for structure, uniqueness, quality, and counts  
4) Downstream deliverables reference this NU and the upstream SSOT KNU in metadata  

---

## 11. Placement (Normative)
This NU shall be stored at:

`ATA-00/ATA-00-00/CSDBref/NU/NU-00-00-001-CSDBREF-001.md`
