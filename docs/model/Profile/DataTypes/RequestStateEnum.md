---
title: "RequestStateEnum"
parent: "DataTypes Package"
grand_parent: "Profile Package"
nav_order: 98
layout: default
---

# RequestStateEnum
## Version Info

{: .auto-width }
| Introduced | Deprecated | Updated |"
|---|---|---|
| 1.3 |  |   |

## Enumeration Literals

| # | Literal | Int | Dep | Upd | Description |
|---|---|---|---|---|---|
| 1 | `ACTIVE` | 1.3 |  |  | <span class="hoverterm">requester<span class="definition" data-term="requester">entity that initiates a *request* for information in a communications exchange.</span></span> has initiated a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> for a service and the service has not yet been completed by the <span class="hoverterm">responder<span class="definition" data-term="responder">entity that responds to a *request* for information in a communications exchange.</span></span>. |
| 2 | `FAIL` | 1.3 |  |  | <span class="hoverterm">requester<span class="definition" data-term="requester">entity that initiates a *request* for information in a communications exchange.</span></span> has detected a failure condition. |
| 3 | `NOT_READY` | 1.3 |  |  | <span class="hoverterm">requester<span class="definition" data-term="requester">entity that initiates a *request* for information in a communications exchange.</span></span> is not ready to make a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>. |
| 4 | `READY` | 1.3 |  |  | <span class="hoverterm">requester<span class="definition" data-term="requester">entity that initiates a *request* for information in a communications exchange.</span></span> is prepared to make a <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span>, but no <span class="hoverterm">request<span class="definition" data-term="request">communications method where a *client* transmits a message to an *agent*.  That message instructs the *agent* to respond with specific information.</span></span> for service is required. |
