# Terminology Validation Test Specification

## 1. Purpose

Define comprehensive test procedures to validate terminology accuracy, completeness, and consistency across the AMPEL360 Q100 program glossary.

## 2. Scope

### Artifacts Under Test
- Program Glossary (KNOT-00-00-001)
- Terminology Database Schema (KNU-00-00-001-ICD-001)
- Term Type Taxonomy (KNU-00-00-001-REQ-002)
- Cross-reference links to source standards

### Validation Domains
1. Term Accuracy (definitions match source standards)
2. Term Completeness (all required terms present)
3. Cross-Reference Integrity (all links resolve)
4. Taxonomy Compliance (terms properly categorized)
5. Version Control (change tracking functional)

## 3. Test Environment

### 3.1 Test Infrastructure

```
┌─────────────────────────────────────────────────────────────┐
│                    TEST ENVIRONMENT                          │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐     │
│  │ Test        │    │ Terminology │    │ Reference   │     │
│  │ Framework   │───►│ Database    │◄───│ Standards   │     │
│  │ (pytest)    │    │ (PostgreSQL)│    │ (SAE/ISO)   │     │
│  └─────────────┘    └─────────────┘    └─────────────┘     │
│         │                  │                  │             │
│         ▼                  ▼                  ▼             │
│  ┌─────────────────────────────────────────────────────┐   │
│  │              Test Results Database                   │   │
│  │         (Evidence & Traceability Matrix)             │   │
│  └─────────────────────────────────────────────────────┘   │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Reference Standards

| Standard | Source | Purpose |
|----------|--------|---------|
| SAE J2578 | SAE International | H₂ terminology authority |
| ISO 14687 | International Organization for Standardization | Hydrogen fuel quality |
| SAE AS8016 | SAE International | Aerospace terminology |
| ISO 7010 | International Organization for Standardization | Safety symbols |

## 4. Test Cases

### 4.1 TC-TERM-001: Novel Term Coverage

**Objective:** Validate all novel Q100 terms are defined with source references

```yaml
Test ID: TC-TERM-001
Category: Completeness
Priority: Critical
Preconditions: Glossary database initialized

Test Steps:
  1. Query all novel terms (term_type = 'NOVEL')
     Expected: ≥95 novel H₂/Q100 specific terms
     
  2. Verify each term has:
     - Definition text (non-empty)
     - Source reference (SAE/ISO/internal)
     - Category classification
     - Last updated timestamp
     
  3. Cross-check against gap analysis:
     Reference: KNU-00-00-001-ANA-001
     Expected: All 95 identified gaps covered

Pass Criteria:
  - ≥95% of novel terms have complete metadata
  - Zero terms without source reference
  - All terms have valid classification
```

### 4.2 TC-TERM-002: Standard Term Alignment

**Objective:** Validate alignment with SAE and ISO standards

```yaml
Test ID: TC-TERM-002
Category: Accuracy
Priority: Critical
Preconditions: Reference standards loaded

Test Steps:
  1. Load SAE J2578 reference terms
     Expected: ~200 H₂ terms
     
  2. For each Q100 term with SAE reference:
     - Compare definition text
     - Check for semantic equivalence
     - Validate spelling/formatting
     
  3. Load ISO 14687 reference terms
     Expected: ~50 fuel quality terms
     
  4. Repeat comparison for ISO terms

Pass Criteria:
  - 100% match for direct SAE references
  - 100% match for direct ISO references
  - No conflicting definitions
  - Deviations documented with justification
```

### 4.3 TC-TERM-003: Term Type Taxonomy Validation

**Objective:** Validate term categorization per taxonomy

```yaml
Test ID: TC-TERM-003
Category: Taxonomy
Priority: High
Preconditions: Taxonomy schema loaded (KNU-00-00-001-REQ-002)

Test Steps:
  1. Query all terms grouped by term_type
     Expected types: ACRO, TERM, UNIT, SYMB, PROC, ROLE
     
  2. Validate ACRO terms:
     - Have expansion field populated
     - Expansion references valid term
     
  3. Validate UNIT terms:
     - Have conversion factors
     - Reference NIST/SI standards
     
  4. Validate SYMB terms:
     - Have graphic reference
     - Include usage context
     
  5. Check orphaned terms (no category)
     Expected: 0

Pass Criteria:
  - All terms have valid term_type
  - Zero orphaned terms
  - Type-specific fields populated
  - No mis-categorized terms
```

### 4.4 TC-TERM-004: Cross-Reference Link Integrity

**Objective:** Validate all terminology cross-references resolve

```yaml
Test ID: TC-TERM-004
Category: Integrity
Priority: High
Preconditions: Full database populated

Test Steps:
  1. Extract all internal references
     Pattern: [[TERM-ID]] or [link](term:TERM-ID)
     
  2. For each reference:
     - Verify target term exists
     - Check target is not deprecated
     - Validate link direction (no circular refs)
     
  3. Extract external standard references
     Pattern: [SAE:J2578] or [ISO:14687]
     
  4. Validate external references:
     - Standard exists in registry
     - Section/clause valid (if specified)

Pass Criteria:
  - 100% of internal links resolve
  - Zero broken external references
  - No circular reference chains
  - All deprecated terms marked
```

### 4.5 TC-TERM-005: Version Control and History

**Objective:** Validate terminology change tracking

```yaml
Test ID: TC-TERM-005
Category: Configuration Management
Priority: Medium
Preconditions: Historical data present

Test Steps:
  1. Select 10 sample terms with revisions
     Expected: ≥3 revisions per term
     
  2. For each term version:
     - Verify timestamp sequence (monotonic)
     - Check author attribution
     - Validate change reason documented
     
  3. Test rollback capability:
     - Retrieve term at specific date
     - Compare with current version
     
  4. Audit trail completeness:
     - All changes logged
     - No unexplained gaps

Pass Criteria:
  - Version history complete
  - Monotonic timestamps
  - All changes attributed
  - Rollback functional
```

### 4.6 TC-TERM-006: Multi-Language Consistency

**Objective:** Validate translation consistency (Phase 1: EN/ES/FR)

```yaml
Test ID: TC-TERM-006
Category: Localization
Priority: Medium
Preconditions: Translations loaded (per KNU-00-00-002-ANA-003)

Test Steps:
  1. Query all terms with translations
     Expected languages: EN-US (source), ES, FR
     
  2. For each translated term:
     - Verify all target languages present
     - Check translation date ≥ source date
     - Validate translator attribution
     
  3. Semantic validation (sample):
     - Manual review of 20 critical terms
     - Technical accuracy verification
     
  4. Special character handling:
     - Test H₂ subscripts
     - Test degree symbols (°C)
     - Test accented characters (é, ü)

Pass Criteria:
  - ≥95% terms have all translations
  - Zero missing critical term translations
  - Special characters render correctly
  - No encoding errors
```

### 4.7 TC-TERM-007: API Response Validation

**Objective:** Validate terminology API endpoints

```yaml
Test ID: TC-TERM-007
Category: Integration
Priority: High
Preconditions: API server running

Test Steps:
  1. GET /api/terms/{id}
     - Test valid term ID
     - Test invalid term ID (404)
     - Test deprecated term (with warning)
     
  2. GET /api/terms?search={query}
     - Test full-text search
     - Test wildcard patterns
     - Test case-insensitive search
     
  3. GET /api/terms?type={term_type}
     - Filter by ACRO, TERM, UNIT, etc.
     - Test multiple type filters
     
  4. Performance testing:
     - Response time <100ms for single term
     - Response time <500ms for search
     
  5. Rate limiting:
     - Test burst requests
     - Verify 429 status on limit

Pass Criteria:
  - All endpoints return valid JSON
  - Status codes correct
  - Response times within limits
  - Rate limiting enforced
```

### 4.8 TC-TERM-008: Database Schema Validation

**Objective:** Validate database schema compliance

```yaml
Test ID: TC-TERM-008
Category: Schema
Priority: Critical
Preconditions: Schema definition available (KNU-00-00-001-ICD-001)

Test Steps:
  1. Validate table structure:
     - Required tables present
     - Column types match specification
     - Constraints enforced (NOT NULL, UNIQUE)
     
  2. Test foreign key integrity:
     - All FK references valid
     - Cascade deletes configured
     - Update propagation works
     
  3. Index effectiveness:
     - Query plans use indexes
     - No full table scans on large tables
     
  4. Trigger validation:
     - Audit triggers fire correctly
     - Timestamp triggers update
     - Validation triggers enforce rules

Pass Criteria:
  - Schema matches specification 100%
  - All constraints enforced
  - Indexes used effectively
  - Triggers functional
```

### 4.9 TC-TERM-009: Export Format Validation

**Objective:** Validate terminology export formats

```yaml
Test ID: TC-TERM-009
Category: Export
Priority: Medium
Preconditions: Export functionality available

Test Steps:
  1. Export to YAML:
     - Valid YAML syntax
     - All fields present
     - Re-import successful
     
  2. Export to JSON:
     - Valid JSON syntax
     - UTF-8 encoding correct
     - Special characters preserved
     
  3. Export to S1000D CIR:
     - Schema compliance (per KNU-00-00-001-ICD-002)
     - BREX validation passes
     - Daily export schedule verified
     
  4. Export to PDF:
     - Rendering correct
     - Hyperlinks functional
     - Table of contents accurate

Pass Criteria:
  - All formats syntactically valid
  - Round-trip import/export lossless
  - S1000D BREX validation passes
  - PDF readable and navigable
```

### 4.10 TC-TERM-010: Security and Access Control

**Objective:** Validate access control and authentication

```yaml
Test ID: TC-TERM-010
Category: Security
Priority: High
Preconditions: Authentication system configured

Test Steps:
  1. Anonymous access:
     - Can read public terms
     - Cannot modify terms
     - Cannot access draft terms
     
  2. Authenticated user (reader):
     - Can read all non-restricted terms
     - Can submit change requests
     - Cannot directly modify
     
  3. Authenticated user (editor):
     - Can create/modify draft terms
     - Can approve change requests
     - Cannot publish without review
     
  4. Administrator:
     - Full access to all terms
     - Can publish terms
     - Can manage user roles
     
  5. Audit logging:
     - All access attempts logged
     - Failed authentication recorded
     - Modification audit trail

Pass Criteria:
  - RBAC enforced correctly
  - No unauthorized access possible
  - All actions logged
  - SQL injection protected
```

## 5. Test Execution Plan

### 5.1 Test Schedule

| Phase | Tests | Duration | Milestone |
|-------|-------|----------|-----------|
| Schema & Data | TC-001, TC-003, TC-008 | Week 1 | Database validation |
| Content Accuracy | TC-002, TC-004 | Week 2 | Standards alignment |
| Integration | TC-007, TC-009 | Week 3 | API & export |
| Operational | TC-005, TC-006, TC-010 | Week 4 | Production readiness |
| Regression Suite | All | Ongoing | CI/CD integration |

### 5.2 Pass/Fail Criteria

**Overall Pass Criteria:**
- 100% of Critical tests pass
- ≥98% of High priority tests pass
- ≥95% of Medium priority tests pass
- Zero blocking defects

### 5.3 Test Evidence

All test results stored in:
- `test_results/TC-TERM-XXX_results.json`
- Database query logs
- API response logs
- Certification evidence package

## 6. TBD Resolution Requirements

| TBD ID | Description | Resolution Requirement |
|--------|-------------|------------------------|
| TBD-00-00-001-TEST-004-001 | Test coverage threshold | Define specific coverage target (current: 95% proposed) |

## 7. Traceability

| Traces To | Artifact |
|-----------|----------|
| KNU-00-00-001-REQ-001 | Program Glossary Requirements |
| KNU-00-00-001-ICD-001 | Terminology Database Schema |
| KNU-00-00-001-REQ-002 | Term Type Taxonomy Requirements |
| KNU-00-00-001-ANA-001 | Terminology Gap Analysis |

| Traced From | Artifact |
|-------------|----------|
| KNOT-00-00-001 | Parent KNOT |
| TBD-00-00-001-TEST-004-001 | Coverage threshold TBD |

## 8. Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2026-01-13 | STK_TEST | Initial test specification |
