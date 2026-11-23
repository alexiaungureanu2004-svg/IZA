$css = Get-Content -Raw (Join-Path $PSScriptRoot '..\styles.css')
if ($css -notmatch '@media\(max-width:760px\)') { throw 'Missing mobile breakpoint.' }
if ($css -notmatch '\.hero-art\{height:auto;min-height:0;') { throw 'Mobile hero art must size to content.' }
if ($css -notmatch '\.hero-art img\{width:100%;max-width:340px;height:auto;aspect-ratio:4/5;') { throw 'Mobile hero image must preserve a bounded aspect ratio.' }
if ($css -notmatch 'object-position:center 38%') { throw 'Mobile hero image positioning is not explicit.' }
Write-Output 'Mobile hero responsive checks passed.'

