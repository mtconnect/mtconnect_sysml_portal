---
title: "ConnectionStatusEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 30
layout: default
---

# ConnectionStatusEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.7 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `CLOSED` | 1.7 |  |  | no connection at all. |
| 2 | `ESTABLISHED` | 1.7 |  |  | open connection. The normal state for the data transfer phase of the connection. |
| 3 | `LISTEN` | 1.7 |  |  | <span class="hoverterm">agent<span class="definition" data-term="agent">software that collects data published from one or more piece(s) of equipment, organizes that data in a structured manner, and responds to requests for data from client software systems by providing a structured response in the form of a *response document* that is constructed using the *semantic data model* of a Standard. 
</span></span> is waiting for a connection request from an <span class="hoverterm">adapter<span class="definition" data-term="adapter">optional piece of hardware or software that transforms information provided by a piece of equipment into a form that can be received by an *agent*.</span></span>. |
