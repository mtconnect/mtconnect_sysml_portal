---
title: "RepresentationEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 97
layout: default
---

# RepresentationEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.2 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `DATA_SET` | 1.5 |  |  | reported value(s) are represented as a set of <span class="hoverterm">key-value pairs<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span>. Each reported value in the <span class="hoverterm">data set<span class="definition" data-term="data set">*key-value pairs* where each entry is uniquely identified by the *key*.</span></span> **MUST** have a unique key. |
| 2 | `DISCRETE` | 1.3 | 1.5 |  | **DEPRECATED** as [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` type in *MTConnect Version 1.5*. Replaced by the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`discrete`. |
| 3 | `TABLE` | 1.6 |  |  | two dimensional set of <span class="hoverterm">key-value pairs<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span> where the [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) represents a row, and the value is a set of <span class="hoverterm">key-value pair<span class="definition" data-term="key-value pair">association between an identifier referred to as the *key* and a value which taken together create a *key-value pair*. </span></span> [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) elements. A <span class="hoverterm">table<span class="definition" data-term="table">two dimensional set of values given by a set of *key-value pairs* *table entries*. </span></span> follows the same behavior as the <span class="hoverterm">data set<span class="definition" data-term="data set">*key-value pairs* where each entry is uniquely identified by the *key*.</span></span> for change tracking, clearing, and history. When an [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) changes, all [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) elements update as a single unit following the behavior of a <span class="hoverterm">data set<span class="definition" data-term="data set">*key-value pairs* where each entry is uniquely identified by the *key*.</span></span>. > Note: It is best to use [`Variable`]({% link model/WIPDeviceExamples/MillwSmoothG/Representation/Variable.md %}) if the [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) entities represent multiple semantic types. Each [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) in the <span class="hoverterm">table<span class="definition" data-term="table">two dimensional set of values given by a set of *key-value pairs* *table entries*. </span></span> **MUST** have a unique key. Each [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) of each [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) in the <span class="hoverterm">table<span class="definition" data-term="table">two dimensional set of values given by a set of *key-value pairs* *table entries*. </span></span> **MUST** have a unique key. See [`Representation`]({% link model/ObservationInformationModel/Representations/Representation.md %}) in `Observation Information Model`, for a description of [`Entry`]({% link model/ObservationInformationModel/Representations/Table/Entry.md %}) and [`Cell`]({% link model/ObservationInformationModel/Representations/Table/Cell.md %}) elements. |
| 4 | `TIME_SERIES` | 1.2 |  |  | series of sampled data. The data is reported for a specified number of samples and each sample is reported with a fixed period. |
| 5 | `VALUE` | 1.2 |  |  | measured value of the sample data. If no [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` is specified for a data item, the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`representation` **MUST** be determined to be `VALUE`. |
