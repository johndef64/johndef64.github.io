---
layout: default
title: Research
description: >-
  Research lines on biomedical knowledge graphs, heterogeneous graph neural
  networks, multi-omics integration, cross-species drug repurposing and
  LLM-assisted retrieval.
---

## Research

My work follows one axis: **how much biological semantics to formalise in a
representation, and what that formalisation buys a learning system.** The lines
below are the rungs of that ladder, from a reusable semantic substrate to the
models that learn on it.

## Research lines

### A semantic substrate for multi-omics

A property-graph infrastructure that couples an ontology-grounded backbone
derived from PheKnowLator and OWL-NETS with per-cohort quantitative multi-omic
collections, inside a single multimodal database. Entities and measurements stay
jointly queryable: a vector-plus-index data model stores dense per-sample arrays
separately from a position-to-feature mapping, so the document count stays linear
in samples and cohorts and entity-to-measurement joins resolve inside one query.

The resulting graph holds over 780,000 ontologically grounded entities and 11
million typed relations, coupled to the multi-omic profiles of the TCGA and
TARGET cohorts across five layers at native precision, with at least 93% feature
coverage on four of the five layers. Built once, rather than rebuilt per study.

*Technologies*: multimodal NoSQL property graphs (AQL), OWL-NETS, Gene Ontology,
Reactome, CHEBI, RO. *Status*: under review.

### Cross-species drug repurposing — PathogenKG

Antimicrobial resistance needs candidate targets across many species, and
existing knowledge-graph repurposing systems are built around human disease
biology. PathogenKG integrates protein interaction networks from 31 bacterial
pathogens with orthology relationships, functional annotation and validated
drug–target associations into one graph of over 3 million triples, so that
evidence propagates between phylogenetically related organisms.

The hard part is imbalance: 302 known drug–target edges among millions of
triples. The training pipeline combines focal loss, type-constrained negative
sampling and targeted oversampling, validated on an external biomedical
benchmark. Ranked predictions for nine case-study compounds were assessed by
domain experts, who rated 22.2% of the top-20 biologically plausible.

*Technologies*: heterogeneous GNN encoders, CompGCN, knowledge-graph embedding,
link prediction. *Status*: in press, ECML PKDD 2026 (Applied Data Science Track).

### Molecular-scale subtype classification — MOGNN-TF

Most prior-knowledge GNNs restrict the prior to a single network type, usually
protein interactions, and are evaluated on binary or few-class settings.
MOGNN-TF integrates three complementary knowledge sources, protein interactions,
post-transcriptional regulation and transcriptional regulation, into a single
multi-relational graph where genes, microRNAs and **transcription factors** are
first-class node types, and is evaluated on the full 27-class TCGA pan-cancer
taxonomy.

It reaches macro-F1 0.79, outperforming two graph-based baselines with
significance confirmed by Friedman and corrected Wilcoxon tests across eleven
seeds. A four-axis ablation shows the transcriptional layer can substitute the
microRNA layer at no measurable cost, which makes subtype prediction possible
from transcriptomic data alone.

*Status*: under review, IEEE Journal of Biomedical and Health Informatics.
*Code*: [Zenodo](https://doi.org/10.5281/zenodo.21475911).

### Multi-scale subtype classification — MOKG-HGNN

The same biomedical knowledge graph that underlies the substrate, this time
connecting the molecular layer upward to pathways, Gene Ontology terms and
diseases as explicit node types, learned with typed message passing and a
per-scale readout over three interchangeable heterogeneous backbones.

It does not beat the molecular baseline on aggregate accuracy, and that is the
interesting part: what the knowledge graph buys is measured directly. The model
degrades less than half as fast under feature scarcity, the two accuracy curves
crossing at 50–100 genes, below which the semantic scaffold wins outright, in
precisely the clinically realistic regime. It is three times more stable across
splits, and it recovers a distinct pathway signature for nearly every subtype,
matching canonical drivers such as the androgen-receptor programme in prostate
cancer and glutamate-receptor signalling in glioma.

*Status*: under review, IEEE J-BHI Special Issue.
*Code*: [Zenodo](https://doi.org/10.5281/zenodo.22047821).

### Deliberation as representation — OmicsCouncil

Latent embeddings of multi-omic data score well on accuracy and poorly on
calibration, auditability and resilience to missing inputs, the three properties
that high-risk medical AI regulation treats as prerequisites. OmicsCouncil
represents a patient by the **trace of a multi-agent deliberation** rather than
by a dense latent vector: modality-specific agents emit typed evidence claims,
cross-examine one another, and submit the survivors to a graph-mediated arbiter
that grades each claim against a biomedical knowledge prior.

On TCGA-BRCA the representation is interpretable by construction, attains the
lowest expected calibration error of the four models tested, and gives up about
one accuracy point for those properties. The paper also reports an honest
negative result: swapping the statistical agent for an LLM agent degrades
classification without improving the trustworthy metrics.

*Status*: in press, REHMED workshop @ ECML PKDD 2026.

### LLMs, retrieval and knowledge graphs

A parallel line on making biomedical knowledge reachable: graph-based
information retrieval, BERTopic-driven topic modelling for genomics,
retrieval-augmented generation and knowledge-graph-enhanced RAG in the
nutrigenetic domain, and **REDAC**, a web application that runs RNA-seq
differential expression analysis from natural-language queries and grounds its
pathway interpretation in PubMed through a RAG module over two open LLMs.

*Status*: published across iiWAS 2024, IRonGraphs @ ECIR 2024, KES 2024,
AIBio @ ECAI 2025 and Bioinformatics Advances.

### Nutrigenetics

Where I started. A genome-scale curated dataset of nutrition-associated genetic
polymorphisms, built by MeSH-driven literature mining and cross-referenced with
GWAS data, with a co-occurrence analysis of gene–diet interactions, followed by a
computational study of missense variants in nutrition-related genes.

*Status*: published in Journal of Biomedical Informatics and International
Journal of Molecular Sciences. *Data*:
[Zenodo](https://zenodo.org/records/14052302).

## Methods and tools

| Area | What I use |
| --- | --- |
| Graph learning | PyTorch Geometric, DGL, GCN, GAT, GraphSAGE, R-GCN, CompGCN, heterogeneous message passing |
| Knowledge representation | PheKnowLator, OWL-NETS, Gene Ontology, Reactome, STRING, TFlink, RO, CHEBI |
| Data | TCGA and TARGET pan-cancer cohorts, GWAS Catalog, dbSNP, MeSH and PubMed, BRACS |
| Databases | Property and graph databases, multimodal NoSQL, SQL |
| Language models | Transformers, retrieval-augmented generation, GraphRAG, LLM agents, BERTopic |
| Evaluation | Repeated stratified cross-validation, Friedman and corrected Wilcoxon tests, ablation design, calibration and interpretability analysis |
| Engineering | Python, R and Bioconductor, Docker, Git, reproducible releases with archived DOIs |

## Experience abroad

**Visiting researcher**, Computer Laboratory, University of Cambridge, March to
June 2025, in the research unit of Prof. Pietro Liò. Biomedical knowledge-graph
embeddings and graph-based retrieval; graph neural networks benchmarked on Cora,
Cornell and Chameleon; prior-knowledge integration in multi-omics GNNs
(MOGONET, MOGAT, MoGCN, MPK-GNN); cross-species knowledge-graph construction and
link prediction for drug repurposing, which became PathogenKG; and a GraphRAG
framework for LLM-driven knowledge-graph construction.

## Collaborations

- **CNR-IEOS**, Institute for Endocrinology and Experimental Oncology, with
  Dr. Francesco Russo — LLM-assisted transcriptomic analysis and
  knowledge-graph-based data integration.
- **Department of Biology**, Federico II, with Prof. Viola Calabrò and
  Dr. Bruno Hay Mele — nutrigenetics and variant analysis.
- **DMMBM**, Department of Molecular Medicine and Medical Biotechnology,
  Federico II — multi-omics integration in ovarian carcinoma cell lines.
- **FAIR**, Future Artificial Intelligence Research (Italian PNRR programme) —
  ontology-based improvement of biological dataset semantics.
- **CINI-AIIS** national laboratory, Federico II unit — AI for healthcare.

## Service

Program committee member for the **REHMED** workshop at ECML PKDD 2026 and for
the 1st **AIBio** workshop at ECAI 2025; reviewer for a *Soft Computing* special
issue on AI and knowledge graphs in smart industry and health applications;
volunteer organising staff at ECML PKDD 2026.

## Supervision and teaching

Invited lecturer and teaching assistant for **Information Retrieval and Natural
Language Processing** (MSc in Computer Engineering, Federico II), where I gave
seminars on LLM-based topic modelling, designed the assignment *Biomedical
Knowledge Graphs for Information Retrieval in Precision Medicine* and graded it
for the exam. Co-supervisor of one MSc and one BSc thesis on knowledge graphs for
biomedical data.

If you are a student looking for a thesis or an internship on these topics, get
in [touch]({{ '/contact' | relative_url }}).
