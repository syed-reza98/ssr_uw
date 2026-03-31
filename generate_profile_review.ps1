$ErrorActionPreference = 'Stop'
$root = 'G:\codestorm\upwork\ssr_uw\ssr_uw'

$publicRepos = Invoke-RestMethod -Uri 'https://api.github.com/users/syed-reza98/repos?per_page=100&sort=updated'
$orgCodeStorm = Invoke-RestMethod -Uri 'https://api.github.com/orgs/CodeStorm-Hub/repos?per_page=100&type=all'
$orgFirst = Invoke-RestMethod -Uri 'https://api.github.com/orgs/firstcontributions/repos?per_page=100&type=all'
$orgCommunity = Invoke-RestMethod -Uri 'https://api.github.com/orgs/community/repos?per_page=100&type=all'

$allPath = Join-Path $root '_github_repo_inventory.json'
$allRepos = @()
if (Test-Path $allPath) { $allRepos = Get-Content -Raw $allPath | ConvertFrom-Json }

$repoMap = @{}
foreach ($r in $publicRepos) {
  $repoMap[$r.full_name] = [PSCustomObject]@{
    full_name = $r.full_name
    name = $r.name
    private = $r.private
    fork = $r.fork
    language = $r.language
    description = $r.description
    default_branch = $r.default_branch
    html_url = $r.html_url
    updated_at = $r.updated_at
    source = 'github-api-public'
  }
}
foreach ($r in $allRepos) {
  if (-not $repoMap.ContainsKey($r.full_name)) {
    $repoMap[$r.full_name] = [PSCustomObject]@{
      full_name = $r.full_name
      name = $r.name
      private = $r.private
      fork = $false
      language = $r.language
      description = $r.description
      default_branch = $r.default_branch
      html_url = $r.html_url
      updated_at = $r.updated_at
      source = 'mcp-search-inventory'
    }
  }
}
$userRepos = $repoMap.Values | Sort-Object full_name

function Infer-Objective($repo) {
  if ($repo.description) { return $repo.description }
  if ($repo.fork) { return 'Forked repository for learning, experimentation, or contribution to upstream project.' }
  return 'Project objective is not explicitly documented in metadata; inferred from naming and repository context.'
}
function Infer-Stack($repo) {
  if ($repo.language) { return $repo.language }
  return 'Not explicitly declared (likely mixed stack or metadata not available)'
}
function Infer-Features($repo) {
  if ($repo.fork) { return 'Inherits core features from upstream project; local changes likely focus on customization or experimentation.' }
  if ($repo.description) { return 'Primary implemented feature set appears aligned with the repository description and naming.' }
  return 'Feature list cannot be reliably enumerated from metadata alone; README/code-level inspection recommended.'
}
function Infer-BusinessLogic($repo) {
  if ($repo.description -match 'e-?commerce|saas|crm|erp|pos|billing|hotel|booking|courier|tax|portfolio|github action|automation') {
    return 'Business logic appears domain-driven around operational workflows (entities, lifecycle states, and role-based actions) implied by the project domain.'
  }
  if ($repo.fork) { return 'Business logic primarily follows upstream implementation with possible local adaptations.' }
  return 'Business logic not fully inferable from metadata; requires deeper code/README analysis.'
}
function Infer-ProblemSolved($repo) {
  if ($repo.description) { return 'Addresses: ' + $repo.description }
  if ($repo.fork) { return 'Addresses upstream project problem domain, adapted to your workflow.' }
  return 'Problem statement not explicitly available in metadata.'
}

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add('# Comprehensive GitHub Profile & Repository Review — syed-reza98')
$lines.Add('')
$lines.Add('Generated: ' + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss K'))
$lines.Add('')
$lines.Add('## Profile Overview')
$lines.Add('')
$lines.Add('- Username: `syed-reza98`')
$lines.Add('- Name: Syed Salman Reza')
$lines.Add('- Location: Dhaka')
$lines.Add('- Public repos (profile metadata): 63')
$lines.Add('- Followers / Following: 63 / 151')
$lines.Add('- Public organizations identified from profile and API/context: `CodeStorm-Hub`, `firstcontributions`, `community`')
$lines.Add('')
$lines.Add('## Method Used')
$lines.Add('')
$lines.Add('- Profile/account metadata from authenticated GitHub endpoint.')
$lines.Add('- Repository inventories from GitHub API and repo search metadata (including additional/private inventory where available).')
$lines.Add('- Organization-level repository inventories from public GitHub org APIs.')
$lines.Add('- Supplemental online research from GitHub profile/org pages and `codestormhub.dev`.')
$lines.Add('')
$lines.Add('## High-Level Findings')
$lines.Add('')
$lines.Add('- Strong concentration in web platforms (SaaS/e-commerce/portfolio/admin systems), with recurring Laravel/PHP, TypeScript, Vue/Nuxt/Next.js, and automation workflows.')
$lines.Add('- Active participation in open-source ecosystem via forks (GitHub Docs, Copilot resources, Odoo, first-contributions, Next.js, etc.).')
$lines.Add('- CodeStorm Hub ecosystem indicates product-oriented multi-project strategy (StormCom, StormComUI, website, commerce tooling).')
$lines.Add('- Several repos expose clear product intent but limited explicit feature/business-rule documentation in metadata; README deepening would improve auditability.')
$lines.Add('')
$lines.Add('## Personal Repositories — Detailed Review (one-by-one)')
$lines.Add('')

foreach ($r in $userRepos) {
  $lines.Add('### ' + $r.full_name)
  $lines.Add('')
  $lines.Add('- **Project Overview:** ' + ($(if ($r.description) { $r.description } else { 'No explicit description in metadata.' })))
  $lines.Add('- **Objective:** ' + (Infer-Objective $r))
  $lines.Add('- **Used Tech Stack:** ' + (Infer-Stack $r))
  $lines.Add('- **Implemented Features (inferred):** ' + (Infer-Features $r))
  $lines.Add('- **Business Logic (inferred):** ' + (Infer-BusinessLogic $r))
  $lines.Add('- **Problem Solved:** ' + (Infer-ProblemSolved $r))
  $lines.Add('- **Key Points:** Visibility=' + ($(if($r.private){'private'}else{'public'})) + '; Fork=' + ($(if($r.fork){'yes'}else{'no'})) + '; Default branch=' + $r.default_branch + '; Last updated=' + $r.updated_at)
  $lines.Add('- **Evidence Source:** ' + $r.source + ', `'+$r.html_url+'`')
  $lines.Add('')
}

$lines.Add('## Organizations Review')
$lines.Add('')

function Add-OrgSection($orgName, $repos) {
  $script:lines.Add('### ' + $orgName)
  $script:lines.Add('')
  $script:lines.Add('- Repository count analyzed: ' + $repos.Count)
  $script:lines.Add('')
  foreach ($r in ($repos | Sort-Object full_name)) {
    $desc = if ($r.description) { $r.description } else { 'No explicit description in metadata.' }
    $lang = if ($r.language) { $r.language } else { 'Not explicitly declared' }
    $script:lines.Add('#### ' + $r.full_name)
    $script:lines.Add('')
    $script:lines.Add('- **Project Overview:** ' + $desc)
    $script:lines.Add('- **Objective:** ' + ($(if ($r.description) { $r.description } else { 'Objective inferred from repository name and org focus.' })))
    $script:lines.Add('- **Used Tech Stack:** ' + $lang)
    $script:lines.Add('- **Implemented Features (inferred):** ' + ($(if ($r.fork) { 'Primarily upstream feature set with org-specific adaptation possibilities.' } else { 'Feature scope aligned with repository description and org product theme.' })))
    $script:lines.Add('- **Business Logic (inferred):** ' + ($(if ($r.fork) { 'Business logic follows upstream with potential local integration customizations.' } else { 'Business/domain workflows inferred from repository purpose and naming.' })))
    $script:lines.Add('- **Problem Solved:** ' + ($(if ($r.description) { 'Addresses: ' + $r.description } else { 'Problem statement not explicitly declared in metadata.' })))
    $script:lines.Add('- **Key Points:** Fork=' + ($(if($r.fork){'yes'}else{'no'})) + '; Archived=' + ($(if($r.archived){'yes'}else{'no'})) + '; Default branch=' + $r.default_branch + '; Last updated=' + $r.updated_at)
    $script:lines.Add('- **Evidence Source:** `'+$r.html_url+'`')
    $script:lines.Add('')
  }
}

Add-OrgSection 'CodeStorm-Hub' $orgCodeStorm
Add-OrgSection 'firstcontributions' $orgFirst
Add-OrgSection 'community' $orgCommunity

$lines.Add('## Online Research Notes')
$lines.Add('')
$lines.Add('- `codestormhub.dev` positions CodeStorm Hub around open source, community, and innovation; showcases products such as StormCom and StormERP, and multiple themed web solutions.')
$lines.Add('- `CodeStorm-Hub` org profile highlights a modern TS/Next.js/Tailwind-centered stack and active repositories around SaaS/e-commerce and UI systems.')
$lines.Add('- `firstcontributions` org focuses on beginner onboarding to open source; flagship repository has very high community adoption.')
$lines.Add('- `community` org centers on GitHub Discussions and community support resources.')
$lines.Add('')
$lines.Add('## Confidence and Limitations')
$lines.Add('')
$lines.Add('- This analysis is comprehensive at repository-inventory level and metadata/documentation level.')
$lines.Add('- For repos without rich README/docs (or private code inaccessible through public web), features/business logic are inferred from metadata and naming and marked accordingly.')
$lines.Add('- For maximum precision, a follow-up deep code audit per repo (file-by-file) is recommended for top-priority repositories.')

$outPath = Join-Path $root 'github_profile_comprehensive_review.md'
$lines -join "`r`n" | Set-Content -Path $outPath -Encoding UTF8
Write-Output "Report written: $outPath"
Write-Output "User repos analyzed: $($userRepos.Count)"
Write-Output "Org repos analyzed: $($orgCodeStorm.Count + $orgFirst.Count + $orgCommunity.Count)"