---
layout: default
description: >-
  Giovanni Maria De Filippis, computational biologist. Biomedical knowledge
  graphs and heterogeneous graph neural networks for multi-omics data
  integration, cancer subtyping and drug repurposing.
---

## About

<img class="profile-picture" src="https://avatars.githubusercontent.com/u/116732521?v=4" alt="Giovanni Maria De Filippis">

Hi, I'm **Giovanni**. I'm a biologist who became a computational scientist, and
I work where biomedical knowledge representation meets deep learning on graphs.

My doctoral research asks a deceptively simple question: **how much biological
semantics is worth formalising in a data representation, and what does that
formalisation actually buy a learning system?** To answer it I build
ontology-grounded knowledge graphs that carry per-sample multi-omic measurements,
and heterogeneous graph neural networks that learn over them, for cancer subtype
classification and drug–target discovery.

I came to computation from molecular genetics and nutrition science, and I still
think that background is the useful part: the hard problems in this field are
rarely about the architecture, and almost always about what the data is allowed
to mean.

<ul class="facts">
  <li><b>Position</b> PhD candidate in Computational and Quantitative Biology (cycle XXXIX)</li>
  <li><b>Affiliation</b> DIETI, University of Naples Federico II</li>
  <li><b>Supervisor</b> Prof. Antonio Maria Rinaldi</li>
  <li><b>Previously</b> Visiting researcher, Computer Laboratory, University of Cambridge (2025)</li>
  <li><b>ORCID</b> <a href="https://orcid.org/0009-0002-8395-0724">0009-0002-8395-0724</a></li>
  <li><b>Elsewhere</b> <a href="https://scholar.google.com/citations?user=VMk1EUQAAAAJ">Scholar</a> · <a href="https://github.com/johndef64">GitHub</a> · <a href="https://linktr.ee/johndef64">LinkTree</a></li>
</ul>

## Doctoral thesis

**From Trans-Omic Networks to Knowledge Graphs: Encoding and Exploiting Biological
Semantics for Multi-Omics Data Integration with Graph Neural Networks**

In multi-omics the bottleneck is no longer measurement, it is representation.
Every integrative study rebuilds its own encoding, and existing biomedical
knowledge graphs keep per-sample quantitative vectors in external matrices,
breaking the link between an entity and its measurement at query time.

The thesis builds one reusable substrate where an ontological backbone and dense
per-sample multi-omic profiles are stored together and retrieved through a single
query, then puts that substrate to work three ways: joint querying of knowledge
and measurement, discovery of new biological relations, and molecular subtype
classification. The organising axis is the degree of semantic formality of the
prior, from implicit trans-omic networks, to shallow molecular priors, to a
formal multi-scale knowledge graph.

The finding is a careful one, and it is the point of the work: the quantitative
signal dominates, and formal semantics contributes selectively, trading marginal
accuracy for robustness under feature scarcity, stability across data splits and
mechanistic interpretability, which are the properties that matter when complete
omic panels are unavailable, as they usually are in the clinic.

## Research interests

- **Multi-omics integration** with ontology-grounded knowledge graphs
- **Heterogeneous and multi-relational graph neural networks** for classification
  and link prediction
- **Knowledge graph embedding** for drug repurposing, including across species
- **Interpretable and calibrated models** for clinical decision support
- **LLMs and retrieval** over biomedical literature and structured knowledge
- **Nutrigenetics** and genotype-informed personalised nutrition

A fuller account is on the [research]({{ '/research' | relative_url }}) page, and
the record of published work on the [publications]({{ '/publications' | relative_url }}) page.

---

> "A path is made by walking on it."
> ― Chuang Tzu
