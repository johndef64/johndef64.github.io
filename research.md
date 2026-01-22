---
layout: default
title: Research
---

## Research Projects

### Current Research

#### Knowledge Graph-Based Multi-Omics Data Integration
Design and implementation of a knowledge graph-based framework for integrating multi-omics data with prior biological knowledge into dynamic trans-omic networks. The approach separates biological entities and quantitative evidence into distinct node types, enabling provenance tracking, semantic versioning, and incremental updates, and couples this with a semantically-enhanced GNN engine for large-scale systems biology and precision medicine applications.

**Key Technologies**: Property Graph Databases (AQL), Knowledge Graphs, Graph Neural Networks, Multi-Omics Integration, GO/CHEBI/RO Ontologies
**Status**: Framework design, implementation, and validation on TCGA cohorts

#### Multi-Omics Integration with Prior Knowledge
Implementation of GNN methods (MOGONET, MOGAT, MPK-GNN) that integrate biological prior knowledge into graph architectures to improve multi-omics analyses such as cancer subtype classification. Exploring multimodal integration on extended graph layers, including TF–target, protein–protein, and miRNA–target interaction networks.

**Key Technologies**: Multi-modal Graph Learning, Prior Knowledge Integration, Omics Data Fusion
**Status**: Methodology development and benchmarking

#### Graph Neural Networks for Biological Data Analysis
Development and application of GNN architectures (GCN, GAT, CompGCN) for biological data analysis. Focus on node classification, link prediction, and graph-level tasks using standard benchmarks (Cora, Cornell, Chameleon) and biological datasets.

**Key Technologies**: PyTorch Geometric, Deep Graph Library (DGL), NetworkX, Graph Neural Networks
**Status**: Ongoing research at Cambridge University

#### Cross-Species Knowledge Graph Construction
Development of comprehensive knowledge graphs spanning multiple species for drug repurposing applications. Using GCN and CompGCN architectures for link prediction and drug-target interaction discovery.

**Key Technologies**: Knowledge Graph Embeddings, Cross-species Data Integration, Drug Repurposing Algorithms
**Status**: In preparation for publication

### Past Research

#### GraphRAG for Biological Knowledge Augmentation
Implementation of LLM-driven knowledge graph construction and retrieval-augmented generation systems for biological data. This project combines large language models with structured biological knowledge to enhance information retrieval and reasoning.

**Key Technologies**: Large Language Models, Knowledge Graph Embeddings, RAG Architecture, Neo4j
**Status**: Active development with applications to nutrigenetics and general biological datasets

#### Single-Cell Transcriptomics Analysis
Advanced computational methods for single-cell RNA sequencing data analysis using graph-based approaches. Integration with tools like Seurat and development of novel network-based methods.

**Key Technologies**: scRNA-seq Analysis, Seurat, Graph-based Clustering, Cell Type Classification
**Status**: Active research collaboration

#### Nutrigenetics and Personalized Medicine
Computational strategies for constructing reference datasets of nutrition-associated genetic polymorphisms. Application of graph-based methods for personalized dietary recommendations.

### Research Areas

#### � Graph Neural Networks
- Graph Convolutional Networks (GCN)
- Graph Attention Networks (GAT)
- Composition-based Graph Convolutional Networks (CompGCN)
- Node classification and link prediction
- Graph-level representation learning

#### 🕸️ Knowledge Graphs
- Biological knowledge graph construction
- Knowledge graph embeddings (KGE)
- Cross-species data integration
- Semantic reasoning and inference
- Graph validation and quality assessment

#### 🔬 Computational Biology
- Multi-omics data integration
- Single-cell transcriptomics
- Drug repurposing and discovery
- Protein-protein interaction networks
- Gene regulatory networks

#### 🤖 AI for Biology
- Large language models for biological text
- Information retrieval from biological literature
- Retrieval-augmented generation (RAG) systems
- Natural language processing for biomedical data
- Automated knowledge extraction

#### 📊 Data Integration
- Multi-modal biological data fusion
- Prior knowledge incorporation
- Semantic data harmonization
- Cross-domain knowledge transfer
- Interoperability frameworks

### Tools and Technologies

**Programming Languages**
- Python (Primary: PyTorch, PyTorch Geometric, DGL)
- R (Bioconductor, Seurat for single-cell analysis)
- SQL (Graph databases, Neo4j, PostgreSQL)

**Graph Learning Frameworks**
- PyTorch Geometric
- Deep Graph Library (DGL)
- NetworkX
- Graph-tool
- Neo4j for knowledge graphs

**AI/ML Frameworks**
- PyTorch/TensorFlow
- Transformers (Hugging Face)
- LangChain for RAG systems
- Weights & Biases for experiment tracking
- Scikit-learn

**Bioinformatics Tools**
- Seurat (single-cell RNA-seq)
- Bioconductor packages
- STRING database
- UniProt/ChEMBL APIs
- Biological ontologies (GO, KEGG)

**Data Management**
- Neo4j (Graph databases)
- MongoDB
- ArangoDB


<!-- ### Collaborations

I actively collaborate with researchers in:
- Graph neural network research groups
- Computational biology laboratories
- AI for science communities
- Bioinformatics centers
- Drug discovery teams -->

### Recent Experience

**Visiting Researcher** - Department of Computer Science, University of Cambridge
- Focus on Graph Neural Networks and Knowledge Graphs for bioinformatics
- Development of GraphRAG systems for biological knowledge augmentation
- Cross-species knowledge graph construction for drug repurposing
- Information Retrieval methodologies on biological knowledge graphs
- Single-cell transcriptomics analysis using Seurat and graph-based approaches

### Recent Projects and Contributions

#### REDAC Chatbot for Transcriptomic Analysis
Contribution to the development of a Large Language Model-powered chatbot for RNASeq expression data analysis, making transcriptomic analysis more accessible to researchers.

**Technologies**: LLMs, Transcriptomics, RNA-seq Analysis
**Status**: Delivered and operational

#### GraphRAG 
Development of Graph-based Retrieval-Augmented Generation systems applied to biological datasets, with potential for journal publication and scalability to larger datasets.

**Technologies**: GraphRAG, LLMs, Knowledge Graph Construction
**Status**: Presented at workshop, under development for journal submission

#### Cross-Species Drug Repurposing
Implementation of knowledge graph construction spanning multiple species with Graph Convolutional Networks (GCN) and Composition-based GCN (CompGCN) for drug repurposing applications.

**Technologies**: Cross-species KG, GCN, CompGCN, Link Prediction
**Status**: In preparation for publication

### Future Directions

- Development of foundation models for biological graphs
- Integration of multi-modal biological data with graph neural networks
- Real-time knowledge graph updates from scientific literature
- Large-scale biological network analysis and prediction
- AI-powered drug discovery through graph-based methods
