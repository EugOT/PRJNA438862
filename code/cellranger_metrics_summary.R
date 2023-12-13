library(tidyverse)
metrics_summary_SRR6854065 <- read_csv("/data/PRJNA438862/cellranger/SRR6854065/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854065")
metrics_summary_SRR6854066 <- read_csv("/data/PRJNA438862/cellranger/SRR6854066/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854066")
metrics_summary_SRR6854077 <- read_csv("/data/PRJNA438862/cellranger/SRR6854077/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854077")
metrics_summary_SRR6854080 <- read_csv("/data/PRJNA438862/cellranger/SRR6854080/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854080")
metrics_summary_SRR6854090 <- read_csv("/data/PRJNA438862/cellranger/SRR6854090/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854090")
metrics_summary_SRR6854135 <- read_csv("/data/PRJNA438862/cellranger/SRR6854135/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854135")
metrics_summary_SRR6854136 <- read_csv("/data/PRJNA438862/cellranger/SRR6854136/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854136")
metrics_summary_SRR6854141 <- read_csv("/data/PRJNA438862/cellranger/SRR6854141/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854141")
metrics_summary_SRR6854142 <- read_csv("/data/PRJNA438862/cellranger/SRR6854142/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854142")
metrics_summary_SRR6854157 <- read_csv("/data/PRJNA438862/cellranger/SRR6854157/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854157")
metrics_summary_SRR6854160 <- read_csv("/data/PRJNA438862/cellranger/SRR6854160/outs/metrics_summary.csv") %>% mutate(Run = "SRR6854160")
metrics_summary <-
    bind_rows(
        metrics_summary_SRR6854065,
        metrics_summary_SRR6854066,
        metrics_summary_SRR6854077,
        metrics_summary_SRR6854080,
        metrics_summary_SRR6854090,
        metrics_summary_SRR6854135,
        metrics_summary_SRR6854136,
        metrics_summary_SRR6854141,
        metrics_summary_SRR6854142,
        metrics_summary_SRR6854157,
        metrics_summary_SRR6854160)

metrics_summary |>
    select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, here::here("metrics_summary.tsv"))

