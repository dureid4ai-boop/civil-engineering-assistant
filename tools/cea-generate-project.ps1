<#
.SYNOPSIS
  CEA project generator (local, safe).
.DESCRIPTION
  Creates a private project folder under deliverables/_PRIVATE_DO_NOT_COMMIT/<ProjectName>
  and copies selected templates (kickoff, QA, calculation notes).
  No client data is written to Git-tracked paths.
.EXAMPLE
  .\tools\cea-generate-project.ps1 -ProjectName "ABC_TOWER"
#>

[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)]
  [ValidateNotNullOrEmpty()]
  [string]$ProjectName,

  [Parameter()]
  [ValidateSet("all","unit","concrete","rebar")]
  [string]$CalcTemplates = "all"
)

$ErrorActionPreference = "Stop"

function Ensure-Dir([string]$p){
  if(-not (Test-Path $p)){
    New-Item -ItemType Directory -Path $p -Force | Out-Null
  }
}

function Copy-Safe([string]$src, [string]$dst){
  if(-not (Test-Path $src)){
    throw "Missing template source: $src"
  }
  Copy-Item $src $dst -Force
}

# Root private project folder (ignored by .gitignore)
$privateRoot = Join-Path "deliverables" "_PRIVATE_DO_NOT_COMMIT"
$projectRoot = Join-Path $privateRoot $ProjectName

$kickoffDir = Join-Path $projectRoot "kickoff"
$qaDir      = Join-Path $projectRoot "qa"
$calcDir    = Join-Path $projectRoot "calculations"
$exportsDir = Join-Path $projectRoot "exports"

Ensure-Dir $privateRoot
Ensure-Dir $projectRoot
Ensure-Dir $kickoffDir
Ensure-Dir $qaDir
Ensure-Dir $calcDir
Ensure-Dir $exportsDir

# Copy kickoff + QA templates
Copy-Safe "templates\kickoff\CEA_KICKOFF_CHECKLIST.md" (Join-Path $kickoffDir "KICKOFF_CHECKLIST.md")
Copy-Safe "templates\qa\CEA_QA_SELF_REVIEW_CHECKLIST.md" (Join-Path $qaDir "QA_SELF_REVIEW_CHECKLIST.md")

# Copy calc templates based on selection
$calcMap = @{
  "unit"     = "templates\calculations\CEA_CALC_NOTE_UNIT_CONVERSIONS.md"
  "concrete" = "templates\calculations\CEA_CALC_NOTE_CONCRETE_VOLUME_MATERIALS.md"
  "rebar"    = "templates\calculations\CEA_CALC_NOTE_REBAR_WEIGHT_ESTIMATE.md"
}

$selected = @()
if($CalcTemplates -eq "all"){
  $selected = @("unit","concrete","rebar")
} else {
  $selected = @($CalcTemplates)
}

foreach($k in $selected){
  if(-not $calcMap.ContainsKey($k)){ throw "Unknown calc template key: $k" }
  $src = $calcMap[$k]
  $name = Split-Path $src -Leaf
  $outName = $name.Replace("CEA_CALC_NOTE_","").Replace(".md","") + "_CALC_NOTE.md"
  Copy-Safe $src (Join-Path $calcDir $outName)
}

# Create a tiny README inside the private project folder
@"
# $ProjectName (PRIVATE)

This folder is intentionally under:
deliverables/_PRIVATE_DO_NOT_COMMIT/

It must never be committed to Git.
Use it for real client/project work.

Generated on: $(Get-Date -Format "yyyy-MM-dd HH:mm")
"@ | Set-Content -Encoding UTF8 (Join-Path $projectRoot "README_PRIVATE.md")

Write-Host "OK: Project generated at: $projectRoot" -ForegroundColor Green
Write-Host "INFO: Kickoff:      $kickoffDir" -ForegroundColor Cyan
Write-Host "INFO: QA:           $qaDir" -ForegroundColor Cyan
Write-Host "INFO: Calculations: $calcDir" -ForegroundColor Cyan
Write-Host "INFO: Exports:      $exportsDir" -ForegroundColor Cyan
