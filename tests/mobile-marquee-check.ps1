$css = Get-Content -Raw (Join-Path $PSScriptRoot '..\styles.css')
if ($css -notmatch '\.marquee\{gap:8px;justify-content:space-between;overflow:hidden;padding-inline:10px;font-size:10px;letter-spacing:\.06em\}') { throw 'Missing narrow-screen marquee sizing.' }
if ($css -notmatch '\.marquee span\{flex:0 0 auto;white-space:nowrap\}') { throw 'Marquee expressions must remain on one line.' }
Write-Output 'Mobile marquee responsive checks passed.'

