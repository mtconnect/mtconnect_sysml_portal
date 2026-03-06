---
title: "DataItem Types Package"
parent: "DataItems Package"
grand_parent: "Device Information Model Package"
nav_order: 1
has_children: true
layout: default
---

# DataItem Types Package

This section provides semantic information for the types of a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}).

In the MTConnect Standard, [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) are defined and organized based upon the [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` and [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type`.  The [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` provides a high level grouping for [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})s based on the kind of information that is reported by the data item.

These categories are:

* `SAMPLE`: A `SAMPLE` reports a continuously variable or analog data value. 

* `EVENT`: An `EVENT` reports information representing a functional state, with two or more discrete values, associated with a component or it contains a message.  The data provided may be a numeric value or text.

* `CONDITION`: A `CONDITION` reports information about the health of a piece of equipment and its ability to function.

The [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` specifies the specific kind of data that is reported.   For some types of data items, a [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`subType` may also be used to differentiate between multiple data items of the same [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`type` where the information reported by the data item has a different, but related, meaning.

Many types of data items provide two forms of data: a value (reported as either a `SAMPLE` or `EVENT`) and a health status (reported as a `CONDITION`).  These [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %}) types **MAY** be defined in more than one [`DataItem`]({% link model/DeviceInformationModel/DataItems/DataItem.md %})::`category` based on the data that they report.

