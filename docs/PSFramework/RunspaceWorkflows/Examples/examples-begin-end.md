---
sidebar_position: 2
---

# Begin and End

## Basics

A documented example of the basic workflow setup [can be found on this page](examples-simple.md).

## Description

As seen in the [basic example](examples-simple.md), runspace workflows allow defining steps ([Workers](../Core/worker.md)), where a scriptblock is executed once per input item.
That is all great and similar to the `process` block of the PowerShell pipeline.

But if we have a `process`, do we also have a `begin` and `end`?

```powershell
$workflow = New-PSFRunspaceWorkflow -Name 'ExampleWorkflow-BeginEnd'

$begin = {
    $global:sqlInstance = Connect-DbaInstance -SqlInstance sql01.contoso.com\userdb
}
$process = {
    $_ | Write-DbaDataTable -SqlInstance $global:sqlInstance -Database userDB -Table Users
}
$end = {
    Disconnect-DbaInstance $global:sqlInstance
}

$workflow | Add-PSFRunspaceWorker -Name Users -InQueue UserList -OutQueue Users -Count 5 -ScriptBlock {
    Get-ADUser -Identity $_
} -CloseOutQueue
$workflow | Add-PSFRunspaceWorker -Name WriteToDB -InQueue Users -OutQueue Done -Count 1 -Begin $begin -ScriptBlock $process -End $end -CloseOutQueue

# Add values and execute
$workflow | Write-PSFRunspaceQueue -Name UserList -BulkValues $users -Close
$workflow | Start-PSFRunspaceWorkflow -PassThru | Wait-PSFRunspaceWorkflow -WorkerName WriteToDB -Closed -PassThru | Remove-PSFRunspaceWorkflow
```

We do.

That said, this example also includes one thing not yet covered in the [basic example](examples-simple.md): Closing queues.
More on that in another, [dedicated example scenario](examples-auto-close.md).

> Note: Another difference to the basic example is, that the final step will produce no output. While we have to specify an `OutQueue`, it will never receive items. This also means we never have to read from the queue and can skip over `Stop-*` and move straight to `Remove-PSFRunspaceWorkflow`.

## Next Steps

+ [Automatically close queues and workers when done](examples-auto-close.md)
+ [Providing variables, functions or modules to the worker code](examples-resources.md)
+ [How do I avoid spamming a service with too many requests?](examples-throttling.md)
