# SupportIQ — Database Test Plan

## 1. Overview

**Component:** PostgreSQL database
**Table:** `public.tickets`
**Testing method:** Manual SQL queries executed through VS Code SQLTools

### Objective

Verify that the `tickets` table enforces its schema constraints, generates identifiers correctly, applies default values, and rejects invalid data.

## 2. Test Cases

| Test ID | Test Scenario                             | Expected Result                          | Actual Result                  | Status          |
| ------- | ----------------------------------------- | ---------------------------------------- | ------------------------------ | --------------- |
| DB-01   | Insert a valid ticket                     | Ticket is inserted successfully          | Record inserted                | Passed          |
| DB-02   | Insert two tickets with identical details | Both are inserted with distinct IDs      | Two records with different IDs | Passed          |
| DB-03   | Omit the title                            | Insertion is rejected                    | Record was rejected | [Passed/Failed] |
| DB-04   | Omit customer email                       | Insertion is rejected                    | Record was rejected  | [Passed] |
| DB-05   | Omit description                          | Insertion is rejected                    | Record was rejected   | [Passed] |
| DB-06   | Insert a whitespace-only title            | Insertion is rejected                    | Record was rejected       | [Passed] |
| DB-07   | Insert a whitespace-only email            | Insertion is rejected                    | Record was rejected     | [Passed] |
| DB-08   | Insert a whitespace-only description      | Insertion is rejected                    | Record was rejected    | [Passed] |
| DB-09   | Omit status and priority                  | Defaults are `open` and `medium`         | Defaults observed              | Passed          |
| DB-10   | Insert an invalid status                  | Insertion is rejected                    | [Record your observation]      | [Passed] |
| DB-11   | Insert an invalid priority                | Insertion is rejected                    | [Record your observation]      | [Passed] |
| DB-12   | Inspect generated IDs                     | Each inserted row receives a distinct ID | Distinct IDs observed          | Passed          |
| DB-13   | Omit `created_at`                         | Timestamp is generated automatically     | Timestamp observed             | Passed          |

## 3. Test Summary

**Total tests:** [12]

**Passed:** [12]

**Failed:** [0]

**Not executed:** [0]

## 4. Notes and Limitations

* Manual testing was performed using SQLTools.
* Only tests that were actually executed and whose expected results were observed are marked as passed.
* Additional application-level tests will be performed after implementing the Python database operations.
