# PhD Record 2023–2026 — Giovanni Maria De Filippis

Consolidated catalogue of everything produced and attended during the PhD in
Computational and Quantitative Biology (CQB), cycle XXXIX, University of Naples
Federico II. Compiled from the six bimonthly reports of each year, the credit
ledger, the publication database and the thesis draft. This file is the single
source of truth for the curriculum vitae.

Status as of 23 September 2026. Programme ends 31 October 2026.

---

## 1. Identity and identifiers

| | |
| --- | --- |
| Full name | Giovanni Maria De Filippis |
| E-mail | giovannimaria.defilippis@unina.it |
| ORCID | [0009-0002-8395-0724](https://orcid.org/0009-0002-8395-0724) |
| Google Scholar | [VMk1EUQAAAAJ](https://scholar.google.com/citations?user=VMk1EUQAAAAJ) |
| GitHub | [johndef64](https://github.com/johndef64) |
| Website | https://johndef64.github.io/ |
| Professional register | Ordine Nazionale dei Biologi (ONB), qualified 15 December 2022 |

---

## 2. Doctoral programme

| | |
| --- | --- |
| Programme | PhD in Computational and Quantitative Biology (CQB) |
| Cycle | XXXIX |
| Institution | University of Naples Federico II |
| Host department | DIETI — Electrical Engineering and Information Technology |
| Period | 1 November 2023 – 31 October 2026 |
| Supervisor | Prof. Antonio Maria Rinaldi (DIETI, IKNOS Lab) |
| Co-supervisor | none |
| Programme coordinator | Prof. Diego Di Bernardo (DICMAPI) |
| Funding | University of Naples Federico II institutional PhD scholarship |
| Prior degree | MSc in Biology (LM-6, Nutrition curriculum), 110/110 cum laude, 2022 |

**Credits earned** (institutional requirement in brackets)

| Activity | Year I | Year II | Year III | Total | Requirement |
| :--- | ---: | ---: | ---: | ---: | :--- |
| Taught courses | 15.0 | 19.2 | 0.0 | **34.2** | min 30 |
| Seminars | 2.8 | 5.8 | 2.0 | **10.6** | min 10 |
| Research | 25.0 | 32.0 | 42.0 | **99.0** | min 80 |
| Teaching support | 0.2 | 0.4 | 1.6 | **2.2** | max 4.8 |
| **Total** | **43.0** | **57.4** | **45.6** | **146.0** | |

---

## 3. Doctoral thesis

**Title.** *From Trans-Omic Networks to Knowledge Graphs: Encoding and Exploiting
Biological Semantics for Multi-Omics Data Integration with Graph Neural Networks*

**Problem.** In multi-omics the bottleneck is no longer measurement but
representation. Heterogeneous identifier spaces, platform-specific formats and the
absence of a shared substrate mean that biological entities, their relations and
per-sample quantitative measurements cannot be queried together. Trans-omic networks
model cross-layer biology but leave semantics implicit and therefore non-reusable;
biomedical knowledge graphs make semantics explicit and graph neural networks make it
learnable, yet the two lines rarely meet.

**Organising axis.** The degree and role of semantics in the representation, running
from implicit trans-omic networks, to shallow molecular priors, to a formal,
ontology-grounded, multi-scale knowledge graph.

**Research questions.**

1. Can an ontology-grounded backbone and per-sample multi-omic measurements coexist in
   one queryable substrate, and does semantic proximity carry a measurable quantitative
   signal?
2. Can heterogeneous graph learning discover biologically plausible relations from
   knowledge-graph topology alone?
3. Does explicit prior biological knowledge, injected as graph structure, improve
   molecular subtype classification, and where does any gain originate?
4. What does explicit multi-scale semantics (gene → pathway → ontology → disease) add
   over a single-scale molecular graph, in accuracy, robustness and interpretability?

**Four components of one framework.**

1. **Semantic substrate** — a PheKnowLator/OWL-NETS backbone (7.8 × 10⁵ grounded
   entities, 1.1 × 10⁷ typed relations) coupled to the multi-omic profiles of 12,653
   tumour samples across five layers at native per-sample precision, through a
   vector + index data model; four of the five layers map with ≥ 93% coverage.
2. **Relation discovery** — heterogeneous link prediction over the substrate, ranking
   candidate drug–target associations from graph topology alone, with no node features.
3. **Molecular-scale learning** — transcription factors as first-class nodes alongside
   genes and microRNAs, evaluated on the full 27-class pan-cancer subtype taxonomy.
4. **Multi-scale learning** — the same knowledge graph connecting the molecular layer to
   pathways, Gene Ontology terms and diseases as explicit node types, with typed message
   passing and a per-scale readout over three interchangeable heterogeneous backbones.

**Main results.** Ontology predicates carry a genuine quantitative prior that follows
the textbook hierarchy of biological proximity. Link prediction over the substrate
recovers known molecular associations and surfaces plausible new ones from topology
alone. The prior-knowledge model reaches macro-F1 0.79 on the 27-class task, and the
transcriptional layer can substitute the post-transcriptional one at no measurable cost.
The multi-scale model trades roughly one accuracy point for properties that matter in
the clinic: it degrades less than half as fast under feature scarcity (the accuracy
curves cross at 50–100 genes, below which the semantic scaffold wins outright), is
3× more stable across splits, and recovers subtype-specific pathway signatures matching
canonical disease drivers.

**Additional certification.** Doctor Europaeus requested; the mobility requirement is
satisfied by the Cambridge period.

---

## 4. Research lines

| Line | Description | Output |
| :--- | :--- | :--- |
| **KG-TransomicNet** | Property-graph substrate coupling a PheKnowLator-derived ontological backbone with per-cohort quantitative multi-omic collections (TCGA/TARGET) in a multimodal NoSQL database; vector + index model keeping entities and measurements jointly queryable. | Journal paper under review; Zenodo deposit |
| **PathogenKG** | Heterogeneous knowledge-graph embedding for cross-species antimicrobial drug repurposing: PPI networks of 31 bacterial pathogens, orthology, functional annotation and validated drug–target edges in one graph of 3M+ triples; training pipeline for extreme class imbalance (302 positive edges). | ECML PKDD 2026, Applied Data Science Track (CORE A), in press |
| **MOGNN-TF** | Transcription-factor-aware heterogeneous GNN for pan-cancer molecular subtype classification; three prior sources; four-axis ablation; significance testing across eleven seeds. | IEEE J-BHI, under review; Zenodo deposit |
| **MOKG-HGNN** | Multi-scale heterogeneous GNN integrating a biomedical knowledge graph, linking gene expression, copy number and microRNA up through pathway, Gene Ontology and disease nodes. | IEEE J-BHI Special Issue, under review; Zenodo deposit |
| **OmicsCouncil** | Patient representation as the trace of a multi-agent deliberation instead of a dense latent vector; typed evidence claims graded by a graph-mediated arbiter against a knowledge prior. | REHMED @ ECML PKDD 2026, in press |
| **REDAC** | Web-based R application for RNA-seq differential expression analysis driven by natural-language queries, with PubMed-grounded RAG over two LLMs for pathway interpretation. | Bioinformatics Advances, published |
| **Nutrigenetics** | Genome-scale curated dataset of nutrition-associated polymorphisms; MeSH-driven literature mining, GWAS cross-referencing, gene–diet co-occurrence analysis; downstream missense-variant study. | Two JBI papers, one IJMS paper, Zenodo dataset |
| **Semantic IR / RAG** | Graph-based information retrieval, BERTopic-driven topic modelling for genomics, retrieval-augmented generation and knowledge-graph-enhanced RAG in the nutrigenetic domain. | iiWAS 2024, IRonGraphs @ ECIR 2024, KES 2024, AIBio @ ECAI 2025 |
| **Digital pathology (collab.)** | Task-oriented semantic communication for pathology over wireless channels; audit of multimodal retrieval error structure against diagnostic severity scales. | AIMEH @ WiMob 2026 and Clinical-MIRF @ CIKM 2026, both accepted |

---

## 5. Publications

Totals: **8 published**, **2 in press**, **2 accepted**, **3 under review** — 15 peer-reviewed
items, plus 3 software/data deposits and 1 conference poster.

### Published — journal articles

1. **G. M. De Filippis**, D. Amalfitano, C. Russo, C. Tommasino, A. M. Rinaldi.
   *A systematic mapping study of semantic technologies in multi-omics data integration.*
   **Journal of Biomedical Informatics** 165:104809, 2025. DOI: 10.1016/j.jbi.2025.104809
2. **G. M. De Filippis**, M. Monticelli, A. Pollice, T. Angrisano, B. Hay Mele, V. Calabrò.
   *Computational strategies in nutrigenetics: constructing a reference dataset of
   nutrition-associated genetic polymorphisms.*
   **Journal of Biomedical Informatics** 167:104845, 2025. DOI: 10.1016/j.jbi.2025.104845
3. **G. M. De Filippis**, M. Monticelli, B. Hay Mele, V. Calabrò.
   *Missense variants in nutrition-related genes: a computational study.*
   **International Journal of Molecular Sciences** 26(19):9619, 2025. DOI: 10.3390/ijms26199619
4. **G. M. De Filippis**, P. Sahu, P. Ambrosio, S. Picascia, M. Lo Monte, I. Agliarulo,
   S. Di Paola, C. Russo, C. Tommasino, N. Normanno, D. Frezzetti, S. Parashuraman,
   A. M. Rinaldi, F. Russo. *REDAC: RNA-seq expression data analysis chatbot.*
   **Bioinformatics Advances** 6(1):vbaf321, 2026. DOI: 10.1093/bioadv/vbaf321

### Published — conference and workshop proceedings

5. **G. M. De Filippis**, A. M. Rinaldi, C. Russo, C. Tommasino. *Advanced topic modeling in
   genomics: towards personalized dietary recommendations through BERTopic analysis.*
   iiWAS 2024, LNCS, pp. 3–17, Springer. DOI: 10.1007/978-3-031-78093-6_1
6. **G. M. De Filippis**, A. M. Rinaldi, C. Russo, C. Tommasino. *Enhanced semantic
   understanding with graph-based information retrieval.* IRonGraphs @ ECIR 2024, CCIS,
   pp. 11–24, Springer. DOI: 10.1007/978-3-031-71382-8_2
7. D. Benfenati, **G. M. De Filippis**, A. M. Rinaldi, C. Russo, C. Tommasino.
   *A retrieval-augmented generation application for question-answering in nutrigenetics
   domain.* KES 2024, Procedia Computer Science 246:586–595. DOI: 10.1016/j.procs.2024.09.467
8. **G. M. De Filippis**, D. Benfenati, G. De Carlo, A. M. Rinaldi. *Knowledge
   graph-enhanced retrieval-augmented generation for nutrigenetics.* AIBio @ ECAI 2025,
   CCIS, pp. 91–104, Springer. DOI: 10.1007/978-3-032-17216-7_8

### In press

9. **G. M. De Filippis**, A. M. Rinaldi, C. Tommasino. *PathogenKG: cross-species drug
   repurposing via heterogeneous knowledge graph link prediction.* ECML PKDD 2026,
   Applied Data Science Track, Naples, 7–11 September 2026. LNCS, Springer. **CORE A.**
10. **G. M. De Filippis**, A. M. Rinaldi, C. Tommasino. *Deliberation as representation:
    knowledge-grounded multi-agent embeddings for multi-omic breast-cancer subtyping.*
    REHMED workshop @ ECML PKDD 2026, Naples. Springer post-proceedings.

### Accepted

11. D. Benfenati, **G. M. De Filippis**, A. M. Rinaldi, C. Russo, C. Tommasino.
    *Task-oriented semantic communication for digital pathology over wireless channels.*
    AIMEH workshop @ IEEE WiMob 2026. (Authors in alphabetical order.)
12. *Retrieval errors respect the diagnostic scale: an audit of multimodal retrieval for
    breast lesions.* Clinical-MIRF workshop @ CIKM 2026. *(author list to be completed)*

### Under review

13. **G. M. De Filippis**, A. M. Rinaldi. *Modeling omics with semantics for dynamic
    construction of knowledge-based trans-omic networks.* Computer Methods and Programs
    in Biomedicine, Elsevier.
14. **G. M. De Filippis**, A. M. Rinaldi, C. Tommasino. *MOGNN-TF: transcription-factor-aware
    heterogeneous graph neural networks for pan-cancer molecular subtype classification.*
    IEEE Journal of Biomedical and Health Informatics.
15. **G. M. De Filippis**, A. M. Rinaldi, C. Tommasino. *MOKG-HGNN: a multi-scale
    heterogeneous graph neural network integrating a biomedical knowledge graph for
    pan-cancer subtype classification.* IEEE Journal of Biomedical and Health Informatics,
    Special Issue.

### Software and data (Zenodo)

- **KG-TransomicNet**: semantic–quantitative property graph of PheKnowLator and multi-omics.
  v1.0.0, 2026. DOI: 10.5281/zenodo.21629419
- **MOGNN-TF**: code and supplementary material. v1.1.0, 2026. DOI: 10.5281/zenodo.21475911
- **MOKG-HGNN**: code and supplementary material. v1.0.0, 2026. DOI: 10.5281/zenodo.22047821
- Nutrigenetics reference dataset, 2024. https://zenodo.org/records/14052302

### Poster

- **G. M. De Filippis**, M. Monticelli, A. Pollice, T. Angrisano, B. Hay Mele, V. Calabrò.
  *Data-driven nutrigenetics: crafting and mining a curated repository of nutritional
  genomic polymorphisms.* BBCC 2023, Naples, 4–7 December 2023.

---

## 6. Research period abroad

**University of Cambridge, Computer Laboratory — 1 March to 30 June 2025 (4 months)**
Research unit of Prof. Pietro Liò.

- Biomedical knowledge-graph embeddings and retrieval systems.
- Graph neural networks (GCN, GAT) for node classification and link prediction, benchmarked
  on Cora, Cornell and Chameleon.
- Prior-knowledge integration in multi-omics GNNs (MOGONET, MOGAT, MoGCN, MPK-GNN).
- Cross-species knowledge-graph construction and link prediction (GCN, CompGCN) for drug
  repurposing: the foundation of PathogenKG.
- GraphRAG framework: LLM-driven knowledge-graph construction and retrieval augmentation.
- Attended 20+ seminars of the Cambridge, Oxford and Cambridge–ELLIS series (see §10).

---

## 7. Conference presentations and talks

| Date | Event | Role |
| :--- | :--- | :--- |
| 4–7 Dec 2023 | BBCC 2023, Naples | Poster |
| 2–4 Dec 2024 | iiWAS 2024, Bratislava | Speaker |
| 9 Oct 2024 | CQB Scientific Day 2024, Naples | Poster |
| 26 Oct 2025 | AIBio @ ECAI 2025, Bologna | Speaker |
| 31 Oct 2025 | CQB PhD Day, Naples | Speaker |
| 7–11 Sep 2026 | ECML PKDD 2026, Naples — Applied Data Science Track | Speaker |
| 7–11 Sep 2026 | REHMED workshop @ ECML PKDD 2026, Naples | Speaker |

---

## 8. Academic service

- **Program Committee**, 1st Workshop on Artificial Intelligence for Biomedical Data
  (AIBio 2025) @ ECAI 2025, Bologna, 25–26 October 2025 — reviewed 9 submissions.
- **Program Committee**, REHMED workshop @ ECML PKDD 2026, Naples — reviewed 3 submissions.
- **Reviewer**, Soft Computing, special issue *AI and Knowledge Graphs in Smart Industry and
  Health Applications* — reviewed 5 submissions.
- **Volunteer organising staff**, ECML PKDD 2026, Naples.

---

## 9. Teaching and student supervision

Course: **Information Retrieval and Natural Language Processing**, MSc in Computer
Engineering, University of Naples Federico II (Prof. Antonio Maria Rinaldi, IKNOS-DIETI Lab).

- **Year I, Bm6** (0.2 credits) — Co-advisor (correlatore) of the Bachelor's thesis of Francesco Floriano, "Tecniche e Strumenti per l'Integrazione e la Visualizzazione di Dati Biomedici nei Knowledge Graphs", A.Y. 2023/2024, University of Naples Federico II: supervision and technical guidance (about 1 month).
- **Year II, Bm3** (0.4 credits) — Invited seminar lecturer in the Information Retrieval course (Master's in Computer Engineering, Prof. A. M. Rinaldi), title: "LLM Based Topic Modeling with BERTopic", 16/04/2025 (2 hours).
- **Year III, Bm3** (0.8 credits) — Co-advisor (correlatore) of the Master's thesis in Engineering of Giuseppe La Terza: supervision, technical guidance and revision of the thesis up to the graduation in March 2026 (about 6 months).
- **Year III, Bm4** (0.4 credits) — Invited seminar lecturer in the Information Retrieval and NLP course (Prof. Antonio Maria Rinaldi), title: "LLM-Based Topic Modeling with BERTopic", May 2026 (2 hours).
- **Year III, Bm4** (0.2 credits) — Curator of the student homework assignment "Biomedical Knowledge Graphs for Information Retrieval in Precision Medicine" for the Information Retrieval course (Prof. A. M. Rinaldi, A.Y. 2024/2025), IKNOS-DIETI Lab - University of Naples Federico II.
- **Year III, Bm6** (0.2 credits) — Evaluation and grading of the student homework assignments for the Information Retrieval exam (Prof. A. M. Rinaldi, A.Y. 2024/2025), IKNOS-DIETI Lab - University of Naples Federico II.

Theses co-supervised:

- **Francesco Floriano**, BSc thesis, *Tecniche e Strumenti per l'Integrazione e la
  Visualizzazione di Dati Biomedici nei Knowledge Graphs*, A.Y. 2023/2024.
- **Giuseppe La Terza**, MSc thesis in Computer Engineering, graduated March 2026.

---

## 10. Doctoral training

### 10.1 Taught courses

| Course | Credits | Hours | Year |
| --- | ---: | ---: | :--- |
| First-year course block (Molecular and Cellular Biology; Computational Genomics; Mathematics and Statistics for Life Sciences; Programming and Algorithmic Thinking; Introduction to Linux; Introduction to Synthetic Biology) | 8 | n.a. | I |
| Biochemical Informatics | 6.4 | 12 | I, II |
| Data Analysis and Visualisation | 3.8 | 19 | II |
| Molecular and Cellular Biology | 3.2 | 16 | II |
| Intelligent Data Engineering and Analytics | 3 | n.a. | I |
| Introduction to Next Generation Sequencing | 2.4 | 12 | II |
| Metagenomics Data Analysis | 2 | n.a. | II |
| Biocrystallography | 1.8 | 9 | II |
| Introduction to Modelling DNA | 1.6 | 8 | II |
| Bioinformatics for Genomics | 1.6 | 8 | II |
| Introduction to Open Science | 0.4 | 2 | II |
| **Total** | **34.2** | | |

### 10.2 Seminars attended — 47 in total, 10.6 credits

Attended in person at the University of Naples Federico II (DIETI and Biology), the
National Research Council (CNR) and the University of Cambridge; all others online,
within international seminar series including the School of Medicine Science Seminar
Series of Cardiff University and the Cardiff and Vale University Health Board, the
University of Oxford series and the ACM TechTalks.

> Note on dates: in the original bimonthly reports the sixteen seminars attended during
> the Cambridge period (March–June 2025) carry the year 2024, a typing error. They are
> reported here with the correct year, inferred from the reporting period of each
> bimester.

**Year I (2023/24) — 10 seminars, 2.8 credits**

| Date | Title | Speaker | Host / series |
| :--- | :--- | :--- | :--- |
| 13/05/2024 | Machine Learning applied to Biology: future opportunities for biologists | Francesco Russo (CNR-IEOS) | DIETI / CQB, University of Naples Federico II |
| 31/05/2024 | Matlab Expertise: Unusual Implementations | Salvatore Capuozzo (DIETI-Unina); 31/05/2024 | DIETI / CQB, University of Naples Federico II |
| 05/06/2024 | Integrated Approaches In Toxicology and Pharmacology | Prof. Dario Greco (University of Helsinki) | DIETI / CQB, University of Naples Federico II |
| 07/06/2024 | Social Network Analysis: Methods and Applications | Prof. Tanmoy Chakraborty IIIT-Delhi, Delhi, India, Infosys Centre for Artificial Intelligence (CAI) | DIETI / CQB, University of Naples Federico II |
| 26/06/2024 | On the Single Allocation hub location problems: New formulations and Solving Methods | Prof. A.M. Rodríguez-Chía, University of Cadiz, Cadiz, Spain, Department of Estadistica e Investigación Operativa | DIETI / CQB, University of Naples Federico II |
| 26/06/2024 | Using support vector machines for feature selection and outlier detection | Prof. Marta Baldomero-Naranjo, University of Cadiz, Cadiz, Spain, Department of Estadistica e Investigación Operativa | DIETI / CQB, University of Naples Federico II |
| 28/06/2024 | Including elastic demand in the hub line location problem | Prof. A.M. Rodríguez-Chía, University of Cadiz, Cadiz, Spain, Department of Estadistica e Investigación Operativa | DIETI / CQB, University of Naples Federico II |
| 28/06/2024 | The maximal covering location problem with edge downgrades | Prof. Marta Baldomero-Naranjo, University of Cadiz, Cadiz, Spain, Department of Estadistica e Investigación Operativa | DIETI / CQB, University of Naples Federico II |
| 19/09/2024 | Generative AI to accelerate prediction and design in biomedicine and sustainability | Prof. Sept Prof. Debora Marks (Harvard University) | DIETI / CQB, University of Naples Federico II |
| 15/10/2024 | Learning in Nonstationary environments | Prof. Cesare Alippi; Swiss AI Lab IDSIA, Università della Svizzera italiana, Lugano, Switzerland, Politecnico di Milano, Milano, Italy | DIETI / CQB, University of Naples Federico II |

**Year II (2024/25) — 28 seminars, 5.8 credits**

| Date | Title | Speaker | Host / series |
| :--- | :--- | :--- | :--- |
| 12/12/2024 | Leveraging metabolomics and biological networks for functional insights into microbiome | Jianguo Xia, Associate Professor and Canada Research Chair (bioinformatics and big data analytics) at McGill University. | Barbara Szomolay, Cardiff University School of Medicine, Cardiff CF14 4XN, UK |
| 16/01/2025 | Can we Rely on AI? Reliability Issues in Artificial Neural Networks and Potential Solutions for Autonomous Vehicles | Prof. Paolo Rech; University of Trento, Trento, Italy | Dr. Edoardo Giusto (DIETI, UniNA) |
| 17/01/2025 | The Good, the Bad, and the Ugly in Quantum Computing: Computational Power, Intrinsic Noise, and Transient Faults | Prof. Paolo Rech; University of Trento, Trento, Italy | Dr. Edoardo Giusto (DIETI, UniNA) |
| 05/03/2025 | Generative modelling for de novo design of therapeutics | Dr. Joe Watson and Dr. Emile Mathiew | Prof. Pietro Lio', University of Cambridge |
| 06/03/2025 | On Vanishing Gradients, Over-Smoothing, and Over-Squashing in GNNs: Bridging Recurrent and Graph Learning | Alvaro Arroyo, University of Oxford | Prof. Pietro Lio', University of Cambridge |
| 13/03/2025 | Multimodal AI in Spatial Biology | Konstantin Hemker, University of Cambridge | Prof Mateja Jamnik, University of Cambridge |
| 17/03/2025 | Accumulate Structure Prediction of Biomolecular Interactions with AlphaFold3 | Augustin Zidek, Research Engineer, Google DeepMind | Prof. Pietro Lio', University of Cambridge |
| 17/03/2025 | From Machine Learning to Machine Reasoning: Deterministic Neural Syllogistic Reasoning (Part 1) | Tiansi Dong | Prof. Pietro Lio', University of Cambridge |
| 17/03/2025 | Introduction to Hypergraph Deep Learning | Iulia Duta, University of Cambridge | Prof. Pietro Lio', University of Cambridge |
| 17/03/2025 | Learning String Theory Formulae with AI | Viktor Mirjanie, University of Cambridge | Prof. Pietro Lio', University of Cambridge |
| 25/03/2025 | Using the immune system to fight cancer | Professor Klaus Okkenhaug, James Jones and Professor Rahul Roychoudhuri | Cambridge Festival Event, Department of Pathology |
| 30/03/2025 | From Machine Learning to Machine Reasoning: Deterministic Neural Syllogistic Reasoning (Part 2) | Tiansi Dong | Prof. Pietro Lio', University of Cambridge |
| 19/05/2025 | On Activation and Normalization layers in Graph Neural Networks | Moshe Eliasof, research associate, University of Cambridge | Prof. Pietro Lio', University of Cambridge |
| 19/05/2025 | Graph Neural Networks and Hypergraph Neural Networks: A direction Awakening | Stefano Fiorini PhD, IIT Genova | Prof. Xiaowen Dong, University of Oxford |
| 21/05/2025 | AI Accelerators 101 | Daniel Kroening, AWS | Prof. Tobias Grosser, University of Cambridge |
| 27/05/2025 | A Mixture-based Framework for guiding Diffusion Models | Alain Oliviero-Durmus, Ecole Polytecnique | "Cambridge Ellis Unit" Series |
| 27/05/2025 | Computer Vision: Between Forensics and Biomedical Imaging | Giovanna Maria Dimitri PhD | Prof. Pietro Lio', University of Cambridge |
| 28/05/2025 | Hard and Soft Equivalence Priors via Steerable CNNs | Gabriele Cesa, senior engineer, QualcomAI | Prof. Pietro Lio', University of Cambridge |
| 04/06/2025 | Positional Encoding in LLMs | Valeria Ruscio PhD | Prof. Pietro Lio', University of Cambridge |
| 11/09/2025 | Viral Exploitations of the host – from cell death to parasite co-infection | Dr. Tiffany Reese, University of Texas | Barbara Szomolay, Cardiff University |
| 18/09/2025 | Understanding Immune Aging | Maxim N. Artyomou. Washington University | Barbara Szomolay, Cardiff University |
| 29/09/2025 | Extending Abstract Augmentation: Dealing with Uncertanity and Subjective Views | prof. Sergio Flesca, DIMES | Prof. Sansone Carlo, Prof. Elio Masciari DIETI Unina |
| 15/10/2025 | A Gentle and Incomplete Introduction to Bilevel Optimization | Prof. Martin Schmidt | Prof. Maurizio Boccia, Prof. Claudio Sterle, Prof. Adriano Masone, DIETI - Unina |
| 16/10/2025 | Local Explainability in Machine Learning: A collective framework | Prof. Dolores Romero Morales | Prof. Maurizio Boccia, Prof. Claudio Sterle, Prof. Adriano Masone, DIETI - Unina |
| 16/10/2025 | Optimization in Transportation and Logistics | Prof. Maria Grazia Speranza | Prof. Maurizio Boccia, Prof. Claudio Sterle, Prof. Adriano Masone, DIETI - Unina |
| 17/10/2025 | Exact and ML-guided Matheuristic approaches for a Truck-and-Drone delivery problem | Prof. Maurizio Boccia | Prof. Maurizio Boccia, Prof. Claudio Sterle, Prof. Adriano Masone, DIETI - Unina |
| 23/10/2025 | AI and the Future of Healthcare: Lessons from the Transition | Dr. Eric, University of Pennsylvania | Barbara Szomolay, Cardiff University |
| 30/10/2025 | Developing tools for high-throughput spatial multi-omics | Dr. Sanja Vicković, New York Genome Center | Barbara Szomolay, Cardiff University |

**Year III (2025/26) — 9 seminars, 2 credits**

| Date | Title | Speaker | Host / series |
| :--- | :--- | :--- | :--- |
| 16/04/2026 | How MHC I Peptides Are Generated for Viral and Cancer Immunosurveillance | Prof. Jonathan Yewdell (Senior Investigator, Cellular Biology and Immunology Section, National Institutes of Health) | School of Medicine Science Seminar Series — Cardiff University / Cardiff and Vale University Health Board, UK |
| 28/05/2026 | Mechanisms Controlling Gene Expression in Response to Reduced Oxygen Availability (Hypoxia) | Prof. Sonia Rocha (Department of Biochemistry, Cell and Systems Biology, University of Liverpool) | School of Medicine Science Seminar Series — Cardiff University / Cardiff and Vale University Health Board, UK |
| 04/06/2026 | Inside an LLM Agent: A From-Scratch Walkthrough | Val Andrei Fajardo (AI Engineering and Research Lead, Carlyle; ex founding engineer at LlamaIndex; PhD in Statistics and Applied Probability, University of Waterloo) | ACM TechTalk — Association for Computing Machinery |
| 25/06/2026 | Advanced Control Schemes for Multivariable Engineering Processes: Recent Trends, Applications, and Challenges | Dr. G. Lloyds Raja (Assistant Professor, Department of Electrical Engineering, National Institute of Technology Patna, India) | Prof. Laura Celentano — DIETI, University of Naples Federico II |
| 25/06/2026 | Metabolic Control of T Cells in Health and Disease | Dr. Alison Ringel (Assistant Professor, Biology Program, Massachusetts Institute of Technology) | Dr. Barbara Szomolay — Cardiff University, UK |
| 09/07/2026 | Microbiome-Derived Metabolites Regulate the Interferon Immune Tone | Dr. Joel Babdor (Assistant Professor, University of Pennsylvania) | School of Medicine Science Seminar Series — Cardiff University / Cardiff and Vale University Health Board, UK |
| 16/07/2026 | From Genomes to Multiomics: Technologies Enabling the Next Generation of Biological Discovery | Dr. Andrew Slatter (Senior Director, Scientific Research, Illumina) | School of Medicine Science Seminar Series (Dr. Barbara Szomolay) — Cardiff University / Cardiff and Vale University Health Board, UK |
| 23/07/2026 | Generative AI to Predict and Engineer Human Tissues and Cells | Dr. Mo Lotfollahi (Group Leader, Wellcome Sanger Institute and University of Cambridge) | School of Medicine Science Seminar Series (Dr. Barbara Szomolay) — Cardiff University / Cardiff and Vale University Health Board, UK |
| 10/09/2026 | Identifying & Counteracting the Impact of Environmental Stress on Tissue Function | Prof. Alex K. Shalek (Director of the Institute for Medical Engineering and Science, IMES, and of the Health Innovation Hub, Massachusetts Institute of Technology) | Dr. Barbara Szomolay — Cardiff University, UK |


---

## 11. Collaborations

| Partner | Topic |
| :--- | :--- |
| Computer Laboratory, University of Cambridge (Prof. Pietro Liò) | Graph neural networks and knowledge-graph embeddings for multi-omic integration |
| CNR-IEOS, Institute for Endocrinology and Experimental Oncology (Dr. Francesco Russo) | REDAC chatbot; transcriptomics and co-expression of Golgi glycosylation genes; knowledge-graph-based bio-data integration |
| Department of Biology, University of Naples Federico II (Prof. Viola Calabrò, Dr. Bruno Hay Mele) | Nutrigenetics: polymorphism dataset, missense-variant analysis |
| Department of Molecular Medicine and Medical Biotechnology (DMMBM), Federico II | Multi-omics integration from ovarian carcinoma cell lines, RNA-binding proteins |
| FAIR — Future Artificial Intelligence Research (PNRR programme) | Ontology-based improvement of the semantic structure of biological datasets |
| CINI-AIIS national laboratory, Federico II unit | Collective contribution on AI for healthcare |

---

## 12. Research activity log

Verbatim from the eighteen bimonthly reports, chronological.

**Year I, bimester 1** (1.11.2023 – 31.12.2023) — 4 research credits
- 1. Study on integrative bioinformatics methods for knowledge representation of biological processes and molecular networks in order to build trans-omics networks.
- 2. Preparation of a paper for the Special Issue "Applications of Deep Learning in Bioinformatics and Image Processing" in the journal Information. The planned paper is titled "Exploring Human Dietary Sensitivities via BERTopic: A Bioinformatics Approach to Understand Genetic Polymorphisms" (Giovanni Maria De Filippis, Antonio Maria Rinaldi, Cristiano Russo, and Cristian Tommasino) https://www.mdpi.com/journal/information/special_issues/235 517LOHM#editors
- 3. Participation in the Bioinformatics and Computational Biology Conference, held from December 4-7, 2023 at Naples, Italy. The conference was hosted by University "Parthenope" https://www.bbcc-meetings.it/bbcc2023/
- 4. Presentation of a poster at the Bioinformatics and Computational Biology Conference 2023. Poster title: "Data-Driven Nutrigenetics: Crafting and mining a Curated Repository of Nutritional Genomic Polymorphisms," (Giovanni Maria De Filippis, Maria Monticelli, Alessandra Pollice, Tiziana Angrisano, Bruno Hay Mele, and Viola Calabrò) https://www.bbcc-meetings.it/wpcontent/uploads/2023/12/BBCC2023-Poster-list.pdf

**Year I, bimester 2** (1.1.2024 – 28.2.2024) — 4 research credits
- 1. Submission of our paper titled "Machine Learning Models for Unveiling the Impact of Human Genetic Variations on Dietary Adverse Reactions: An Analysis Using BERTopic" (Giovanni Maria De Filippis, Antonio Maria Rinaldi, Cristiano Russo, and Cristian Tommasino) to the journal "Interdisciplinary Sciences: Computational Life Sciences (Springer)".
- 2. Work on a Systematic Mapping Study investigating the application of Knowledge-Based Approaches for Multi-Omics Data Integration.
- 3. Contribution to the FAIR program (Future Artificial Intelligence Research). Contribution: improvement of biological datasets semantic structure with an ontology-based approach.

**Year I, bimester 3** (1.3.2024 – 30.4.2024) — 4 research credits
- 1. Submission of our conference paper titled " Advanced Topic Modeling in Genomics: Towards Personalized Dietary Recommendations Through BERTopic Analysis" De Filippis G.M., Rinaldi A.M., Russo C., and Tommasino C.) to the Conference "The 26th International Conference on Big Data Analytics and Knowledge Discovery (DAWAK 2024)".
- 2. Submission of our conference paper titled " A Retrievalaugmented Generation application for Question-Answering in Nutrigenetics Domain " (Benfenati D., De Filippis G.M., Rinaldi A.M., Russo C., and Tommasino C.) to the Conference "28th International Conference on Knowledge-Based and Intelligent Information & Engineering Systems (KES 2024)".
- 3. Study on Retrieval Augmented Generation applications on biological domain
- 4. Work on a Systematic Mapping Study investigating the application of Knowledge-Based Approaches for Multi-Omics Data Integration.

**Year I, bimester 4** (1.5.2024 – 30.6.2024) — 5 research credits
- 1. Submission of the paper titled "Advanced Topic Modeling in Genomics: Towards Personalized Dietary Recommendations Through BERTopic Analysis" to The 26th International Conference on Information Integration and Web Intelligence (iiWAS 2024).
- - Authors: Giovanni Maria De Filippis; Antonio Maria Rinaldi; Cristiano Russo; Cristian Tommasino
- 2. Submission and review of the work titled "Enhanced Semantic Understanding with Graph-based Information Retrieval," which has been ACCEPTED for publication in "Advances in Graph-Based Approaches in Information Retrieval" (edited by Springer), the proceedings volume of the IRonGraphs 2024 Workshop, jointly held with ECIR 2024 in Glasgow.
- - Authors: - Authors: Giovanni Maria De Filippis; Antonio Maria Rinaldi; Cristiano Russo; Cristian Tommasino
- 3. Research activities at the CNR-IEOS 2th unit in the field of Transcriptomics and Co-expression of Golgi glycosylationrelated genes.
- 4. Work on the Systematic Mapping Study entitled "Semantic Technologies in Bioinformatics and Omics: State of the Art and Future Prospects" investigating the application of Knowledge-Based Approaches for Multi-Omics Data Integration.
- 5. Work on a Retrieval Augmented Generation system based on PubMed Central for the application in the biological domain
- 6. Work on a Bio-data integration project based on Knowledge-Graphs in collaboration with CNR-IEOS 2th unit

**Year I, bimester 5** (1.7.2024 – 31.8.2024) — 4 research credits
- 1. Establishment of a collaboration with DMMBM Department (Unina) on multi-omics data integration project from ovarian carcinoma cell lines focusing on RNAbp.
- 2. Acceptance and submission for camera ready of the paper titled "Advanced Topic Modeling in Genomics: Towards Personalized Dietary Recommendations Through BERTopic Analysis" to The 26th International Conference on Information Integration and Web Intelligence (iiWAS 2024).
- 3. Terminating the work on our review titled "Systematic Mapping Study entitled "A Systematic Mapping Study of Semantic Technologies in Multi-Omics Integration" investigating the application of Knowledge-Based Approaches for Multi-Omics Data Integration.
- 4. Dataset curation for our contribution to the FAIR program (Future Artificial Intelligence Research). Contribution: "improvement of biological datasets semantic structure with an ontology-based approach"
- 5. Activity as reviewer for SOCO special issue "S.I. : AI and Knowledge Graphs in Smart Industry and Health Applications". Complete assignment for five article submissions.

**Year I, bimester 6** (1.9.2024 – 31.10.2024) — 4 research credits
- 1. Submission of our review titled "Systematic Mapping Study entitled "A Systematic Mapping Study of Semantic Technologies in Multi-Omics Integration" to Journal of Biomedical Informatics (JBI) [Under Review]
- 2. Partecipation and poster presentation at CQB Scientific Day 2024 - October, 9 2024
- 3. Pilot experimentation to construct multi-omic networks using tools like NetOmics, alongside developing ontology based biomedical knowledge graphs through PheKnowLator (PKT).

**Year II, bimester 1** (1.11.2024 – 31.12.2024) — 5 research credits
- Definition of a knowledge-driven framework for Integrative Multi-Omics Networks in collaboration with the Department of Molecular Medicine and Medical Biotechnology (Unina) Revision submission of the paper "Computational Strategies in Nutrigenetics: Constructing a Reference Dataset of Nutrition-Associated Genetic Polymorphisms" to Journal of Biomedical Informatics, Nov 12, 2024 Presentation of the paper "Advanced Topic Modeling in Genomics: Towards Personalized Dietary Recommendations Through BERTopic Analysis" (DOI: 10.1007/978-3-03178093-6_1) in the Conference iiWAS 2024: The 26th International Conference on Information Integration and Web Intelligence in Bratislava, Slovakia. Dec 2, 2024 - Dec 4, 2024

**Year II, bimester 2** (1.1.2025 – 28.2.2025) — 5 research credits
- Research and modeling of a knowledge-driven framework for Integrative Multi-Omics Networks Definition and preparation for research period aboard at Prof. Pietro Liò research unit at Cambridge Computer Laboratory starting from 1th March to 30th June. Major Revision and submission of the review "A Systematic Mapping Study of Semantic Technologies in Multi-Omics Data Integration" to Journal of Biomedical Informatics, Feb 02, 2024 Minor Revision and submission of the review "Computational Strategies in Nutrigenetics: Constructing a Reference Dataset of Nutrition-Associated Genetic Polymorphisms" to Journal of Biomedical Informatics, Feb 26, 2024

**Year II, bimester 3** (1.3.2025 – 30.4.2025) — 5 research credits
- First two months of an international internship at Prof. Pietro Liò's research unit, Cambridge Computer Laboratory. Conducted research on biomedical knowledge-graph embeddings and retrieval systems. Studied Graph Neural Networks applications on biological data. Investigated the integration of single-cell multi-omic data using Graph Neural Networks and prior knowledge for precision medicine. Delivered a seminar as a lecturer for the Information Retrieval course (Master's in Computer Engineering, Unina) titled "LLM Based Topic Modeling with BERTopic" on 16/04/2025. Published a review titled "A Systematic Mapping Study of Semantic Technologies in Multi-Omics Data Integration" in the Journal of Biomedical Informatics. [Link: https://pubmed.ncbi.nlm.nih.gov/40154721/]

**Year II, bimester 4** (1.5.2025 – 30.6.2025) — 6 research credits
- Last two months of an international internship at Prof. Pietro Liò's research unit, Cambridge Computer Laboratory.
- Research on Graph Neural Networks (GCN and GAT) for classification and link prediction on standard datasets (Cora, Cornell, Chameleon)
- Study of prior knowledge integration in Multi-Omics Graph Neural Networks (MOGONET, MOGAT, MPK-GNN)
- Development of GraphRAG framework: LLM-driven Knowledge Graph construction and GraphRAG augmentation
- Cross-species Knowledge Graph construction and link prediction tasks (GCN and CompGCN) for drug repurposing applications
- Publication in Journal of Biomedical Informatics (Q1) - "Computational strategies in nutrigenetics: Constructing a reference dataset of nutrition-associated genetic polymorphisms" (First Author) - July 2025
- Contribution to REDAC (RNASeq Expression Data Analysis Chatbot) for transcriptomic analysis using LLM technology
- Submission to AIBio Workshop - "Knowledge Graph-Enhanced Retrieval-Augmented Generation for Nutrigenetics" (First Author)
- Paper submission in AIBio Workshop - "EDACA: A WebBased Application for Machine Learning Classification of RNASeq Expression Data", collaboration with F. Russo CNR IEOS
- Paper submission in MDPI Special Issue - "What Proteins Reveal About Nutrition Genes: Mining Functional Variation Across Nutrigenetics Landscapes", collaboration with B. Hay Mele, Dip. Biologia, Università di Napoli Federico II

**Year II, bimester 5** (1.7.2025 – 31.8.2025) — 5 research credits
- Research on Graph Neural Networks (GCN and GAT) for classification and link prediction tasks on standard benchmark datasets (Cora, Cornell, Chameleon)
- Study on multi-omics cancer subtype classification methods (MOGONET, MOGAT, MoGCN) and integration of prior knowledge networks in multi-omics graph neural networks (MPK-GNN)
- Development of REDAC (RNA-seq Expression Data Analysis Chatbot) for transcriptomic analysis using large language model technology, in collaboration with Dr. Francesco Russo (CNR-IEOS)
- Service as Program Committee member for AIBio 2025 Workshop: peer review of 9 submitted papers

**Year II, bimester 6** (1.9.2025 – 31.10.2025) — 6 research credits
- Research on biomedical knowledge graph applications for trans-omics networks with graph database integration using TCGA PanCan multi-omics data
- Benchmark evaluation of GNN-based cancer subtype classification using prior knowledge networks (AMOGEL, MPK-GNN), with investigation of novel TFlink prior integration approaches
- Paper revision: "REDAC: RNA-seq Expression Data Analysis Chatbot" in collaboration with Dr. Francesco Russo (CNR-IEOS), submitted to Bioinformatics Advances (Q1)
- Conference paper presentation at AIBio Workshop (ECAI
- 2025) in Bologna, title: "Knowledge Graph-Enhanced Retrieval-Augmented Generation for Nutrigenetics", date: 26th October 2025
- Paper revision and publication in IJMS Special Issue (Q1): "Missense Variants in Nutrition-Related Genes: A Computational Study", in collaboration with B. Hay Mele, Dipartimento di Biologia, Università di Napoli Federico II (https://doi.org/10.3390/ijms26199619)
- Presentation of research advances at CQB PhD Day, 31st October 2025

**Year III, bimester 1** (1.11.2025 – 31.12.2025) — 5 research credits
- Study on heterogeneous knowledge graph (KG) embedding methods for biomedical link prediction, with a focus on cross-species antimicrobial drug repurposing: foundational work for the PathogenKG.
- Design and construction of a heterogeneous biomedical KG integrating protein–protein interaction networks from 31 bacterial pathogens, orthology relationships, functional annotations and validated drug–target associations (over 3 million triples).
- Study and development of transcription-factor-aware heterogeneous graph neural networks for pan-cancer molecular subtype classification: start of the MOGNN-TF research line, integrating protein interactions, post-transcriptional and transcriptional regulation into a single multi-relational graph.

**Year III, bimester 2** (1.1.2026 – 28.2.2026) — 5 research credits
- Continued research and experimental work on PathogenKG: design of a training pipeline combining focal loss, typeconstrained negative sampling and targeted oversampling to handle the extreme class imbalance (302 known drug–target edges among millions of triples); comparison of heterogeneous GNN encoders.
- Research and development on the KG-Transomics project: a property-graph infrastructure coupling a PheKnowLatorderived semantic backbone with per-cohort quantitative multi-omic collections (TCGA/TARGET data), towards dynamic construction of knowledge-based trans-omic networks.
- Continued experimental work and evaluation of MOGNN-TF on the 27-class TCGA Pan-Cancer taxonomy, including ablation studies on the prior-knowledge sources (protein interactions, microRNA-target and transcription-factor regulation).

**Year III, bimester 3** (1.3.2026 – 30.4.2026) — 5 research credits
- Finalization and submission of the conference paper "PathogenKG: Cross-Species Drug Repurposing via Heterogeneous Knowledge Graph Link Prediction" (G. M. De Filippis, A. M. Rinaldi, C. Tommasino) to ECML-PKDD 2026 [later accepted for presentation].
- Continued research and experimental work on the KGTransomics infrastructure (multimodal NoSQL property graph, over 780,000 ontologically grounded entities and 11 million typed relations across 12,000+ samples) in preparation for journal submission.
- Continued development and validation of MOGNN-TF, including statistical significance testing (Friedman and corrected Wilcoxon tests across eleven seeds) towards journal submission.

**Year III, bimester 4** (1.5.2026 – 30.6.2026) — 5 research credits
- Submission of the journal paper "Modeling Omics with Semantics for Dynamic Construction of Knowledge-Based Trans-Omic Networks" (KG-Transomics; G. M. De Filippis, A. M. Rinaldi) to the Journal of Biomedical Informatics (JBI); after the first decision, preparation of a revised version for a new submission (in progress).
- Submission of the journal paper "MOGNN-TF: TranscriptionFactor-Aware Heterogeneous Graph Neural Networks for Pan-Cancer Molecular Subtype Classification" (G. M. De Filippis, A. M. Rinaldi, C. Tommasino) to the IEEE Journal of Biomedical and Health Informatics (IEEE-JBHI).
- Research, development and submission of the workshop paper "Deliberation as Representation: Knowledge-Grounded Multi-Agent Embeddings for Multi-Omic Breast-Cancer Subtyping" (OmicsCouncil) to the REHMED workshop @ ECML-PKDD 2026.
- Contribution to the collective paper "Advances in AI for Healthcare: Research Activities of CINI-AIIS at Federico II University" submitted to Ital-IA 2026 — AI per la Medicina e la Salute.
- Member of the Program Committee of the REHMED workshop @ ECML-PKDD 2026: completion of 3 paper reviews.

**Year III, bimester 5** (1.7.2026 – 31.8.2026) — 10 research credits
- Submission (July 2026) of the journal paper "MOGNN-TF: Transcription-Factor-Aware Heterogeneous Graph Neural Networks for Pan-Cancer Molecular Subtype Classification" (G. M. De Filippis, A. M. Rinaldi, C. Tommasino) to the IEEE Journal of Biomedical and Health Informatics (IEEE-JBHI) — currently under review
- Submission (August 2026) of the journal paper "MOKG-HGNN: A Multi-Scale Heterogeneous Graph Neural Network Integrating a Biomedical Knowledge Graph for Pan-Cancer Subtype Classification" to the IEEE-JBHI Special Issue — currently under review; design, training and evaluation of the multi-omic knowledge-graph heterogeneous GNN architecture
- Camera-ready preparation of the accepted conference paper "PathogenKG: Cross-Species Drug Repurposing via Heterogeneous Knowledge Graph Link Prediction" (ECML-PKDD 2026) and preparation of the corresponding presentation
- Revision and new submission of the journal paper "Modeling Omics with Semantics for Dynamic Construction of Knowledge-Based Trans-Omic Networks" (KG-TransomicNet) to Computers in Biology and Medicine (Elsevier), following the first-round decision [subsequently rejected]
- Collaboration on the paper "Task-Oriented Semantic Communication for Digital Pathology over Wireless Channels", accepted (July 2026) at the AIMEH workshop @ WiMob 2026
- Research and experimental work on the collaborative study "Retrieval Errors Respect the Diagnostic Scale: An Audit of Multimodal Retrieval for Breast Lesions", in preparation for the Clinical-MIRF workshop @ CIKM 2026

**Year III, bimester 6** (1.9.2026 – 31.10.2026) — 12 research credits
- Writing of the PhD thesis: definition of the structure, systematic organisation of the three-year research work and drafting of the chapters on knowledge-graph and graph-neural-network methods for multi-omic and biomedical data integration
- Presentation as speaker at ECML-PKDD 2026 (September 2026) of the accepted conference paper "PathogenKG: Cross-Species Drug Repurposing via Heterogeneous Knowledge Graph Link Prediction" (G. M. De Filippis, A. M. Rinaldi, C. Tommasino) — Applied Data Science Track
- Presentation as speaker at the REHMED workshop @ ECML-PKDD 2026 (September 2026) of the paper "Deliberation as Representation: Knowledge-Grounded Multi-Agent Embeddings for Multi-Omic Breast-Cancer Subtyping" (OmicsCouncil)
- Participation in the ECML-PKDD 2026 conference (September 2026), also as a member of the volunteer organizing staff
- Submission (September 2026) of the journal paper "Modeling Omics with Semantics for Dynamic Construction of Knowledge-Based Trans-Omic Networks" (KG-TransomicNet; G. M. De Filippis, A. M. Rinaldi) to Computer Methods and Programs in Biomedicine (Elsevier), after the rejection by Computers in Biology and Medicine — currently under review
- Submission (September 2026) of the collaborative workshop paper "Retrieval Errors Respect the Diagnostic Scale: An Audit of Multimodal Retrieval for Breast Lesions" to the Clinical-MIRF workshop @ CIKM 2026
- Follow-up of the peer-review process of the journal papers MOGNN-TF and MOKG-HGNN (IEEE-JBHI), both submitted in the previous bimester
- Member of the Program Committee of the REHMED workshop @ ECML-PKDD 2026


---

## 13. Technical profile evidenced by this record

**Methods.** Heterogeneous and multi-relational graph neural networks (GCN, GAT, GraphSAGE,
R-GCN, CompGCN); knowledge-graph embedding and link prediction under extreme class
imbalance; ontology engineering and OWL-NETS/PheKnowLator; multi-omic data integration
(RNA-seq, copy number, microRNA, methylation, proteomics); retrieval-augmented generation
and GraphRAG; topic modelling (BERTopic); large-language-model agents; systematic mapping
studies; statistical model comparison (Friedman, corrected Wilcoxon, repeated stratified
cross-validation); calibration and interpretability analysis.

**Data and resources.** TCGA and TARGET Pan-Cancer cohorts, PheKnowLator, Gene Ontology,
Reactome, STRING, TFlink, GWAS Catalog, dbSNP, MeSH/PubMed, BRACS.

**Engineering.** Python (PyTorch, PyTorch Geometric, scikit-learn, pandas), R and
Bioconductor, graph and multimodal NoSQL databases, SQL, Docker, Git, Jupyter, LaTeX,
reproducible releases with archived DOIs.

---

*Generated from `CQB_Report_Attivita_CFU.xlsx`, `DeFilippis_PhD_publications.bib`,
`Giudizio Collegio.md` and the bimonthly reports. Sections 9, 10 and 12 are produced
mechanically from the credit ledger.*
