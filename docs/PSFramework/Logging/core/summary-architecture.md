# Summary: Architecture

Succinctly put:

+ You [generate messages](../basics/writing-messages.md) that you want logged.
+ After [applying policies](../advanced/message-policies.md) they get queued for logging.
+ A background runspace/thread picks up those messages and starts writing
+ The actual log writing happens in [Logging Providers](../basics/logging-providers.md), plugins that implement logging to a specific service in a specific manner (e.g. to SQL, or logfile, or eventlog, or ...)
+ You can [write your own Logging Providers](../advanced/writing-logging-providers.md) if you care to.
