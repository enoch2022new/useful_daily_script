// show the start time + end time + time period of one command
function Measure-CommandWithTime {
    param (
        [ScriptBlock]$Command
    )

    $startTime = Get-Date
    Write-Host "Command start time: $startTime"

    $result = Measure-Command {
        & $Command
    }

    $endTime = Get-Date
    Write-Host "Command end time: $endTime"
    Write-Host "Total execution time: $($result.TotalSeconds) seconds"
}
