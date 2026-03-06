---
title: "PartProcessingStateEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 83
layout: default
---

# PartProcessingStateEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.8 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `IN_PROCESS` | 1.8 |  |  | part occurrence is actively being processed. |
| 2 | `IN_TRANSIT` | 1.8 |  |  | part occurrence is being transported to its destination. |
| 3 | `NEEDS_PROCESSING` | 1.8 |  |  | part occurrence is not actively being processed, but the processing has not ended. Processing requirements exist that have not yet been fulfilled. This is the default entry state when the part occurrence is originally received. In some cases, the part occurrence may return to this state while it waits for additional processing to be performed. |
| 4 | `PROCESSING_ENDED` | 1.8 |  |  | part occurrence is no longer being processed. A general state when the reason for termination is unknown. |
| 5 | `PROCESSING_ENDED_ABORTED` | 1.8 |  |  | processing of the part occurrence has come to a premature end. |
| 6 | `PROCESSING_ENDED_COMPLETE` | 1.8 |  |  | part occurrence has completed processing successfully. |
| 7 | `PROCESSING_ENDED_LOST` | 1.8 |  |  | terminal state when the part occurrence has been removed from the equipment by an external entity and it no longer exists at the equipment. |
| 8 | `PROCESSING_ENDED_REJECTED` | 1.8 |  |  | part occurrence has been processed completely. However, the processing may have a problem. |
| 9 | `PROCESSING_ENDED_SKIPPED` | 1.8 |  |  | part occurrence has been skipped for processing on the piece of equipment. |
| 10 | `PROCESSING_ENDED_STOPPED` | 1.8 |  |  | process has been stopped during the processing. The part occurrence will require special treatment. |
| 11 | `TRANSIT_COMPLETE` | 1.8 |  |  | part occurrence has been placed at its designated destination. |
| 12 | `WAITING_FOR_TRANSIT` | 1.8 |  |  | part occurrence is waiting for transit. |
