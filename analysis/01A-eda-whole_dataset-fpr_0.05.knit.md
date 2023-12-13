---
title: "Exploratory analysis and Quality Control of Hypothalamus dataset from Zeisel A et al 2018"
author: "Evgenii O. Tretiakov"
date: "2023-03-07"
output:
  workflowr::wflow_html:
    toc: true
---

<p>
<button type="button" class="btn btn-default btn-workflowr btn-workflowr-report"
  data-toggle="collapse" data-target="#workflowr-report">
  <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
  workflowr
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
</button>
</p>

<div id="workflowr-report" class="collapse">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#summary">Summary</a></li>
  <li><a data-toggle="tab" href="#checks">
  Checks <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  </a></li>
  <li><a data-toggle="tab" href="#versions">Past versions</a></li>
</ul>

<div class="tab-content">
<div id="summary" class="tab-pane fade in active">
  <p><strong>Last updated:</strong> 2023-03-07</p>
  <p><strong>Checks:</strong>
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  6
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  1
  </p>
  <p><strong>Knit directory:</strong>
  <code>PRJNA438862/</code>
  <span class="glyphicon glyphicon-question-sign" aria-hidden="true"
  title="This is the local directory in which the code in this file was executed.">
  </span>
  </p>
  <p>
  This reproducible <a href="https://rmarkdown.rstudio.com">R Markdown</a>
  analysis was created with <a
  href="https://github.com/workflowr/workflowr">workflowr</a> (version
  1.7.0). The <em>Checks</em> tab describes the
  reproducibility checks that were applied when the results were created.
  The <em>Past versions</em> tab lists the development history.
  </p>
<hr>
</div>
<div id="checks" class="tab-pane fade">
  <div class="panel-group" id="workflowr-checks">
  <div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRMarkdownfilestronguncommittedchanges">
  <span class="glyphicon glyphicon-exclamation-sign text-danger" aria-hidden="true"></span>
  <strong>R Markdown file:</strong> uncommitted changes
</a>
</p>
</div>
<div id="strongRMarkdownfilestronguncommittedchanges" class="panel-collapse collapse">
<div class="panel-body">
  The R Markdown is untracked by Git. 
To know which version of the R Markdown file created these
results, you'll want to first commit it to the Git repo. If
you're still working on the analysis, you can ignore this
warning. When you're finished, you can run
<code>wflow_publish</code> to commit the R Markdown file and
build the HTML.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongEnvironmentstrongempty">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Environment:</strong> empty
</a>
</p>
</div>
<div id="strongEnvironmentstrongempty" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! The global environment was empty. Objects defined in the global
environment can affect the analysis in your R Markdown file in unknown ways.
For reproduciblity it's best to always run the code in an empty environment.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSeedstrongcodesetseed20230203code">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Seed:</strong> <code>set.seed(20230203)</code>
</a>
</p>
</div>
<div id="strongSeedstrongcodesetseed20230203code" class="panel-collapse collapse">
<div class="panel-body">
  
The command <code>set.seed(20230203)</code> was run prior to running the code in the R Markdown file.
Setting a seed ensures that any results that rely on randomness, e.g.
subsampling or permutations, are reproducible.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongSessioninformationstrongrecorded">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Session information:</strong> recorded
</a>
</p>
</div>
<div id="strongSessioninformationstrongrecorded" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Recording the operating system, R version, and package versions is
critical for reproducibility.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongCachestrongnone">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Cache:</strong> none
</a>
</p>
</div>
<div id="strongCachestrongnone" class="panel-collapse collapse">
<div class="panel-body">
  
Nice! There were no cached chunks for this analysis, so you can be confident
that you successfully produced the results during this run.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongFilepathsstrongrelative">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>File paths:</strong> relative
</a>
</p>
</div>
<div id="strongFilepathsstrongrelative" class="panel-collapse collapse">
<div class="panel-body">
  
Great job! Using relative paths to the files within your workflowr project
makes it easier to run your code on other machines.

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<p class="panel-title">
<a data-toggle="collapse" data-parent="#workflowr-checks" href="#strongRepositoryversionstrongahrefhttpsgithubcomEugOTPRJNA438862treea885df26b2a583c5a52cc1b06472793cc4c5c8c0targetblanka885df2a">
  <span class="glyphicon glyphicon-ok text-success" aria-hidden="true"></span>
  <strong>Repository version:</strong> <a href="https://github.com/EugOT/PRJNA438862/tree/a885df26b2a583c5a52cc1b06472793cc4c5c8c0" target="_blank">a885df2</a>
</a>
</p>
</div>
<div id="strongRepositoryversionstrongahrefhttpsgithubcomEugOTPRJNA438862treea885df26b2a583c5a52cc1b06472793cc4c5c8c0targetblanka885df2a" class="panel-collapse collapse">
<div class="panel-body">
  
<p>
Great! You are using Git for version control. Tracking code development and
connecting the code version to the results is critical for reproducibility.
</p>

<p>
The results in this page were generated with repository version <a href="https://github.com/EugOT/PRJNA438862/tree/a885df26b2a583c5a52cc1b06472793cc4c5c8c0" target="_blank">a885df2</a>.
See the <em>Past versions</em> tab to see a history of the changes made to the
R Markdown and HTML files.
</p>

<p>
Note that you need to be careful to ensure that all relevant files for the
analysis have been committed to Git prior to generating the results (you can
use <code>wflow_publish</code> or <code>wflow_git_commit</code>). workflowr only
checks the R Markdown file, but you know if there are other scripts or data
files that it depends on. Below is the status of the Git repository when the
results were generated:
</p>

<pre><code>
Ignored files:
	Ignored:    .Rhistory
	Ignored:    .Rproj.user/
	Ignored:    .cache/
	Ignored:    .config/
	Ignored:    .nv/
	Ignored:    .snakemake/
	Ignored:    cellbender/
	Ignored:    cellranger/
	Ignored:    data/PRJNA438862-whole_dataset-fpr_0.001-clusters.h5Seurat
	Ignored:    data/PRJNA438862-whole_dataset-fpr_0.001-clusters.h5ad
	Ignored:    data/PRJNA438862-whole_dataset-fpr_0.01-clusters.h5Seurat
	Ignored:    data/PRJNA438862-whole_dataset-fpr_0.01-clusters.h5ad
	Ignored:    data/PRJNA438862-whole_dataset-nc-clusters.h5Seurat
	Ignored:    data/PRJNA438862-whole_dataset-nc-clusters.h5ad
	Ignored:    fastq/
	Ignored:    scrublet/
	Ignored:    zeisel2018_hpt.h5Seurat
	Ignored:    zeisel2018_hpt.h5ad

Untracked files:
	Untracked:  .here
	Untracked:  3M-february-2018.txt
	Untracked:  Snakefile
	Untracked:  SraRunTable_PRJNA438862.txt
	Untracked:  analysis/01-eda-whole_dataset-nc.Rmd
	Untracked:  analysis/01A-eda-whole_dataset-fpr_0.001.Rmd
	Untracked:  analysis/01A-eda-whole_dataset-fpr_0.01.Rmd
	Untracked:  analysis/01A-eda-whole_dataset-fpr_0.05.Rmd
	Untracked:  analysis/01A-eda-whole_dataset-fpr_0.1.Rmd
	Untracked:  analysis/child/
	Untracked:  code/cellranger_metrics_summary.R
	Untracked:  code/functions.R
	Untracked:  code/genes.R
	Untracked:  code/scrublet_cb-z.py
	Untracked:  config.yaml
	Untracked:  data/astrocyte_enriched_genes_shared_by_mice.tsv
	Untracked:  data/housekeeping_mouse.tsv
	Untracked:  data/top_astrocytes_progenitor_cells_genes_by_humans.tsv
	Untracked:  data/top_mature_astrocyte_genes_by_humans.tsv
	Untracked:  load.Rmd
	Untracked:  load.nb.html
	Untracked:  logs_workflowr/
	Untracked:  metrics_summary.tsv
	Untracked:  models/
	Untracked:  output/figures/
	Untracked:  output/tables/
	Untracked:  samples.tsv
	Untracked:  sra.smk
	Untracked:  zeisel2018.rds
	Untracked:  zeisel2018_all.rds

Unstaged changes:
	Modified:   .gitignore

</code></pre>

<p>
Note that any generated files, e.g. HTML, png, CSS, etc., are not included in
this status report because it is ok for generated content to have uncommitted
changes.
</p>

</div>
</div>
</div>
</div>
<hr>
</div>
<div id="versions" class="tab-pane fade">
  <p>There are no past versions. Publish this analysis with
      <code>wflow_publish()</code> to start tracking its development.</p>
<hr>
</div>
</div>
</div>








# Introduction

In this document we are going to read in the **RAW** filtered counts matrix produced by `Cell Ranger`, the **RNA** filtered counts matrix, where we removed *Ambient RNA* using by `CellBender` at the false positive rate `FPR=0.05` threshold and results of *Cell Doublets* call that was done using `Scrublet` then using summary statistics we determine which of those genes affected the most by our filtering procedure visualising results by `scCustomize` package and derive several categories of low quality cells using set of manually adjusted threshold parameters. Next, we use filtered high quality dataset to perform initial annotation using `Seurat`, `leidenalg` and `clustree` packages and deduce stable multi-resolution reconcile clustering tree with `mrtree` that we need to identify major cell groups for further analysis.

## Set QC parameters

For the quality control we going to use set of well-known technical parameters reflecting sources of bias in data such as total mRNA content, percentage of mitochondrial mRNA content, fraction of molecules aligned to ribosomal genes, hemoglobine genes transcripts and overall cell complexity, which is determined as ratio between number of observed genes per molecule in logarithmic scale. As for doublets, we will use default `Scrublet` results.


```r
bioproject <- "PRJNA438862"
project <- "zeisel2018_Hypoth-brain"
cb_fpr <- 0.05
low_cutoff_gene <- 350
high_cutoff_gene <- NULL
high_cutoff_gene <- 5000
low_cutoff_umis <- NULL
low_cutoff_umis <- -Inf
high_cutoff_umis <- 10000
high_cutoff_pc_mt <- 10
high_cutoff_pc_ribo <- 15
high_cutoff_pc_hb <- 0.1
high_cutoff_doublet_score <- 0.33
high_cutoff_complexity <- 0.85
```







