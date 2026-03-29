## TITLE: A Lakehouse Architecture for the Management and Analysis of Heterogeneous Data for Biomedical Research and Mega-biobanks

Edmon Begoli, Ian Goethert

##Publication year
2021


## Abstract

Data Lakehouse is a new paradigm in data architectures that embodies and integrates already established concepts for the systematic management of disparate, large-scale data - a data lake for heterogeneous data management, use of open standards for high-performance querying, and systematic maintenance of the data 'freshness'. In addition to being a new concept, the data lakehouse is also still a conceptual construct. Many projects that use the lakehouse require maturing, empirical studies, and specific implementations. In this paper, we present our implementation of the data lakehouse concept in a biomedical research and health data analytics domain, and we discuss the implementation of some unique and novel features such as support for specialized access controls in support of HIPAA regulation and IRB protocols, and support for the FAIR standard.

 

## I. INTRODUCTION

Managing data for any large-scale effort is necessarily complex: this complexity grows exponentially when that data is multi-modal and highly sensitive. For instance, as genomic sequencing technology has become progressively less expensive and more accessible, genomic biobanks that hold large volumes of population data (human or otherwise) are now a reality. A few nation-scale efforts have led to the development of so-called mega-biobanks, or collections of data for multimillion-scale populations, all of which are characterized by extreme size, diversity, and discrepancies in collection, production, and quality assurance methodologies. Examples of these mega-biobanks are UK Biobank, Iceland's deCODE [1], MVP, and others, with MVP being the mega-biobank [2] that we at Oak Ridge National Laboratory (ORNL) currently host and manage.

Beyond just managing discordant data within the genomic mega-biobank, the ORNL team also manages and serves data originating from other modalities. We also host an entire associated medical data warehouse and related clinical notes, comprising a massive healthcare data lake, all of which is used for ongoing medical research. Thus, the overarching difficulty is ensuring that this multimodal data is consistently, effectively and efficiently collected, organized, prepared, and served for effective use by researchers, all while maintaining proper access controls to protect the privacy of the individuals represented in this massive data store.

The United States Government retains and the publisher, by accepting the article for publication, acknowledges that the United States Government retains a non-exclusive, paid- up, irrevocable, world-wide license to publish or reproduce the published form of this manuscript, or allow others to do so, for United States Government purposes. The Department of Energy will provide public access to these re- sults of federally sponsored research in accordance with the DOE Public Access Plan(http://energy.gov/downloads/doe-publicaccess-plan).

Thus, our goal here is to present the current challenges surrounding both medical data lake architecture and its related metadata management. In particular, we aim to describe a current emerging, state-of-the art solution for architecting and managing such a system, how this solution applies to healthcare data lakes, and what research is still needed for healthcare data lake architecture and metadata management.

The architecture we chose, Lakehouse [3], conceptually promises to reconcile the demands for storing heterogeneous data efficiently, economically, and accessibly by a variety of end applications including AI/ML-based as well as by traditional SQL-based ones. In particular, the Lakehouse design attempts to solve the problems of data reliability, staleness, limited support for advanced analytics, and a low total ownership cost. As such, we follow this conceptual approach and ground a somewhat amorphous concept with some concrete implementations, namely specialized access controls, compliance with the FAIR [4] guidelines (especially with regard to Accessibility), and a novel implementation of continuous heterogeneous data extraction, transformation and loading (ETL) which ensures the freshness of the data.

Rather than focus on a single case study, we will describe how we have applied our lakehouse design to multiple related, but equally challenging, case studies, all discussed in the following sections. Furthermore, we aim to present a collection of principles and guidelines that emerged from our systematic and principled approach to developing a lakehouse for heterogeneous, large-scale data repositories.

## VI. RESULTS

We measure the success and impacts of our lakehouse adoption by these measures system benefits, measured by space reduction and performance improvements, and by the rate of user adoption.

## A. Performance and Storage Reduction Benefits

A particular benefit of a Parquet-based lakehouse is an increase in performance as well as reduction in storage needs. In our previous research [20], we observed a dramatic reduction in storage space requirements with a similar result in performance improvements.

Figure 6 contrasts a performance of PySpark queries and storage reduction in executing analysis against CSV files vs. against Parquet files. In that example, we have a CSV file containing 50.8 million rows. In this example, we perform a sum of a decimal column based on another column.

In addition to speed improvements, space savings can be profound. On the same data set, the file size is reduced by nearly a factor of ten before taking advantage of builtin compression techniques of Parquet. In most cases, the Parquet format offers an order of magnitude improvement in space/storage requirements over raw data formats.

## VII. ADOPTION

Currently, KDI-managed projects that rely on the lakehouse for their research is growing. The number of users varies by project and can be as small as 10 or as large as 100+.

TABLE I MAPPING TO FAIR: ACCESSIBLE

| FAIR: Accessible   | FAIR: Accessible                                 | ORNL: Implementation                                                            |
|--------------------|--------------------------------------------------|---------------------------------------------------------------------------------|
| A1                 | Metadata are retrievable using standard protocol | Standardized schema files Lakehouse architecture Row-level permissions, account |
| A1.1               | Open, free, universally implementable protocol   | implementation                                                                  |
| A1.2               | Authentication and authorization procedure       | separation                                                                      |
| A2                 | Metadata perpetually accessible                  | Prov-o provenance ontology                                                      |

The lakehouse is configured for multi-petabyte capacity; it currently houses around 500 terabytes of data under direct management, and that volume is steadily increasing at around 20-25% annual growth rate.


## VIII. SUMMARY

Data lakehouse is a new concept, grounded in wellestablished developments that have evolved over the past decade as well as advancements in 'Big Data' technologies. In this paper, we presented our contribution to this evolving concept and some specific principles and techniques related to peculiarities when working with protected health data and consequent technical and procedural solutions. We hope that our contributions will help further advance the state of the lakehouse research.

## IX. FUTURE WORK

The lakehouse we presented is a work in progress. Our future roadmap includes: a) streamlining of data access for researchers (it is currently managed manually by system administrators), b) use of the state-of-the-art for data intake pre-processing, and c) use of tools, such as Apache Airflow, Marquez, and Great Expectations, to build automated, robust, and well-documented data pipelines. Also, we plan on enhancing our FAIR adoption, including moving toward compliance with the interoperability principle.

---


## TITLE: Asurvey on semantic data management as intersection of ontology-based data access, semantic modeling and data lakes

Sayed Hoseini a,b, ∗ , Johannes Theissen-Lipp b , Christoph Quix c

##Publication year
2024


## ABSTRACT

In recent years, data lakes emerged as a way to manage large amounts of heterogeneous data for modern data analytics. One way to prevent data lakes from turning into inoperable data swamps is semantic data management. Such approaches propose the linkage of metadata to knowledge graphs based on the Linked Data principles to provide more meaning and semantics to the data in the lake. Such a semantic layer may be utilized not only for data management but also to tackle the problem of data integration from heterogeneous sources, in order to make data access more expressive and interoperable. In this survey, we review recent approaches with a specific focus on the application within data lake systems and scalability to Big Data. We classify the approaches into (i) basic semantic data management, (ii) semantic modeling approaches for enriching metadata in data lakes, and (iii) methods for ontology-based data access. In each category, we cover the main techniques and their background, and compare latest research. Finally, we point out challenges for future work in this research area, which needs a closer integration of Big Data and Semantic Web technologies.



## Keywords

Semantic data management Semantic web Big data Data lakes Ontology-based data-access

## 1. Introduction

In today's data-driven world, the efficient management and accessibility of data are paramount for stakeholders across various domains. Data lakes have been proposed to tackle challenges in managing unstructured and structured data sources [1]. Numerous organizations have adopted data lakes, facilitating data science projects by combining data from heterogeneous sources [2-5].

However, the mere collection of data is not sufficient. For data to be truly useful, it must be accompanied by meaningful metadata. This is especially crucial for users with limited domain knowledge or those unfamiliar with the specific data sets. Without such metadata, accurately interpreting the data becomes a challenge. The mapping of raw data from data sources to semantically rich models increases the usability and interpretability of data. Knowledge graphs (KGs), formalized with expressive ontologies, have emerged as a powerful tool for enhancing data usability and interpretation [6,7]. They not only provide semantics to raw data but also facilitate data integration through ontology-based data access (OBDA), thereby making data more accessible and interpretable [8].

In recent years, the advantages of data lake research and practice have been increasingly acknowledged. Early implementations focused on efficiently processing Big Data using distributed, scalable systems, such as Hadoop. Concurrently, the importance of proper metadata and data quality management has also been recognized [9,10]. As a result, various strategies for Semantic Data Management (SDM) in data lakes have been introduced [11,12]. These strategies underscore the necessity of integrating Big Data with Semantic Web technologies in semantic data lakes. Within the Semantic Web, the Resource Description Framework (RDF) and the Web Ontology Language (OWL) are the main languages to represent data as a set of Linked Data items [13]. Importantly, these languages also facilitate the representation of metadata through KGs, enhancing the semantic depth and utility of data lakes. Despite the advancements in Linked Data and Semantic Web technologies, the volume of data managed in Semantic Web applications remains significantly smaller compared to that in Big Data scenarios. Therefore, scaling Semantic Web technologies to accommodate large, diverse data sets presents a substantial challenge for their application within data lakes.

Semantic data enriches basic metadata, such as schema and data types, by adding context information not originally present in the data source. Paulus et al. [12] identify two key processes vital for the efficacy and adoption of Semantic Data Management (SDM): (1) developing and sustaining conceptualizations and (2) semantically enriching data sources , specifically by linking source schemas to these conceptualizations. This semantic enrichment enables users to not only discover data through its conceptual representation but also to comprehend it through the rich context encapsulated within the model.

The process of creating these semantic models is intricate, requiring an analysis of the existing data source, identification and evaluation of relevant Knowledge Graphs (KGs), and the accurate linking of data attributes to KG concepts. This positions the KG as an overarching data model, offering a conceptual description of an organization's data assets. Recognizing the pivotal role of data in driving business processes, companies are increasingly incorporating such models into their data governance and master data management strategies [14]. Modeling a KG demands a significant level of human expertise, as it involves complex decision-making and conceptual mapping. This article focuses on the critical task of aligning data sources with an existing KG, which may be further refined during the semantic modeling phase to ensure a comprehensive representation of the data sources' semantics.

The semantic model acts as a projection , mapping the entities and relationships from the KG onto the data sources. This model serves as an intermediary layer, bridging the data layer with the knowledge layer [2]. The basic idea of the semantic model is illustrated in Fig. 1, where raw data sets in the data lake, varying in formats such as tabular or hierarchical JSON, are positioned at the lower data layer and may have overlapping content. The semantic model is represented as a graph comprising nodes and edges borrowed from the KG, further enriched with additional nodes and edges to denote the mapping and augmented semantics of the data sources. For instance, in Fig. 1, we incorporate concepts and properties from the Wikidata knowledge base [15] (prefix wd ) into our KG. By defining the semantic type and relationships between source attributes in the graph, the semantic model offers a precise description of the data source's intended meaning. A SDM platform should facilitate this process, for example, by recommending relevant concepts and mappings during the model's creation.

Furthermore, the semantic model should be dynamic, allowing for the introduction of new classes and properties as needed. This adaptation becomes necessary when users contribute data sources introducing concepts and relationships not previously covered by the KG. An example provided involves a JSON document about a cinema (using the prefix cd for cinema domain) that requires explicit modeling. Such new knowledge must be systematically integrated, thereby enriching the knowledge layer continuously [16].

Semantic labels directly annotate data source elements (e.g., schema attributes) with elements of the semantic model, defined by appropriate predicates and objects. Typically, semantic labels are represented as a triple (schema element, predicate, object). For example, the semantic label for the attribute Title in Fig. 1 is articulated through the object wd:film and predicate wd:title . A semantic data lake should facilitate the derivation of such a semantic model from raw datasets, thus providing a more conceptual data description that includes concepts and their interrelations, and linking data sets to their relevant concepts [14].

In Fig. 2, we introduce a revised data lake architecture [17]. The architecture is structured in four layers: (1) the ingestion layer deals with data and metadata extraction; (2) the storage layer provides systems to store and query data and metadata in a scalable way; (3) the transformation layer enables data transformation and integration; (4) the interaction layer offers exploration and query functions to users. Each layer has been extended with enhanced metadata functions with semantic capabilities. For instance, the ingestion layer's semantic labeling component assigns semantic labels to metadata elements. Data Quality (DQ) management benefits from verifying the presence of semantic information for data sources. Managed within the storage layer, the semantic information (labels, models, KGs, etc.) in an expanded semantic metadata repository supports functions such as OBDA, aiding in data usage and interpretation. Consequently, the interaction layer incorporates additional features, such as KG and semantic model browsing, semantic query formulation using languages like SPARQL, 1 and tools for refining semantic mappings and models.

## 1.1. Scope, research methodology and contribution

In this survey, we give an overview of the recent developments in SDM related to semantic data lakes (see Definition 2) in particular. To provide a clear and logical presentation, we were inspired by the pipeline presented by [18] (see Fig. 3). It starts with the schema analysis, a standard procedure of any data lake ingestion module including the ones presented here (see Section 3.1.1 to Section 3.1.3). The next steps are semantic labeling (Section 3.2.1), modeling (Section 3.2.2) as well as refinement and storage (Section 3.2.3). Furthermore, the original figure has been extended by OBDA (Section 4), because it provides a uniform data access interface for heterogeneous data in data lakes based on the semantic descriptions.

To collect the relevant papers, we made use of Google Scholar primarily. We first used a list of keywords, which was manually created when reading relevant papers starting from e.g. [12,14,19]) and evolved dynamically during the writing: 'semantic data lake', 'knowledge graph data lake', 'semantic data catalog', 'semantic data integration', 'semantic/ontology-based data management', 'semantic models', 'semantic annotation', 'semantic table interpretation', 'semantic type detection', 'ontology-based-data-access', 'linked data &amp; data lake'. For each query, we first retrieve relevant results by importing the DOI into Citavi , a program for reference management, then read each retrieved paper to judge whether the paper is relevant for one of the three domains of interest (Semantic Data Lakes, Semantic Data Management/Integration, OBDA). From there we assigned each paper to a category resembling the structure of this article. We made heavy use of the citation snowballing method [20], i.e., extending the results by searching through the cited references in the initial keyword-based findings as well as exploiting the 'Cited By' functionality in Google Scholar. The commercial systems were found using Google Search.

In summary, this article makes the following contributions:

- A definition of the terms related to SDM is provided in Section 2.1. Terms like semantic models or semantic labels are frequently used in the context of SDM; to make a proper classification and comparison of systems and approaches in this area, we first need clear definitions. Additionally, a taxonomy (Fig. 4) of the various notions is presented as a high-level overview.
- In Section 2.3, we introduce an evaluation framework by deriving several criteria.
- Section 3.2 addresses in detail approaches for semantic modeling, i.e., algorithms for creating the semantic models (semi)automatically. We distinguish between approaches for semantic labeling and semantic modeling.
- The state-of-the art for SDM is discussed in Section 3. We review metadata models and data lakes addressing semantics in Section 3.1.
- Based on the evaluation framework, we perform a detailed comparison for metadata models and data lakes as well as SDM systems in Section 3.3.
- In Section 5, we discuss two application areas for SDM in data lakes: Industrial Internet-of-Things and Smart Cities. This shows that the SDM techniques can be applied to real-world use cases.
- The most advanced use of semantic information is for ontologybased data access (OBDA). A KG is used as a common data model for specifying queries; OBDA systems take mappings to data sources into account and translate queries into the query language of the particular data source. Especially in this context, scalable approaches are required for query processing over Big Data. We review several systems in this area that have been proposed in recent years in Section 4.
- Finally, we derive in Section 6 challenges that still need to be addressed in the field of semantic data management.

## 1.2. Related surveys &amp; work

Sawadogo et al. [21] focus on generic data lake architectures and metadata management and discuss the pros and cons of data lakes and their design alternatives. Similarly, Hai et al. [22] present a comprehensive overview of research questions for designing and building general data lakes. They classify the existing approaches and systems based on their provided functions for data lakes and provide a thorough comparison of existing solutions and the discussion of open research challenges. In [23] Adamou et al. describe possible Linked Data use cases in data lakes on a high level including basic graph-based data storage and querying, data integration of internal and external data as well as describing and profiling data sources for data cataloging. While they do not go into much technical detail, they offer a comprehensive perspective on the utility of Linked Data in addressing these functionalities. To illustrate how Linked Data principles and technologies can be applied to data lakes, they provide a practical scenario for establishing a data platform for a smart city. Similarly, Wecel et al. [24] describe how to use the Linked Data for the general enrichment of data assets. Couto et al. [25] conduct a systematic literature review about data integration in data lakes where they identify examples of integration models, how to calculate the similarity among the datasets, how the models are evaluated and the most common type of data to be integrated.

Paulus et al. [12] investigate existing semantic modeling approaches, discuss their strengths and weaknesses for real-world use, and present future challenges and necessary research directions that the community needs to focus on to make semantic data management acceptable in everyday business. Data lakes and scalability to Big Data is not in the focus of Paulus et al.

Xiao et al. present first a more theoretical discussion on the formal implementation details in OBDA [26]. In a follow-up work [8], they present the tooling ecosystem and concrete use cases in a wide range of commercial applications. Additional works in this context and a more detailed discussion can be found in Section 4.

A recent survey by Liu et al. [27] reviews approaches for semantic labeling (see Definition 3) which is closely related to Section 3.2.1 of this work.

In contrast to the mentioned related work in this field, we focus especially on approaches which can be scaled up to Big Data within a data lake and facilitate the semantic integration of data . In a holistic approach, we address the complete process as shown in Fig. 3, starting from SDM in data lakes, to semantic modeling for data integration, and finally OBDA. In each section, we focus especially on the applicability to data lakes and Big Data.

## 6. Challenges and conclusion

Even though we have seen various tools in which KGs play a crucial role, a comprehensive solution that provides truly scalable access to heterogeneous data-based on ontology-based mappings, including a semantic modeling component to create and maintain the mappings, is not yet available. We have illustrated this gap in Fig. 7. In the Venn diagram, we put three topics in relation: to OBDA, semantic modeling, and data lakes. Semantic Data Management may include more approaches, such as the materialization approaches neglected here. The intersection between semantic modeling and OBDA is represented for example by ODIN . The combination of OBDA for Big Data and data lakes is illustrated for example by the manufacturing use case [91].
However, it involved a great amount of manual labor by experts, is not available (neither open-source nor as a commercial system) and we found no evidence that the semantic modeling techniques discussed in Section 3.2 are applied in this use case.

Semantic modeling is enabled within a data lake by ESKAPE . However, a custom data format named Semantic Linked Tree (SLT) is used, which is a JSON-based data format in which the semantic labels are attached to the raw data values. This transformation can be interpreted as semantic lifting . Due to its rather early development, the system also does not incorporate scalable data storage and processing engines inherent to most modern data lakes.

OBDA has grown from a long tradition, it has been reported in production several times, and recent proposals, such as SANSA and Chimera display meaningful progress towards semantics-based on-demand data access. However, the creation of the required mappings is a tedious, manual task for the user. There is not yet enough assistance either by good user interfaces or automatic procedures.

The field faces several challenges today:

1. Initial overhead &amp; usability : Creating meaningful semantic models for a large number of heterogeneous data sets comes with a huge initial overhead in generating KGs and the corresponding connections. First, generating domain-specific conceptualizations is already time-consuming and resource-intensive, quite apart from the fact that this task is truly an entire field of its own. Even if we assume to have a versatile set of suitable KGs at hand, the creation of suitable mappings to data sources is still a timeconsuming process. As presented in this survey, there are some proposals for the automatic creation of semantic models and mappings; yet, more emphasis should be put on the required human input (see Technical abstraction ).
2. Evaluation : Automated generation of semantic labels and models has gained much attention lately; however, it is unclear how accurate the methods really are, beyond the scope of the test sets used in the particular publication. For semantic labeling, SemTab has presented various data sets and benchmarks and research is underway for more sophisticated table interpretation. For semantic models, VC-SLAM is the very first proposal towards standardization of a set of ontologies and data sets alongside the corresponding semantic models. The emergence of annual challenges and the publication of benchmarks will be helpful
3. and could be further streamlined by an initiative similar to the OAEI 26 for ontology alignment.
3. Technical interoperability : Considering the variety of today's data landscape, one has to point out that the majority of methods for semantic labeling and modeling are based on tabular data. The field is yet far away from covering all NoSQL data models uniformly. This is also the focus of modern OBDA research. While scalable data access via ontologies can be regarded as solved to a large extent for relational data, the focus has shifted more towards incorporating different NoSQL query languages as well as supporting federated query processing against multiple databases, file systems, and other miscellaneous data sources simultaneously. Any such solution must be compatible with W3C standards for the Semantic Web to ensure maximal interoperability between systems.
4. Technical abstraction : The overall quality of a semantic model must ultimately be refined by the human operator. This humanin-the-loop process needs guidance for unfamiliar users through a strong technical abstraction, i.e., technical details must be hidden from the user. It is hard to imagine that even with very enhanced AI techniques (see below Leverage AI ), human verification and refinement of mappings will become obsolete. Therefore, enhanced user interfaces that focus on usability also for non-technical users are required in this domain.
5. Applicability for Big Data : Solutions like Squerall and Chimera are promising approaches to address OBDA also in Big Data scenarios. Yet, there are many limitations in the expressiveness of queries or mappings. Furthermore, they are bound to specific versions of Big Data platforms which complicate their deployment. The maturity of such solutions could be improved if a larger community would continue the development of these prototypes, to remove the aforementioned limitations and make them applicable to a wide variety of NoSQL/Big Data systems.
6. Leverage AI : Since the publication of ChatGPT, it has been discussed for many human tasks whether they can be solved by Large Language Models (LLMs) in the future. This is also relevant for all tasks related to data integration as ChatGPT can describe data sources, create ontologies, and find relationships between different data sets, to name just a few examples of what can be achieved with LLMs. Given the latest development of AI techniques, we have to expect that these systems will be able to solve more complex data integration tasks in the future of which the first papers are appearing already [161]. It would be interesting to see how such general-purpose AI systems can be customized and optimized for specific data integration tasks within data lake systems at scale. On the other hand, we need to examine the processes discussed in this survey to see at which points and how an AI system based on LLMs can be integrated to improve the overall process.

To conclude, in this article we have given an overview of semanticsbased methods for data management, access, and integration and related those findings to current semantic data lake proposals. Conclusively, we can state that the community faces several challenges and a gap in today's landscape between present data lake platforms, OBDA and semantic technologies for modeling the context in which heterogeneous data sets arise. We are confident that Big Data and Semantic Web technologies can benefit from each other and that more enhanced solutions for semantic data lakes will become available in the next years.

---

## TITLE:  A Use Case of Data Lake Metadata Management

##Publication year
2020


## INTRODUCTION
To govern a data lake with a great volume of heterogeneous types of data, metadata management is mandatory to prevent the data lake from being turned into a data swamp which is invisible, incomprehensible and inaccessible to users. In this chapter, we present a use case of data lake metadata management, applied to the health-care field, which is particularly known by its heterogeneous sources of data.

We first present a more detailed data lake definition in comparison to the chapter dedicated to the data lake definition and its underlying data lake architecture, based on which we designed the metadata model. Second, we present a metadata classification pointing to the essential attributes adapted to the use case. Third, we introduce a conceptual model of metadata which considers different types: (i) structured, (ii) semi-structured and (iii) unstructured raw or processed data. Fourth, we validate our proposition with an implementation of the conceptual model which concerns two DBMSs (one relational database and one NoSQL database).

## 5.1. Context

The University Hospital Center (UHC) of Toulouse is the largest hospital center in the south of France. Approximately 4,000 doctors and 12,000

Chapter written by Imen MEGDICHE, Franck RAVAT and Yan ZHAO.

hospital staff ensure more than 280,000 stays and 850,000 consultations per year. The information system of the hospital stores all the patient data including medical images, biological results, textual hospital reports, PMSI (Programme de médicalisation des systèmes d'information) [CHA 17] administrative information related as well as administration data, to the functioning of the hospital. With the aim of improving medical treatment and optimizing the patient pathways, Toulouse UHC investigates a data lake project. The objective of the project is to ingest all the heterogeneous structural types of internal data and some external medical data that the UHC can access in order to provide a global view and foster new perspectives for data analytics by different users (data scientists, data analysts and BI professionals). The project respects an incrementally iterative process. The first iteration concerns ingesting two datasets in the data lake and processing the data to establish two data marts.

To govern the data lake, which can contain heterogeneous and voluminous data, we have designed a metadata management system for the data lake and implemented two proofs of concept in order to validate the system. With the aim of presenting the metadata management system adapted to the project, we first propose a definition of data lake and a data lake functional architecture, based on which we designed the metadata management.

## 5.1.1. Data lake definition

As mentioned in the previous chapter dedicated to the data lake definition, the data lake concept is initially put forward in the industrial world. It was then defined in both academic and industrial worlds [CAM 15, FAN 15, HAI 16, LLA 18, MAD 16, MIL 16, DUL 15, WAL 15, RAV 19a]. All the existing definitions respect the idea that a data lake stores raw data in their native format. However, different definitions emphasize different aspects of data lakes (see Figure 5.1). Regarding input, the author of [FAN 15] presents that the input of a data lake is the internal data of an organization. Regarding process, the author of [MIL 16] introduces that there is no data process during the ingestion phase and [CAM 15, HAI 16, MIL 16, DUL 15] introduce that data will be processed upon usage. Regarding architecture, [FAN 15] presents that data lakes are based on an architecture with low-cost technologies. Regarding governance, metadata management is emphasized in

[HAI 16, WAL 15]. And regarding users, [MAD 16] presents that data scientists and statisticians are data lake users.

Figure 5.1. Data lake definitions

Existing definitions have evolved over time from experience feedback. Nevertheless, as mentioned, these different definitions are vague, they are not integrated with each other or even contradictory. To be as complete as possible and to answer the requirements of Toulouse UHC, we propose a definition that includes input, process, output and governance of data lakes:

A data lake is a Big Data analytics solution that ingests heterogeneously structured raw data from various sources (local or external to the organization) and stores these raw data in their native format, allows us to process data according to different requirements and provides access of available data to different users (data scientists, data analysts, BI professionals, etc.) for statistical analysis, Business Intelligence (BI), Machine Learning (ML), etc., and governs data to ensure the data quality, data security and data lifecycle.

5.1.2.

## Data lake functional architecture

After proposing a data lake definition adapted to the project, the next point that we study is a functional architecture of a data lake. To the best of our knowledge, a recognised data lake architecture does not exist in the literature. Data lake functional architecture has evolved from mono-zone to multi-zone, and it is always presented with technical solutions (see Figure 5.2).

Figure 5.2. Data lake functional architecture evolution



The first vision [FAN 15, DIX 10] of the data lake architecture was a flat architecture with mono-zone that is closely tied to the HADOOP environment. This zone allows the collection and storage raw data in their native formats. It includes the data from web logs, sensor devices, operational data store (ODS) and online transaction processing (OLTP) systems. The advantage of this architecture is to enable the loading of heterogeneous and voluminous data at low cost. However, this architecture is simple and can hardly be realized, especially in the context of Big Data analytics. As a matter of fact, this architecture does not reflect the activities performed by users, such as the pre-processing phases inherent in decision analyses with a set of intermediate data storage.

A second vision of data lake architecture contains five data ponds [MAD 16]. A raw data pond that stores the just ingested data and the data that

do not fit in other ponds. The analog, application and textual data ponds store classified data from, raw data pond the by their characteristics. An archival data pond stores the data that are no longer used. This architecture classifies different types of data and discards useless data, which makes data finding faster and data analytics easier. However, the division of different ponds - the archival pond, in particular, cannot ensure the availability of all the raw data contradicts the general recognition of data lake which is to ingest all the raw data and process them upon usage.

To overcome these drawbacks, a third vision of architecture with multi-zones is proposed with a more diverse technological environment in the academic and industrial worlds. The author of [NAD 17] presents Amazon Web Services (AWS) data lake architecture with four zones: ingestion, storage, processing, and govern and secure. Raw data are loaded in the ingestion zone. The ingested raw data are stored in the storage zone. When data are needed, they are processed in the processing zone. The objective of the govern and secure zone is to control data security, data quality, metadata management and data lifecycle. The author of [MEN 17] separates the data processing zone into batch-processing and real-time processing zones. He also adds a processed data zone to store all the cleansed data. Zaloni's data lake architecture [LAP 14] separates the processing and storage zones into refined data zone, trusted data zone and discovery sandbox zone. The refined zone allows us to integrate and structure data. The trusted data zone stores all the cleansed data. Data for exploratory analysis moves to the discovery sandbox.

As mentioned, a lot of data lake architectures are supported with technical solutions. They are not independent of the inherent technical environment. Consequently, none of the existing architectures draw a clear distinction between functionality-related and technology-related components. What is more, the concept of multi-zone architecture is interesting and deserves further investigation. We believe that some zones are essential, while others are optional or can be regrouped. Concerning the essential zones, based on our data lake definition, a data lake should be able to ingest raw data, process data upon usage, store processed data, provide access for different uses and govern data.

Unlike several proposals, we need to distinguish functional architecture from technical architecture; this is because a functional architecture concerns the usage perspective and it can be implemented by different technical

solutions. By adopting the existing data lake architectures and avoiding their shortcomings, we propose a functional data lake architecture (see Figure 5.3), which contains four essential zones, with each having a treatment area (dotted rectangle) and a data storage area that stores the result of processes (gray rectangle):

- -raw data zone : all types of data are ingested without processing and are stored in their native format. The ingestion can be batch, real-time or hybrid. This zone allows users to find the original version of data for their analysis to facilitate subsequent treatments;
- -process zone : in this zone, users can transform data according to their requirements and store all the intermediate transformations. The data processing includes batch and/or real-time processing. This zone allows users to process data (selection, projection, join, aggregation, normalization etc.) for their data analysis;
- -access zone : users can put all the prepared data in the access zone which stores all the available data and provides data access. This zone allows users to access data for self-service data consumption for different analytics (reporting, statistical analysis, business intelligence analysis, machine learning algorithms);
- -governance zone : data governance is applied on all the other zones. It is in charge of ensuring data security, data quality, data lifecycle, data access and metadata management.

To exemplify our architecture, we propose an implementation as depicted in Figure 5.4. Raw datasets (RD1, RD2) are ingested in the data lake and stored in the raw data zone in their native format. Data are processed in the process zone and all the intermediate datasets (PD1, PD2, PD3, PD4) are stored in this area too. All the available data (AD1, AD2, AD3) are stored in the access zone for data consumption.

As we can see in the example of data lake functional architecture, the ingestion zone stores different types of datasets, the process zone can process different datasets in many steps and the access zone can ensure the availability of raw datasets, as well as processed datasets. Therefore, a metadata management is important to govern all the datasets in a data lake.

## 5.5. Concluding remarks

To prevent a data lake from turning into a data swamp, metadata management is recommended. In this chapter, we first proposed a generic and extensible classification of metadata with essential attributes adapted to the Toulouse UHC data lake project. The classification considers not only the metadata on each dataset (intra-metadata) but also the relationships between datasets (inter-metadata).

Based on the classification, we presented a conceptual model of metadata in data lakes. What is more, for validating the conception model, we implemented a graph DBMS and a relational DBMS for the metadata management system in the Toulouse UHC. The two solutions were tested by potential requirements. In addition, we compared graph and relational DBMS by four axes. The two DBMSs both have advantages and disadvantages, the

decision of DBMS should be taken after considering the environment of implementation.

Our next plan concerns the automatic extraction of metadata. For this automatic extraction, we plan to integrate, into our existing work, the automatic detection of the relationships between the datasets [ALS 16], the data structure itself and the metadata characteristics. Nevertheless, no system can currently automatically extract inter-metadata and intra-metadata from different types (structured, semi-structured, unstructured) of datasets. What is more, the representation of our metadata model can evolve in time, for example, the form of ontology allows us to benefit from the reasoning engines and can establish an efficient link of our metadata with other external resources on the semantic web.

Our long term goal is to accomplish a metadata management system that integrates automatic extraction of data, effective research of metadata, automatic generation of dashboards or other analyses.

---

## TITLE: A Zone Reference Model for Enterprise-Grade Data Lake Management

Corinna Giebler, Christoph Gröger ,Holger Schwarz  ,Bernhard Mitschang

##Publication year
2020

## Abstract

Data lakes are on the rise as data platforms for any  kind  of analytics,  from  data  exploration  to  machine learning. They  achieve  the  required  flexibility by  storing heterogeneous  data  in  their  raw  format,  and  by  avoiding  the need for pre-defined use cases. However, storing only raw data is inefficient, as for many applications, the same data processing has to be applied repeatedly. To foster the reuse of processing steps,  literature  proposes  to  store  data  in  different  degrees  of processing  in  addition  to  their  raw  format.  To  this  end,  data lakes are typically structured in zones. There exists various zone models,  but  they  are  varied,  vague,  and  no  assessments  are given. It is unclear which of these zone models is applicable in a practical data lake implementation in enterprises. In this work, we assess existing zone models using requirements derived from multiple representative data analytics use cases of a real-world industry  case.  We  identify  the  shortcomings  of  existing  work and develop a zone reference model for enterprise-grade data lake management in a detailed manner. We assess the reference model's applicability through a prototypical implementation for a  real-world  enterprise  data  lake  use  case.  This  assessment shows  that  the  zone  reference  model  meets  the  requirements relevant in practice and is ready for industry use.

##Keywords
Data  Lake,  Zones,  Reference  Model,  Industry Case, Industry Experience

## I. INTRODUCTION

In recent years, data lakes gained popularity as they not only allow reporting but also flexible and advanced analytics on heterogeneous data for both batch and real-time processing [1].  Work  on  data  lake  management,  i.e.,  the management of data within a data lake, is however premature and inconsistent [2]. In particular, practical experience shows that the initial idea of deferring any kind of data transformation and data processing until data are retrieved  for  analysis  (as  seen  e.g.,  in  [3])  is  not  viable. Especially when data are reused for at least similar purposes multiple times, starting with raw data and performing the same processing steps each time is inefficient [4].

A solution to this problem is to store not only raw, but also pre-processed  data  in  the  data  lake [4].  To  manage  these diversely processed data, literature frequently suggests zone models (e.g.,  in [4-6]).  These  zone  models  define  in  which processing degrees (e.g., raw, cleansed, aggregated) data are available in the data lake, and how they are governed (e.g., regarding access rights, data quality, and responsibilities). For different use cases, data in the most fitting processing degree can then be accessed. Zone models thus allow to share and reuse pre-processed data between use cases. Zones are similar to the layers in data warehousing (e.g., in [7]), but data may not move through all zones or even move back.

Literature describing these zone models is varied, vague, and inconsistent. There neither exists a uniform concept for zone-based data lake management, nor any form of systematic assessment of available concepts. When building data lakes in practice, this diversity poses a challenge, as it remains unclear which zone model to use and how to implement it.

We address this problem in this work. As a basis, we use the following data lake definition based on [3]: the data lake serves  as  a  data  management  platform  for  all  kinds  of analytics,  from  reporting  and  OLAP  (Online  Analytical Processing) to advanced analytics. Data of any format can be stored and used for any analytical use case without the need to define all of the data's future use upon ingestion. To achieve this  flexibility,  data  are  stored  in  their  raw  format.  Various user  groups  can  access  and  make  use  of  these  data  in  their everyday work life.

Based on industry experience with an enterprise-wide data lake,  we  assess  existing  zone  models  and  develop  a  zone reference model for enterprise-grade data lake management. The term 'enterprise-grade' means that the model can support use  cases  typical  for  enterprises.  To  this  end,  we  make following contributions:

- We investigate representative real-world data analytics use cases for data lakes from  multiple business domains  and  derive a set of requirements  from practice.
- We use these requirements to assess existing data lake management concepts, in particular data ponds [8] and zone models [4-6, 9-11].
- We introduce a meta-model for zones that defines a zone's attributes and interactions within and outside of the zone model.
- We develop a zone reference model that addresses the identified requirements as an instantiation of the metamodel. This zone reference model provides guidance for the realization of zone-based data lake management.
- We assess this  reference  model  in  two  ways:  1)  we provide a prototypical implementation for an additional data analytics use case not covered during the requirement analysis to assess its adaptability, 2) we evaluate its suitability with regard to the derived requirements.

The  remainder  of  this  paper  is  structured  as  follows: Section II gives an overview of the underlying industry case

Eva Hoos Robert Bosch GmbH Stuttgart, Germany Eva.Hoos@de.bosch.com

TABLE I. REQUIREMENTS OF THE INVESTIGATED DATA ANALYTICS USE CASES

| Requirement        | Finance   | Quality Management   |   Manufacturing |   End Customer Services |
|--------------------|-----------|----------------------|-----------------|-------------------------|
| Pre-Processed      | 9         | 9                    |               9 |                       9 |
| Cleansed           | 9         | X                    |               9 |                       9 |
| Integrated         | 9         | 9                    |               9 |                       9 |
| Governed           | 9         | 9                    |               9 |                       9 |
| Reporting and OLAP | 9         | 9                    |               9 |                       9 |
| Advanced Analytics | X         | 9                    |               9 |                       9 |
| Writing back       | X         | 9                    |               9 |                       9 |

and  derives  a  set  of  requirements  from  typical  use  cases. Section III presents related work in data lake management and assesses existing zone models using the derived requirements. Section IV introduces the metamodel for zones, which serves as a basis to develop and detail the zone reference model in Section V. Section VI assesses the developed reference model. Section VII concludes the paper.

## VII. CONCLUSION AND FUTURE WORK

Data lakes promise the flexible and comprehensive analyses of data. To increase the efficiency of data analyses on  data  lakes  and  exploit  synergies  between  use  cases  by reusing processed data, different processing degrees of data are often managed in zones. Literature introduces a multitude of different zone models, but there exists no consensus and no assessment. It remains unclear which zones should be included in a zone model in practice to support the multitude of use cases that are implemented on a data lake.

In this work, we addressed this gap. From multiple data analytics use cases at a large, globally active manufacturer, we derived requirements towards an enterprise-grade zone-based data lake management. It showed that existing zone models could not meet all requirements. In addition, they significantly lacked description detail as well as a derivation methodology and assessment. We thus developed a meta-model for zones that  allows  to  describe  zones  in  a  zone  model  in  a  generic scheme. Based on this meta-model for zones and the derived requirements,  we  developed  the  zone  reference  model  to streamline the realization of use cases in an enterprise-wide data lake. This reference model specifies six zones (Landing Zone, Raw Zone, Harmonized Zone, Distilled Zone, Explorative  Zone,  and  Delivery  Zone)  and  details  their characteristics.  Finally,  we  prototypically  implemented  the zone reference model as a proof of concept for a data analytics use  case  from  a  real-world  enterprise.  In  doing  so,  we evaluated our concept's practicability in a realistic scenario. We also assessed the reference model's suitability with regard to  the  derived requirements. Overall, our assessment shows that the reference model was generally applicable.

Our current implementation of the zone reference model served  just  as  a  proof  of  concept.  Future  work  thus  has  to investigate possible implementations for zones in a data lake, identify  challenges,  and  derive  implementation  patterns  for the zones of the reference model. These patterns consider the dependencies between zones, data modeling, storage architecture, and other aspects of the data lake. In doing so, they provide guidance towards the definition of a data lake architecture, allowing for standardization and interoperability among data lakes and other systems.

---

## TITLE: A Zone-Based Data Lake Architecture for IoT, Small and Big Data

Vincent-Nam Dang IRIT, (CNRS/UMR 5505) CNRS Toulouse, France vincent-nam.dang@irit.fr

##Publication year
2021

## ABSTRACT

In the context of big data, we have to manage different types of data such as sensor data, smart data or voluminous data. Some architectures such as Lambda or Kappa exist to ensure both real-time analysis and batch analysis. However, these architectures cannot industrialize data management and processing practices, especially if the data come from several application domains. Data lake (DL) is the solution to all these issues as it provides governance, multidomain usage and support of real-time and batch analyzes. Nevertheless, very few implementations exist for the data lake. In this paper we propose a zone-based data lake architecture precisely defined at functional and technical levels with a metadata-model to govern all the steps in DL (ingestion, processing, analyzing). Some results of the NeOCampus project are presented to validate our solution.


## KEYWORDS

Stream IoT Data, Data Lake, Zone-based, Metadata, Technical Architecture

## 1 INTRODUCTION

IoT data is increasingly integrated into the core of today's society. To analyze a market or a product, decision makers must integrate

Permission to make digital or hard copies of all or part of this work for personal or classroom use is granted without fee provided that copies are not made or distributed for profit or commercial advantage and that copies bear this notice and the full citation on the first page. Copyrights for components of this work owned by others than ACM must be honored. Abstracting with credit is permitted. To copy otherwise, or republish, to post on servers or to redistribute to lists, requires prior specific permission and/or a fee. Request permissions from permissions@acm.org.

To meet the previously stated objectives and contrary to other proposals [6], we propose a complete solution composed of a functional architecture, a technical architecture of a Multi-Zone Data Lake (MZDL) and experiment assessments. This Data lake must allow (i) ingest of different data sources, (ii) implement of preprocessing upstream of analytics, (iii) provide access and consumption of this pre-processed data and finally (iv) properly govern the data throughout previous steps to avoid inaccessible, invisible, incomprehensible [1] or untrustworthy data. To address the veracity problem, we have added an efficient metadata management system that allows the data characterization and security mechanisms and tools that allows greater confidence in the data. This solution will be described from a logical and physical point of view.

Faced with the plurality of data types, the data lake (DL) is one of the most appropriate solutions. DL is a big data analytics solution that allows users to ingest data in its raw form from different sources and prepare it for different types of data analysis [12]. With a DL, all types of data can be stored for further analysis for different users. Even if, in principle, the DL seems to adapt to different needs, it is necessary to define an architecture that takes into account all the usual needs of big data analytics focused on large volume data or data with high velocity while integrating the constraints specific to IoT and small data.

The paper is organized as follows. In section 2, a state of the art on IoT data analysis is presented and it shows the limitations of current work. Our proposal is explained in the following sections. In section 3, we provide a functional architecture based on 4 zones. We focus on a metadata model which is not a simple data catalog but which saves all the information related to ingested data, transformation processing and analyzes. This metadata model will facilitate the task of a data analyst by allowing him to easily search for ingested data or even transformation processing or analyzes. In section 4, we expose the different components of our technical architecture and we justify our choices. A discussion about Hadoop is also presented. Our proposal is experimented in the specific context (NeOCampus project). In section 5, we explained the ingested source of data, the transformation processes we implemented and the analyzes carried out. Finally, we present the metadata management system dedicated to data analysts.

## 6 CONCLUSIONS

This paper fall within the context of big data analytics with varied data. It includes batch data with large volume, stream data with high velocity or IoT sensor readings with great variety. Our solution addresses the issues raised by this new traffic created by connected objects while maintaining the primary applications of big data analytics. From a theoretical point of view, with a functional architecture in four zones enriched with a metamodel that adapts to any type of data, as well as from a technical point of view, with an architecture designed to take advantage of the genericity of object-oriented storage. Our solution offers a solution that adapts to any type of data, in terms of volume or type. More than the ability

---

## TITLE:  About Relationships in Data Lakes

Ahlame Diouan, Eric Feyret, Jérôme Darmont, Sabine Loudcher

##Publication year
2024

##Abstract
In the era of Big Data, managing voluminous and heterogeneous data presents significant challenges for organizations. To tackle these challenges, the concept of a data lake has emerged as a promising solution, allowing the storage of raw data from diverse sources in their original format. An efficient metadata management system plays a crucial role in preventing data lake to turn into an unusable data swamp by providing a structured framework for organizing, categorizing and establishing relationships between data entities.

In this paper, identify the various relationships from diverse domains found in the literature. Then, we categorize the types of relationships and propose a relationship typology that classes relationships by similarity, containment, grouping and provenance. Eventually, we also aim to check whether goldMEDAL, a state-of-the-art generic metadata management model, adequately supports all such relationships. This evaluation is particularly relevant for Bial-X, which seeks to implement a robust metadata management system based on goldMEDAL's concepts.

## Keywords
Data lakes · Data discovery· Semantic relationships· Big data.

## 1 Introduction

In recent years, there has been a huge increase in global data production and organizations' decision-making processes have been revolutionized by the availability of large volumes of heterogeneous data, known as Big Data. This exponential growth not only presents real opportunities, but also challenges related to data volume, velocity and variety that exceed the capabilities of traditional data storage and management systems [18].

To address this issue, James Dixon proposes the concept of a data lake as a practical solution [6]. A data lake allows storing raw data from heterogeneous sources in their original format. In the absence of a data schema, the presence of a robust metadata system is crucial for enabling data queries and thus preventing the data lake from becoming a data swamp, i.e., an unusable data lake. Moreover, an efficient metadata system provides users with a unified interface to search, explore, and understand the available data entities and the relationships between them.

Bial-X's customers require a metadata management system to effectively manage a data lake and establish semantic relationships between data entities. Note that there are many terms similar to relationship, e.g., relation, link, linkage and connection. However, after reviewing the literature, relationship appears to be the most frequent term. Finding relationships provides users with a global view of metadata, through which they can interpret said relationships and gain valuable context into how various data entities are interconnected, facilitating a deeper understanding of their significance within the data lake. Since the data lake literature seems unanimous about the importance of a metadata system, we benchmarked state-of-the-art metadata management systems, i.e., DataGalaxy 3 , Atlas 4 , Open Data Discovery 5 and OpenMetadata 6 . These tools offer various forms of relationships, including operational and structural relationships, e.g., 'entity In' and 'aggregation'), but also lineage (provenance) relationships, which are important for understanding the origins and transformations of data entities.

Lineage relationships belong to so-called semantic relationships, but there are still other semantic relationships that metadata management systems do not support. Semantic relationships are defined as 'any form of hierarchical, generic or predefined semantic relationships (semantic connections between data sets, e.g., for provenance or governance)' [14].

Eventually, our contribution is threefold.

1. We survey the various relationships between data entities found in the literature, notably aiming to pinpoint all semantic relationships that meet Bial-X's specific needs.
2. We categorize the types of relationships and propose a relationship typology that classes relationships by similarity, containment, grouping and provenance.
3. We hypothesize and check that goldMEDAL, a state-of-the-art generic metadata management model [24], can adequately support all the relationships we identify in our survey. This evaluation is crucial for Bial-X, as the company funded a PhD thesis that was part of goldMEDAL's design.

In the remainder of this paper, we first explicit our survey methodology and present the metadata metamodel goldMEDAL that we use throughout this paper (Section 2). Next, we present and discuss our relationship typology, i.e., similarity, containment, grouping and provenance relationships (Section 3). Finally, we conclude this paper and hint at future works (Section 4).

## 4 Conclusion and Perspectives

One key challenge in data lakes is to find and discover relationships between different data entities, which facilitate the process of data integration, discovery and analysis. While various metadata management systems exist, they often do not address relationships and particularly semantic relationships.

Our primary contribution is an extensive literature review and analysis, where we identify and categorize relationships based on their underlying characteristics and implications for data management. The outcome is a relationship typology that shed light on the diverse semantic relationships between data entities within data lakes.

Furthermore, we had hypothesized that goldMEDAL could support all the relationships found in our survey. Tables 2-5 show that goldMEDAL's concepts cover all the types of relationships identified in our survey. It is somehow a validation that goldMEDAL's conceptual model provides a flexible and comprehensive framework for metadata management and a promising solution for enhancing data discovery, exploration and analysis in data lake environments.

In future research, we plan to design a metadata management system that not only supports operational and structural relationships, but also semantic relationships. As of today, we have not ruled between:

1. contribute to the open source metadata management systems available, i.e., Open Data Discovery and OpenMetadata, and extend one of them to support semantic relationships;
2. build a metadata management system from scratch, based on the goldMEDAL metadata metamodel.

Furthermore, there are explicit relationships that are easy to spot, e.g., when designing a database schema. Yet, there are also implicit relationships that are hidden, especially in data lakes with highly heterogeneous data. Such highpotential relationships, e.g., similarity relationships, can be mined by machine learning or Large Language Models (LLMs). The ultimate goal is to interlink data entities so as to navigate and search data within a whole data lake.

Eventually, we lately identified additional relationships, i.e., causality [17] and correlation [22]. Of course, they are definitely different, so we need to investigate these relationships further.

Acknowledgments. Ahlame Diouan's PhD is funded by BIAL-X. The authors thank the anonymous reviewers for their useful comments.

Disclosure of Interests. The authors have no competing interests to declare that are relevant to the content of this article.

---

## TITLE:  Active XML-based Web Data Integration

Rashed Salem. Jérôme Darmont. Omar Boussaïd

##Publication year
2013

##Abstract
Today,  the  Web  is  the  largest  source  of  information  worldwide.  There  is  currently  an  increasing demand that decision-making applications such as Data Warehousing (DW) and Business Intelligence (BI) move onto  the  Web,  especially  in  the  cloud.  Integrating  data  into  the  DW/BI  applications  is  a  critical  and  timeconsuming task. To make better decisions in DW/BI applications, next generation data integration poses new requirements to data integration systems, over those posed by traditional data integration.

We propose in this paper a metadata-based, event-driven, and service-oriented framework for integrating realtime  data  autonomously.  Our  framework  utilizes  Web  standards  to  integrate  data  from  heterogeneous  and distributed  sources.  It  exploits  the  XML  language  to  address  data  heterogeneity,  Web  services  to  tackle  data distribution,  and  Active  XML  (AXML)  to  store  integrated  data.  Our  framework  is  also  subscribed  to  web services for real-time change data capture. Moreover, beside logging different framework events into a specified repository for on-line analysis and reporting, we propose a novel Frequency XML-based Tree (FXT) structure for mining association rules from logged event streams using XQuery. Our framework is also incorporates active rules to automate and activate different integration services. Finally, we present a web application prototype as a proof of concept.

##Keywords
Real-time data integration, Web data, integration services, active rules, event stream mining.

## 1 Introduction

Business intelligence (BI) is a set of applications and technologies for gathering, storing, analyzing, and providing access to data in order to help enterprise users make better business decisions.  BI  applications  include  the  activities  of decision-support  systems, querying  and reporting,  online  analytical  processing  (OLAP),  statistical  analysis,  forecasting,  and data mining. BI applications typically use data stored in a data warehouse or data marts extracted from the data warehouse. A data warehouse is a central repository for all or significant parts of  the  data  that  an  enterprise's  various  business  systems  collect.  It  provides  the  base  to perform refined reporting and analytics. Thus, data warehousing (DW) is a vital aspect of BI, and  both  DW/BI  today  play  an  important  role  in  decision  making.  DW  processes  include integrating, storing and analyzing business data (Figure 1). Data integration is a crucial task for DW/BI applications. It consumes a large fraction of the effort (70% by some estimators). Data integration systems consolidate data from various data sources into a target warehouse, performing extraction-transformation-loading (ETL) tasks.

Nowadays, the Web is the world's largest source of information. The Web is very rich with heterogeneous and distributed data (e.g., semi-structured/unstructured data, review chats, emails, images, videos, voice call transcripts, feedback and surveys). Other valuable data types include relational databases, XML documents, flat files, online transaction records, external data  feeds,  sensor  and  streaming  data.  We  term  such  heterogeneous  and  distributed  data complex data . Data may be qualified as complex if they are: diversely structured, represented in various formats and models, originating from several different sources, described through different perspectives and/or changing in terms of definition or value over time  (Darmont et al.  2005).  Therefore,  modern  DW/BI  applications  currently  move  onto  the  Web,  e.g.,  to integrate  Web  (complex)  data  to  make  better  decision,  or  benefit  from  cloud  computing facilities. In the cloud, BI is accessible via any browser; there is no need to buy any software nor hardware. With BI software running in the cloud, data integration must be carried out with back-end systems, far from end-users.

By  studying  the  literature,  we  observed  that  data  flow  in  traditional  data  integration systems is one-way. The dominant way of populating data warehouses and data marts is to operate ETL processes offline, in batch mode, usually at regular interval of downtime (e.g., at the end of a day, week, or month). However, demand for fresh data in either DW or BI is strongly  desired  in  many  businesses.  For  example,  enterprises  need  to  integrate  real-time changing  customer  needs,  customer  click  stream  data,  up-to-minute  inventory  and  pricing data. Real-time acquisition of radar stream and weather data is necessary for forecasting. Ebanks  need  to  integrate  real-time  data  to  react  against  fraudulent  transactions.  Therefore, 'real-time' or 'near real-time' data should be integrated to minimize latency delays between BI systems and business operations for better decision making. Furthermore, traditional data integration systems are passive in nature, with data integration tasks conforming to a static scheduling  plan.  However,  today's  DW/BI  applications  demand  to  detect  and  react  to different events in an autonomic way.

Hence,  we  propose  in  this  paper  to  integrate  Web  (complex)  data  in  a  near  real-time, autonomic and active way, using Web  standards (XML,  Web  services and related technologies). Rather than dealing with Web data heterogeneity and distribution, we also deal with two main Web data integration issues, which are 1) integrating Web data in near realtime, and 2) integrating Web data in an autonomous and active way (i.e.,  with minimum user intervention).  Firstly, near real-time data is guaranteed to be integrated via maximizing the role  of  integration  services  to  integrate  Web  data.  For  instance,  integration  services  can  be embedded in so-called Active XML (AXML) documents to integrate real-time data on the fly upon  request.  Other  services  can  be  employed  to  change  data  capture  (CDC),  then  the integration system can be subscribed to CDC services to be notified with only data near realtime data changes. Secondly, the actively and autonomously integrating data can be achieved by mining logged events and enriching the system with some active (Event-Condition-Action, or ECA) rules. Therefore, beside proposing to warehouse logged events of the data integration system for further analysis and mining, we also propose a novel Frequency XML-based Tree (FXT) structure for mining association rules from the framework's logged event streams. The discovered  rules  can  then  be  employed  to  maintain,  self-configure  and  automate  data integration tasks. Our framework incorporates active rules to automatically activate integration services according to encountered events. Finally, integration services query and interact with active metadata repository to maintain different integration system activities.

The  rest  of  this  paper  is  organized  as  follows.  In  section  2,  some  of  the  related  works about  data  integration,  Web-warehousing,  real-time  and  active  warehousing,  AXML  and active  XML  rules  are  reviewed.  Section  3  introduces  our  framework  for  real-time  Web (complex)  data  integration  and  discusses  the  role  of  metadata  in  data  integration.  Data integration using Web  services is detailed in section 4. Mining  logged  events and incorporating  active  rules  to  reactive  data  integration  tasks  are  discussed  in  section  5. Implementation  issues  are  presented  in  section  6.  Finally,  we  conclude  and  discuss  future trends in section 7.

## 7 Conclusions and Perspectives

In this paper, we propose an innovative metadata-based, service-oriented, and event-driven data  integration  framework  meeting  next  generation  data  integration,  for  better  decisionmaking in DW/BI applications. Our framework addresses two main issues of Web (complex) data integration: 1) a near real-time data integration, and 2) an autonomous and active data integration.  Our  framework  noticeably  tackles  limitations  of  traditional  data  integration systems utilizing Web standards for performing data integration tasks (for instance, it uses the XML language to  handle  data  heterogeneity,  Web  services  to  tackle  data  distribution,  and AXML to store  integrated  data).  Employing  such  Web  standards  in  data  integration  helps integrating  real-time  data,  for  example  by  invoking  embedded  services  in  the  AXML documents to integrate real-time data on the fly, or by applying the subscription/notification paradigm  to  services  that  responsible  for  detecting,  capturing,  and  notifying  only  real-time data  changes.  Furthermore,  framework  logged  events  are  mined  in  innovative  manner  to discover  interesting  knowledge  to  help  self-maintain,  self-configure,  and  automate  data integration tasks. Some of active rules are also enriched with the system to activate different integration  tasks.  Finally,  as  a  proof  of  concept,  we  have  implemented  a  web  application prototype that is freely available on-line 6 .

Recall  that  different  framework  events  are  logged  and  warehoused  in  a  specified repository, called event repository. Thus, OLAP tools and other data mining techniques can be applied in the future to explore and analyze logged event information. We also aim to carry out  machine  learning  to  realize  autonomous  semantic  mediation  between  the  data  sources, integration services and the targets. Therefore, we can ensure achieving more automated data integration  workflow.  Moreover,  integration  service  composition  is  important  to  meet  the complexity of business integration needs. We intend to  study service composition for more complicated business data integration. We addressed in this paper the concepts of Integration as a Service (IaaS), we intend in the future to address different challenges for deploying our framework of these concepts in the cloud. Moreover, data quality is another critical aspect to DW/BI applications  and  it  goes  hand  in  hand  with  data  integration.  The  right  data  quality during  the  process  of  loading  a  data  warehouse  leads  to  better  informed  and  more  reliable decisions. Thus, addressing data quality is another interesting future trend.

---

## TITLE:  An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management

Athira Nambiar and Divyansh Mundra

##Publication year
2022

## Abstract
Data is the lifeblood of any organization. In today's world, organizations recognize the vital role of data in modern business intelligence systems for making meaningful decisions and staying competitive in the field. Efficient and optimal data analytics provides a competitive edge to its performance and services. Major organizations generate, collect and process vast amounts of data, falling under the category of big data. Managing and analyzing the sheer volume and variety of big data is a cumbersome process. At the same time, proper utilization of the vast collection of an organization's information can generate meaningful insights into business tactics. In this regard, two of the popular data management systems in the area of big data analytics (i.e., data warehouse and data lake) act as platforms to accumulate the big data generated and used by organizations. Although seemingly similar, both of them differ in terms of their characteristics and applications. This article presents a detailed overview of the roles of data warehouses and data lakes in modern enterprise data management. We detail the definitions, characteristics and related works for the respective data management frameworks. Furthermore, we explain the architecture and design considerations of the current state of the art. Finally, we provide a perspective on the challenges and promising research directions for the future.

## Keywords
big data; data warehousing; data lake; enterprise data management; OLAP; ETL tools; metadata; cloud computing; Internet of Things

## 1. Introduction

Big data analytics is one of the buzzwords in today's digital world. It entails examining big data and uncovering the hidden patterns, correlations, etc. available in the data [1]. Big data analytics extracts and analyzes random data sets, forming them into meaningful information. According to statistics, the overall amount of data generated in the world in 2021 was approximately 79 zettabytes, and this is expected to double by 2025 [2]. This unprecedented amount of data was the result of a data explosion that occurred during the last decade, wherein data interactions increased by 5000% [3].

Big data deals with the volume, variety, and velocity of data to process and provides veracity (insightfulness) and value to data. These are known as the 5 Vs of big data [4]. An unprecedented amount of diverse data is acquired, stored, and processed with high data quality for various application domains. These include business transactions, real-time streaming, social media, video analytics, and text mining, creating a huge amount of semior unstructured data to be stored in different information silos [5]. The efficient integration and analysis of these multiple data across silos are required to divulge complete insight into the database. This is an open research topic of interest.

Big data and its related emerging technologies have been changing the way e-commerce and e-services operate and have been opening new frontiers in business analytics and related research [6]. Big data analytics systems play a big role in the modern enterprise management domain, from product distribution to sales and marketing, as well as analyzing hidden trends, similarities, and other insights and allowing companies to analyze and optimize their data to find new opportunities [7]. Since organizations with better and more accurate data can make informed business decisions by looking at market trends and customer preferences, they can gain competitive advantages over others. Hence, organizations invest tremendously in artificial intelligence (AI) and big data technologies to strive toward digital transformation and data-driven decision making, which ultimately leads to advanced business intelligence [6]. As per reports, the worldwide big data analytics and business intelligence software applications markets seem as though they will increase by USD 68 billion and 17.6 billion by 2024-2025, respectively [8].

Big data repositories exist in many forms, as per the requirements of corporations [9]. An effective data repository needs to unify, regulate, evaluate, and deploy a huge amount of data resources to enhance the analytics and query performance. Based on the nature and the application scenario, there are many different types of data repositories other than traditional relational databases. Two of the popular data repositories among them are enterprise data warehouses and data lakes [10-12].

Adata warehouse (DW) is a data repository which stores structured, filtered, and processed data that has been treated for a specific purpose, whereas a data lake (DL) is a vast pool of data for which the purpose is not defined [9]. In detail, data warehouses store large amounts of data collected by different sources, typically using predefined schemas. Typically, a DW is a purpose-built relational database running on specialized hardware either on the premises or in the cloud [13]. DWs have been used widely for storing enterprise data and fueling business intelligence and analytics applications [14-16].

Data lakes (DLs) have emerged as big data repositories that store raw data and provide a rich list of functionalities with the help of metadata descriptions [10]. Although the DL is also a form of enterprise data storage, it does not inherently include the same analytics features commonly associated with data warehouses. Instead, they are repositories storing raw data in their original formats and providing a common access interface. From the lake, data may flow downstream to a DW to get processed, packaged, and become ready for consumption. As a relatively new concept, there has been very limited research discussing various aspects of data lakes, especially in Internet articles or blogs.

Although data warehouses and data lakes share some overlapping features and use cases, there are fundamental differences in the data management philosophies, design characteristics, and ideal use conditions for each of these technologies. In this context, we provide a detailed overview and differences between both the DW and DL data management schemes in this survey paper. Furthermore, we consolidate the concepts and give a detailed analysis of different design aspects, various tools and utilities, etc., along with recent developments that have come into existence.

The remainder of this paper is organized as follows. In Section 2, the terminology and basic definitions of big data analytics and the data management schemes are analyzed. Furthermore, the related works in the field are also summarized in this section. In Section 3, the architectures of both the data warehouse and data lake are presented. Next, in Section 4, the key design aspects of the DW and DL models along with their practical aspects are presented at length. Section 5 summarizes the various popular tools and services available for enterprise data management. In Sections 6 and 7, the open challenges and promising directions are explained, respectively. In particular, the pros and cons of various methods are critically discussed, and the observations are presented. Finally, Section 8 concludes this survey paper.

## 8. Conclusions

Enterprises and business organizations exploit a huge volume of data to understand their customers and to make informed business decisions to stay competitive in the field. However, big data come in a variety of formats and types (e.g., structured, semi-structured and unstructured data), making it difficult for businesses to manage and use them effectively. Based on the structure of the data, typically, two types of data storage are utilized in enterprise data management: the data warehouse (DW) and data lake (DL). Although being

---

## TITLE: ArchaeoDAL: A Data Lake for Archaeological Data Management and Analytics

Pengfei Liu Sabine Loudcher Jérôme Darmont sabine.loudcher@univ-lyon2.fr jerome.darmont@univ-lyon2.fr Université de Lyon, Lyon 2, UR ERIC Lyon, France

##Publication year
2021


## ABSTRACT

With new emerging technologies, such as satellites and drones, archaeologists collect data over large areas. However, it becomes difficult to process such data in time. Archaeological data also have many different formats (images, texts, sensor data) and can be structured, semi-structured and unstructured. Such variety makes data difficult to collect, store, manage, search and analyze effectively. Afew approaches have been proposed, but none of them covers the full data lifecycle nor provides an efficient data management system. Hence, we propose the use of a data lake to provide centralized data stores to host heterogeneous data, as well as tools for data quality checking, cleaning, transformation and analysis. In this paper, we propose a generic, flexible and complete data lake architecture. Our metadata management system exploits goldMEDAL, which is the most generic metadata model currently available. Finally, we detail the concrete implementation of this architecture dedicated to an archaeological project.

## KEYWORDS

Data lake architecture, Data lake implementation, Metadata management, Archaeological data, Thesaurus

## 1 INTRODUCTION

Over the past decade, new forms of data such as geospatial data and aerial photography have been included in archaeology research [8], leading to new challenges such as storing massive, heterogeneous data, high-performance data processing and data governance [4]. As a result, archaeologists need a platform that can host, process, analyze and share such data.

Classical data management solutions, i.e., databases or data warehouses, only manage previously modeled structured data (schemaon-write approach). However, archaeologists need to store data of all formats and they may discover the use of data over time. Hence, we propose the use of a data lake [2], i.e., a scalable, fully integrated platform that can collect, store, clean, transform and analyze data of all types, while retaining their original formats, with no predefined structure (schema-on-read approach). Our data lake, named ArchaeoDAL, provides centralized storage for heterogeneous data and data quality checking, cleaning, transformation and analysis tools. Moreover, by including machine learning frameworks into ArchaeoDAL, we can achieve descriptive and predictive analyses.

In this context, a multidisciplinary consortium of archaeologists and computer scientists proposed the HyperThesau project 1 , which aims at designing a data management and analysis platform. HyperThesau has two main objectives: 1) the design and implementation of an integrated platform to host, search, analyze and share archaeological data; 2) the design of an archaeological thesaurus taking the whole data lifecycle into account, from data creation to publication.

Many existing data lake solutions provide architecture and/or implementation, but few include a metadata management system, which is nevertheless essential to avoid building a so-called data swamp, i.e., an unexploitable data lake [6, 12]. Moreover, none of the existing metadata management systems can provide all the needed metadata features we need. For example, in archaeology, thesauri are often used for organizing and searching data. Therefore, the metadata system must allow users to define one or more thesauri, associate data with specific terms and create relations between terms, e.g., synonyms and antonyms. Thus, we conclude that existing data lake architectures, including metadata systems, are not generic, flexible and complete enough for our purpose.

To address these problems, we propose in this paper a generic , flexible and complete data lake architecture. Moreover, our metadata model exploits and enriches goldMEDAL, which is the most generic metadata model currently available [13]. To illustrate the flexibility and completeness of ArchaeoDAL's architecture, we provide a concrete implementation dedicated to the HyperThesau project. With a fully integrated metadata management and security system, we can not only ensure data security, but also track all data transformations.

The remainder of this paper is organized as follows. In Section 2, we review and discuss existing data lake architectures. In Section 3, we present ArchaeoDAL's abstract architecture, implementation and deployment. In Section 4, we present two archaeological application examples. In Section 5, we finally conclude this paper and present future works.

## 5 CONCLUSION AND FUTURE WORKS

In this article, we first introduce the need of archaeologists for software platforms that can host, process and share new, voluminous and heterogeneous archaeological data. Data lakes looking like a viable solution, we examine different existing data lake solutions and conclude that they are not generic, flexible nor complete enough to fulfill project HyperThesau's requirements.

As a result, we propose a generic, flexible data lake architecture that covers the full data lifecycle. ArchaeoDAL's architecture is generic because it does not depend on any specific technology. For example, in our current implementation, we use HDFS as the storage

layer. Yet, one of our collaborators could easily replace HDFS by Amazon S3. In Section 4.1.4, we demonstrate how to organize data flexibly, which many existing solutions [1, 5, 6, 15] do not allow. In Section 4.1.4, we also demonstrate that ArchaeoDAL can gather metadata automatically during the full data lifecycle. Eventually, many features of ArchaeoDAL are very hard to demonstrate in a paper. Thus, we recorded demo videos that are available online 26 .

Second, we handle a lot of images, e.g., aerial photographs and satellite images. It is also very time consuming to detect useful objects in such images. Although some machine learning tasks can already be performed from ArchaeoDAL via Spark-ML, we would like to use deep learning techniques to assist archaeologists in processing images more efficiently.

Archaeologists encounter two major problems while working with ArchaeoDAL. First, to associate data and terms in a thesaurus, domain experts are needed. Moreover, this data-terms matching is a very expensive and time-consuming operation. Thus, we plan to use natural language processing techniques to associate data with a thesaurus automatically, calling domain experts only for a posteriori verification.

---

## TITLE: Architecture of Data Lakes

Houssem CHIHOUB, Cédrine MADERA, Christoph QUIX and Rihan HAI.

##Publication year
2020

## Preliminary Remarks
In this chapter, we define the most important features of data lake systems, and from there we outline an architecture for these systems. Our vision for a data lake system is based on a generic and extensible architecture with a unified data model, facilitating the ingestion, storage and metadata management over heterogeneous data sources.

We also introduce a real-life data lake system called Constance that can deal with sophisticated metadata management over raw data extracted from heterogeneous data sources. Constance discovers, extracts, and summarizes the structural metadata from the data sources, and annotates data and metadata with semantic information to avoid ambiguities. With embedded query rewriting engines that support structured data and semi-structured data, Constance provides users with a unified interface for query processing and data exploration.

## 2.1. Introduction

Big Data has undoubtedly become one of the most important challenges in database research. An unprecedented volume, a large variety and high velocity of data need to be captured, stored and processed to provide us knowledge. In the Big Data era, the trend of Data Democratization brings in a wider range of users, and at the same time a higher diversity of data and more complex requirements for integrating, accessing and analyzing these data.

However, compared to other Big Data features such as 'Volume' and 'Velocity' (sometimes also including 'Veracity' and 'Value'), 'Variety' remains a daunting challenge with more widespread issues [ABA 14]. Variety (or heterogeneity) exists at several levels:

- at the instance level: the same entity might be described with different attributes;
- at the schema level: the data might be structured with various schemas [DON 15];
- at the level of the modeling language: different data models can be used (e.g. relational, XML, or a document-oriented JSON representation).

For example, web-based business transactions, sensor networks, real-time streaming, social media and scientific research generate large amounts of semi-structured data and unstructured data, which are often stored in separated information silos. The combination and integrated analysis of the information in these silos often bring the required valuable insight, which is not achievable with an isolated view on a single data source.

However, the heterogeneity of the data sources requires new integration approaches which can handle the large volume and speed of the generated data, as well as the variety of these data. Traditional ' Schema-comes-first ' approaches as in the relational world with data warehouse systems and ETL (Extract-Transform-Load) processes are not appropriate for a flexible and dynamically changing data management landscape.

The requirement for pre-defined, explicit schemas is a limitation which has drawn the interest of many developers and researchers to NoSQL data management systems, because these systems should provide data management features for a high amount of schema-less data. However, even though open-source platforms, such as Hadoop with higher level languages (e.g. Pig and Hive), as well as NoSQL systems (e.g. Cassandra and MongoDB), are gaining more popularity, the current market share is still dominated by relational systems 1 .

Nevertheless, a one-size-fits-all Big Data system is unlikely to solve all the challenges that are required from data management systems today. Instead, multiple classes of systems, optimized for specific requirements or hardware platforms, will co-exist in a data management landscape [ABA 14].

Thus, these new systems do not solve the heterogeneity problem, as they just add new choices for data management, thereby increasing the complexity of a data management landscape, by introducing new data models, new query languages, new APIs and new transaction models. Therefore, the need for an integrated access to all data in organizations is more prominent than before.

As an answer to this, the term Data Lake (DL) has been coined recently by IT consulting companies [STE 14] 2 and database vendors [CHE 14] 3 , [TER 15] 4 . Various solutions and systems are proposed to address the challenges of a data lake. However, as 'data lake' is a current buzzword, there is much hype about it, even though many do not really know what it is. An abstracted definition from the IBM Redbook [CHE 14] is:

A data lake is a set of centralized repositories containing vast amounts of raw data (either structured or unstructured), described by metadata, organized into identifiable datasets, and available on demand.

An important keyword in the context of data lakes is 'on-demand', meaning that issues like schema definition, integration, or indexing should be done only if necessary at the time of data access. This might not only increase the cost or effort for accessing the data, but also increase the flexibility for dynamically changing data sources, as it is not necessary to define their schemas and mappings beforehand.

Another important keyword for data lakes is 'metadata'. As schema information, mappings and other constraints are not defined explicitly and are not required initially. It is important to extract as much metadata as possible from the data sources and if the metadata cannot be extracted from the sources automatically, a human has to provide additional information about the data source. Without any metadata, the data lake is hardly usable because the structure and semantics of the data are not known.

Upon examination of the publications of IT vendors that promote the idea of data lakes, one could fall under the impression that the users of data lakes are wizards who can pull some water from the lake into a cauldron, throw in some magic spices, stir it a little bit and them pull out the magic white rabbit (which is a metaphor for completely integrated datasets or great analytical results). In reality, however, the wizard requires a herd of IT consultants to set up the cauldron, the magic spices cost a lot of money, the stirring takes twice as long as expected, and the result is just an overcooked, lame duck, which nobody wants to eat, because users became vegetarians in the meantime!

We must point out that the initial plans and reality can be very distinct, which is caused not only by false promises of IT vendors, but also by underestimating the complexity of data integration problems [STO 14]. And so, the goal of this chapter is to provide an overview of the current discussion about data lakes from the perspective of database research, especially to point out the new challenges for data management systems. Luckily, we do not have to start from scratch, as many approaches in the area of data integration, semistructured data and distributed databases apply to data lakes as well. Therefore, here we analyze how existing approaches address the data lake challenges and where additional research is required.

The rest of the chapter is organized as follows: the current state of practice is summarized in section 2.2. Based on this, we describe in section 2.3 an architecture for a data lake system and its most important components. To illustrate such an architecture, we present in section 2.4 the Constance system first introduced in [HAI 16]. Finally, section 2.5 concludes the chapter with a few remarks.

## 2.5. Concluding remarks

The main challenge is to keep the flexibility of the original idea of a data lake, whilst making sure that the data lake is not used as a dumping ground for any kind of data garbage.

This requires some governance and quality control, the specification of minimum requirements for data to be put into the data lake. Most publications agree that metadata management is a crucial component in a data lake system, but lack a detailed description of their required functionalities. Moreover, since problems caused by data heterogeneity are currently mostly solved by very ad hoc solutions, further research is needed at the levels of query rewriting, data transformation and query optimization.

Nevertheless, the lazy, 'pay-as-you-go' principle of a data lake might simplify the implementation of an integration system. It is important to note that many techniques have to be adapted to take into account the incremental and flexible nature of the data lake approach.

---

## TITLE: Battlefield Situation Recognition Technology and Application Trend Based on Data Lake

Lejiang Guo * , Wenjie Tu, Fangxin Chen and Lei Xiao

##Publication year
2021

##Abstract

Battlefield  situation  is  the  basis  of  cognitive  consistency  of  battlefield  situation understanding. In the service of situation information organization, displaying and distribution is necessary to solve the problem of situation information difference between users at different levels  and  different  combat  tasks.  Through  the  research  of  data  Lake  technology  combined with  advanced  data  science  and  machine  learning  technology,  the  situation  recognition  and processing architecture based on data lake is proposed to solve these problems .It includes the network  architecture,  the  situation  cognition  and  processing  methods  which  can  improve various types of data storage and big data processing problems.

## 1. Introduction

Battlefield situation map is an organic combination of battlefield situation elements. It is based on the time  synchronization  and  spatial  registration  of  multi-source  situation  information.  It  integrates  a unique and unambiguous situation. It ensures the consistency of situation information in the process of description,  storage,  update,  query  and  distribution  by  a  certain  multidimensional  organization  and management mode. The common problems in battlefield situation map include incomplete information, information overload, general rough up and down, and state without potential.

The data lake is a centralized repository that allows all structured and unstructured data to be stored at  any  size.  It  can  store  data  without  first  having  to  structure  the  data  and  run  different  types  of analysis.  From  control  panel  and  visualization  to  big  data  processing,  the  real-time  analysis  and machine learning to guide better decision-making. When there is enough computing power to process and analyze all types of data, the analyzed data will be stored for users to use. Process structured data and convert them into multidimensional data or report to meet the requirements of advanced report and data analysis.

## 5. Conclusion and Prospect

This paper introduces the related concepts and main characteristics of battlefield situation system. It describes  the  situation  processing  process  and  key  technologies  for  the  development  of  battlefield situation  analysis  and  construction  research  ideas.  As  a  new  generation  of  big  data  analysis  and processing  infrastructure,  data  Lake  needs  to  go  beyond  the  traditional  big  data  platform.  In  the following aspects, it is the possible development direction of data Lake solution in the future.

Cloud native architecture of storage and computing are separated, computing power and storage capacity  can  be  independently  expanded.  multimodal  computing  engine  support,  SQL,  batch processing, streaming computing, machine learning, etc. Server state services are provided to ensure sufficient  flexibility  and  support  pay  on  demand.  Strong  data  management  capabilities.  Data  Lake needs to provide more powerful data management capabilities including data source management, data category management, processing flow arrangement, task scheduling, data traceability, data governance, quality management, authority management, etc. The management and support of various heterogeneous data sources, the support of full incremental migration of heterogeneous data, and the support  of  various  data  formats  are  the  directions  that  need  to  be  improved  continuously.  Deep integration  and  integration  with  business.  The  composition  of  typical  data  Lake  architecture  has become a consensus in the industry. The key to the success of the data Lake solution lies in the data management. Whether it is the management of the original data, the management of the data class purpose, the management of the data model, the management of the data authority or the management of  the  processing  tasks,  all  of  which  are  inseparable  from  the  adaptation  and  integration  with  the business.

In the future, more and more industry data Lake solutions will emerge, with data scientists and data analysis development and interaction. The analysis model and customized algorithm in the data Lake solution may be a key point in the future differentiation competition of the data Lake field.

---

## TITLE: Benchmarking Data Lakes Featuring Structured and Unstructured Data with DLBench

Pegdwend´ e N. Sawadogo 1 and J´ erˆ ome Darmont 1

##Publication year
2021

## Abstract

In the last few years, the concept of data lake has become trendy for data storage and analysis. Thus, several approaches have been proposed to build data lake systems. However, these proposals are difficult to evaluate as there are no commonly shared criteria for comparing data lake systems. Thus, we introduce DLBench, a benchmark to evaluate and compare data lake implementations that support textual and/or tabular contents. More concretely, we propose a data model made of both textual and CSV documents, a workload model composed of a set of various tasks, as well as a set of performance-based metrics, all relevant to the context of data lakes. As a proof of concept, we use DLBench to evaluate an open source data lake system we previously developed.

##Keywords

Data lakes · Benchmarking · Textual Documents · Tabular data

## 1 Introduction

Over the last decade, the concept of data lake has emerged as a reference for data storage and exploitation. A data lake is a large repository for storing and analyzing data of any type and size, kept in their raw format [3]. Data access and analyses from data lakes largely rely on metadata [12], making data lakes flexible enough to support a broader range of analyses than traditional data warehouses. Data lakes are thus handy for both data retrieval and data content analysis.

However, the concept of data lake still lacks standards [15]. Thus, there is no commonly shared approach to build, nor to evaluate a data lake. Moreover, existing data lake architectures are often evaluated in diverse and specific ways, and are hardly comparable with each other. Therefore, there is a need of benchmarks to allow objective and comparative evaluation of data lake implementations. There are several benchmarks for big data systems in the literature, but none of them considers the wide range of possible analyses in data lakes.

Hence, we propose in this paper the Data Lake Benchmark ( DLBench ) to evaluate data management performance in data lake systems. We particularly focus in this first instance on textual and tabular contents, which are often included in data lakes. DLBench is data-centric, i.e., it focuses on a data management

objective, regardless of the underlying technologies [2]. We also designed it with Gray's criteria for a 'good' benchmark in mind, namely relevance, portability, simplicity and scalability [8].

More concretely, DLBench features a data model that generates textual and tabular documents. By tabular documents, we mean spreadsheet or Comma Separated Value (CSV) files whose integration and querying is a common issue in data lakes. A scale factor parameter SF allows to vary data size in predetermined proportions. DLBench also features a workload model, i.e., a set of analytical operations relevant to the context of data lakes with textual and/or tabular content. Finally, we propose a set of performance-based metrics to evaluate such data lake implementations, as well as an execution protocol to execute the workload model on the data model and compute the metrics.

The remainder of this paper is organized as follows. In Section 2, we show how DLBench differs from existing benchmarks. In Section 3, we provide DLBench 's full specifications. In Section 4, we exemplify how DLBench works and the insights it provides. Finally, in Section 5, we conclude this paper and present research perspectives.

## 5 Conclusion

In this paper, we introduce DLBench , a benchmark for data lakes with textual and/or tabular contents. To the best of our knowledge, DLBench is the first data lake benchmark. DLBench features: 1) a data model made of a corpus of long, textual documents on one hand, and a set of raw tabular data on the other hand; 2) a query model of twenty query instances across ten different tasks; 3) three relevant metrics to assess and compare data lake implementations; and 4) an execution protocol. Finally, we demonstrate the use of DLBench by assessing the AUDAL data lake [16], highlighting that the AUDAL system scales quite well, especially for data retrieval and tabular data querying.

Future works include an extension of the structured part of DLBench 's data model with an alternative, larger dataset. Another enhancement of DLBench could consists in providing an overview of value distributions in generated data. Finally, we plan to perform a comparative study of existing data lake systems using DLBench .

---

## TITLE: Coining goldMEDAL: A new contribution to data lake generic metadata modeling

Étienne Scholly,Pegdwendé N. Sawadogo,Pengfei Liu,Javier A. Espinosa-Oviedo,Cécile Favre,Sabine Loudcher,Jérôme Darmont,Camille Noûs

##Publication year
2021


## ABSTRACT

The rise of big data has revolutionized data exploitation practices and led to the emergence of new concepts. Among them, data lakes have emerged as large heterogeneous data repositories that can be analyzed by various methods. An efficient data lake requires a metadata system that addresses the many problems arising when dealing with big data. In consequence, the study of data lake metadata models is currently an active research topic and many proposals have been made in this regard. However, existing metadata models are either tailored for a specific use case or insufficiently generic to manage different types of data lakes, including our previous model MEDAL. In this paper, we generalize MEDAL's concepts in a new metadata model called goldMEDAL. Moreover, we compare goldMEDAL with the most recent state-of-the-art metadata models aiming at genericity and show that we can reproduce these metadata models with goldMEDAL's concepts. As a proof of concept, we also illustrate that goldMEDAL allows the design of various data lakes by presenting three different use cases.

## 1 INTRODUCTION

While the big data revolution has shaken up the entire field of data management and analytics, new concepts have emerged to meet these new challenges. Data lakes belong to such new concepts. First introduced by James Dixon, a data lake is a vast repository of raw and heterogeneous data from which various analyses can be performed [4]. Data lakes quickly gained popularity and several teams started to address research issues [13, 15]. A key one is efficient metadata management for avoiding data lakes to turn into unexploitable data swamps [10, 11, 16, 19, 22].

However, most metadata management proposals in the literature [1, 8, 14], and their associated implementations, give few details on the way data are conceptually organized and are thence hardly reusable. Thus, other researchers proposed more theoretical approaches named metadata models. Such approaches aim to provide detailed guidelines to metadata system design, while being generic, i.e., flexible and adaptable to many use cases. Yet, data lake generic metadata modeling is still an open research issue. A feature-based assessment indeed shows that none of the existing metadata models is generic enough, including our own MEtadata model for DAta Lakes (MEDAL) [20].

To address this genericity issue, we introduce goldMEDAL, a revision of our MEDAL model. We define goldMEDAL through a classical three-level modeling process (i.e., conceptual, logical and physical). We choose a formal representation to avoid ambiguity but also provide a UML representation for readability. The logical level is a translation of the concepts using graph theory. Eventually, we describe three different physical models as proofs of concept. Furthermore, to highlight goldMEDAL's genericity, we show that the concepts of our metadata model help model state-of-the-art metadata models from the literature.

The remainder of this paper is organised as follows. Section 2 reviews and discusses existing data lake metadata models. Section 3 presents goldMEDAL's conceptual and logical models. Section 4 illustrates how goldMEDAL generalises other data lake metadata models and how it can be used to implement different data lakes. Finally, Section 5 concludes this paper and hints at future research.

## 5 CONCLUSION

In this paper, we introduced goldMEDAL, a generic data lake metadata model. goldMEDAL is based on four main concepts: data entity, grouping, link and process, which are defined at the conceptual and logical levels. These concepts interact altogether to support data lake metadata management requirements and they generalize almost all the concepts proposed in stateof-the-art metadata models : the concept of grouping supports the organization of data lakes in zones [18]; groupings allow managing multiple data granularity levels as in HANDLE [5].

Moreover, goldMEDAL supports all the features identified to compare data lake metadata models (Section 2.2), making it the most generic metadata model to the best of our knowledge.

Another particularity of goldMEDAL is the explicit possibility of data lineage tracing with the concept of process. goldMEDAL thus manages the dynamics of data, while the most recent metadata model from the literature, HANDLE [5], does not natively support it.

Eventually, we show as a proof of concept how goldMEDAL can be translated from conceptual and logical models to actual physical models with three different implementations of metadata models from distinct data lakes that feature both structured and unstructured data.

Future research and open issues include the 'industrialization' of data lakes, i.e., providing a software layer, connected to the metadata system, which allows non-data or non-computer scientists to transform and analyze their own data in autonomy, just as dynamic reports are prepared on top of data warehouses for the use of business (i.e, non technical) users. However, such a software layer must not become yet another black box. In consequence, we must take great care of accompanying users in their appropriation of our analysis tools, not only by training, but also by interweaving research methodologies from computer science with business practices by design , in close collaboration with the partners.

Moreover, exploiting a data lake and its metadata system may contribute to open data and open science. A well-designed data lake should indeed readily enforce the four FAIR principles 5 , i.e., findability, accessibility, interoperability and reusability. By adding an industrialization layer that allows non-data or noncomputer scientist exploit the data lake, we can further improve accessibility in a non-technical way , i.e., not only through suitable communication protocols. FAIR principles are very appealing to researchers in humanities and social sciences, as illustrated by AUDAL (management sciences; Section 4.2.2) and ArchaeoDAL (archaeology; Section 4.2.3).

Finally, to the best of our knowledge, the maintenance of data lake metadata is a completely open issue. For instance, how to manage a new categorization of metadata? How to change or transform the metadata system when it hits some limits, whether technical or functional? What if metadata become big in the sense of voluminous big data? Should obsolete data be deleted, which is contrary to the principle of data lakes, and how to ensure that the metadata accessibility FAIR principle remains enforced when source data are no longer available?

---

## TITLE: Combining Data Lake and Data Wrangling for Ensuring Data Quality in CRIS Combining Data Lake and Data Wrangling for Ensuring Data Quality in CRIS

Otmane Azeroual a *, Joachim Schöpfel b , Dragan Ivanovic c , Anastasija Nikiforova d,e Otmane Azeroual a *, Joachim Schöpfel b , Dragan Ivanovic c , Anastasija Nikiforova d,e

##Publication year
2022

## Abstract

Consolidation of  the  research  information  improves  the  quality  of  data  integration,  reducing  duplicates  between  systems  and enabling the required flexibility and scalability when processing various data sources. We assume that the combination of a data lake as a data repository and a data wrangling process should allow lowquality or 'bad' data to be identified and eliminated, leaving only highquality data, referred to as 'research information' in the Research Information System (RIS) domain, allowing for the most accurate insights gained on their basis. This, however, would lead to increased value of both the data themselves and data-driven actions contributing to more accurate and aware decision-making. This cleansed research information is then entered into the appropriate target Current Research Information System (CRIS) so that it can be used for further data processing steps. In order to minimize the effort for the analysis, the proliferation and enrichment of large amounts of data and metadata, as well as to achieve far-reaching added value in information retrieval for CRIS employees, developers and end users, this paper outlines the concept of  a  curated  data  lake  with  the  data  wrangling  process,  showing  how  it  can  be  used  in  CRIS  to  clean  up  data  from heterogeneous data sources during their collection and integration. Consolidation of  the  research  information  improves  the  quality  of  data  integration,  reducing  duplicates  between  systems  and enabling the required flexibility and scalability when processing various data sources. We assume that the combination of a data lake as a data repository and a data wrangling process should allow lowquality or 'bad' data to be identified and eliminated, leaving only highquality data, referred to as 'research information' in the Research Information System (RIS) domain, allowing for the most accurate insights gained on their basis. This, however, would lead to increased value of both the data themselves and data-driven actions contributing to more accurate and aware decision-making. This cleansed research information is then entered into the appropriate target Current Research Information System (CRIS) so that it can be used for further data processing steps. In order to minimize the effort for the analysis, the proliferation and enrichment of large amounts of data and metadata, as well as to achieve far-reaching added value in information retrieval for CRIS employees, developers and end users, this paper outlines the concept of  a  curated  data  lake  with  the  data  wrangling  process,  showing  how  it  can  be  used  in  CRIS  to  clean  up  data  from heterogeneous data sources during their collection and integration.


##Keywords

CRIS; research information; research information system; heterogeneous data sources; data quality; data wrangling; data lifecycle; data consolidation; data lake; data cleaning; data warehouse; data lakehouse. Keywords: CRIS; research information; research information system; heterogeneous data sources; data quality; data wrangling; data lifecycle; data consolidation; data lake; data cleaning; data warehouse; data lakehouse.


## 1. Introduction

Organizations and employees representing them, i.e. researchers in research institutions, must be able to integrate increasing volumes of data into their institutional database such as Current Research Information Systems (CRIS), regardless of the source, format or amount of the research information. The processing of data plays a central role in modern society, where the data is an integral part of various operational processes.

Given  that  CRIS  are  designed  to  store  and  manage  data  about  research  conducted  at  institution  or  organization providing an opportunity to extract from them knowledge useful for research management (Jeffery, 2004), (Schöpfel et al. 2017), it is important to wisely use the increasing amount and sometimes even variety of data to derive/ create value from them faster. More precisely, CRIS typically operates with the data on projects, persons, organizational units, funding programs, research outputs such as publications, patents, or related products, facilities and equipment, and events (Jeffery &amp; Asserson, 2009). These data are the basis for decision-making for including but not limited to procedures  in  regards  to  hiring,  promotions,  preparation  of  annual  reports,  and  submission  of  portfolios  for accreditation and assessment (Yair, 2021). Poor quality of data and research information in particular can adversely affect  the  results  of  data-driven  activities  or  decisions.  In  other  words,  the  quality  of  the  research  information  or trustworthiness of data is of paramount importance. This requires the selection and use of an appropriate data storage / repository and intelligent data processing to maintain the data and prepare them for use.

We suggest that this can be ensured by combining a data lake as a data repository and a data wrangling process, which allow data to be stored, managed and enriched in a central location serving as a single entry point (Mathis, 2017), (Sharma, 2018). In other words, the data can be stored in a storage different  from the  system  when the  data  are collected,  i.e.  in  a  separate  system  such  as  CRIS  or  a  repository.  A  data  lake  stores  the  data  in  a  flat  and  raw  / unprocessed format (Hai et al. 2016) and are only converted if formatting is required for their further use. Due to the diversity of data and their sources, connections between the data can be quickly recognized and used. The data lake should be integrated into the organization's IT landscape and can be connected to other data lakes (Miloslavskaya &amp; Tolstoy, 2016). The integration of the data lake means that the research information is extracted from operational applications (e.g. HR, CRM and SAP systems as well as publications databases, etc.) and stored in the data lake, where public data can also be integrated and used for the enrichment of the above. However, data management can be seen as part of data governance and can be done using the data wrangling process (Endel &amp; Piringer, 2015).

Data wrangling (also referred to as data mungling) is a process of iterative data exploration and transformation that enables their further analysis by making them (1) usable, (2) credible and (3) useful (Kandel et al. 2011). Kandel et al.  (2011 )  suggest  to  ' determine  usability  in  relation  to  the  tools  used  to  process  the  data,  which  can  include spreadsheets, statistical packages, and visualization tools '. This makes the process of making data useful, where the preferable  result  of  wrangling  is  an  editable  and  auditable  transcript  of  transformations  coupled  with  a  nuanced understanding of data organization and data quality issues rather than simply data. This means that many errors or anomalies can be corrected by data wrangling, e.g. structuring attributes into rows and columns, changing the layout of  a  dataset,  deriving  new  attributes,  filtering  observations,  aggregating  values,  grouping  data,  splitting  a  set  of attributes and merging  combining with other records (Azeroual, 2020). In addition, the data lake and data wrangling provide a scalable platform for storing and processing large amounts of research information. The data lake and data wrangling as a concept allows the storage of different data structures (internal and external, structured, semi-structured and unstructured). This makes it necessary to among other things enrich the data being not sufficiently complete and clean the data determined as dirty with data wrangling to be able to serve current and future analytical questions. The aim is to convert complex data types and data formats into structured data without programming effort. This means that users can prepare and transform their research information without being able or required to program with an ETL (Extract-Transform-Load) tool or other programming languages (e.g. Java, Python or SQL) (Azeroual, 2022). Once the data are read, these transformations are automatically suggested based on machine learning algorithms, greatly speeding up this process.

While CRIS intends to modernize routine managerial tasks involved in academic administration, in some cases they fail to do so (Yair, 2021). Thus, new advances and improvements are needed.

In this paper, we first design and specify an architectural model that  analyses research information, cleans it, and transfers it into CRIS as shown in Fig.1. Data lake used as a data repository makes structured and unstructured data available in a single location and accessible in a more trusted, secure and controlled manner being in line with the data lake paradigm (Ravat &amp; Zhao, 2019), (Zhao et al. 2021).The data wrangling process is used to check and improve the quality of data, which also prevents data from misuse, increasing the value to be derived from it as a result of its consequent use. This ensures that data are properly updated, retained, and eventually deleted / removed according to the phase of their lifecycle. The data wrangling process consists of subsequent successive steps. Depending on the information system (IS) and the desired target quality that may differ from one use-case / task / application to another, same as be dependent on the stakeholder involved, these certain steps have to be run several times. In many cases, data wrangling is a continuous process that is repeated over and over again at regular time intervals.

The paper is divided into five sections, where the Section 2 explains the typical challenges and implications associated with data quality issues that organizations face in a real-world using their database management systems (DBMS) such  as  CRIS,  which  can  be  improved  through  the  use  of  data  lake  and  data  wrangling.  Section  3  presents  the conceptual  design  for  storing,  processing  and  improving  the  research  information  and  describes  the  process elaborating on the central concepts and alternatives and the appropriateness of the selected components constituting the architecture of our proposal. Section 4 discusses the concept and the future perspective of its application, while Section 5 summarizes the main findings of the paper and outlines future work on this issue.

## 4. Discussion

The emergence of data wrangling solutions and advances in this field is driven by real-world necessity. While in the past, institutions and especially CRIS users, did not have the right tools to access and even more important understand, clean  and  format  research  information,  much  of  the  research  information  that  institutions  deal  with  today  is increasingly available in a variety of formats and sizes. These data are collected from different data sources and are either too large or too complex to handle in traditional self-service tools such as Excel. Data wrangling solutions are designed to process any type of complex research information at any scale making the data ready for their further value-adding analyses.

Data management from data generation or collection to their analyses and data visualization become increasingly important and will remain as such in the coming years. It enables data integration within an organization, simplifies IT  infrastructure,  and  forms  a  valuable  foundation  for  data  usage  in  organizations.  As  the  volume  of  research information and data sources increases, the prerequisite for data to be complete, findable, comprehensively accessible, interoperable,  reusable  (compliant  with  FAIR  principles),  but  also  securely  stored,  structured,  and  networked (integrated and then exchanged between users or entities) in order to be useful remain critical but at the same time become  more  difficult  to  fulfill.  Data  wrangling  can  be  seen  as  a  valuable  asset  in  ensuring  this.  The  goal  is  to counteract the growing number of data silos that isolate research information from different areas of the organization. Once successfully implemented, data can be retrieved, managed and made available and accessible to everyone within the  entity.  A  data  lake  and  data  wrangling  can  be  implemented  to  improve  and  simplify  IT  infrastructure  and architecture, governance and compliance. They also provide valuable support for predictive analytics and self-service analysis by making it easier and faster to access a large amount of data from multiple sources.

The concept of data lake and data wrangling contributes to the understanding of research information from its location to the state (structure, quality, value etc.). This aspect is key to supporting different user groups and analytics, since the proper organization of the data lake makes it easier to find the research information the user needs. Managing the research information that has already been pre-processed offers the greatest potential for increased efficiency and cost saving, as preparing research information is the most time-consuming part of data analysis. In addition, by providing pre-processed research information, users with limited or no experience in data preparation (low level of data literacy) can be supported and analyses can be carried out faster and more accurately.

## 5. Conclusion and Future Works

Research information can have a huge multi-dimensional impact. But before they can be properly used, they must go through a series of processes. The developed concept of the data lake and data wrangling allows to store data in a raw format. An essential step is the so-called data wrangling (also referred to as data munging) -data cleaning and sorting at the beginning of each data analysis. While in most cases it is expected to be done in an automated way that is the goal, depending on the use-case, separate steps such as conversion of raw data will be done manually. Research information only goes through a verification and enrichment process of a data wrangling process, before it enters the data lake and is integrated into CRIS (see a practical example in our presentation § ).

The presented concept provides a logical basis for implementation in the CRIS. It allows the modeling of the basic security mechanisms to ensure a certain level of quality control within a CRIS. While it is based on the concept of a data lake enriched with data wrangling, there are many similarities with the concept of the data lakehouse, including

---

## TITLE: Constance: An Intelligent Data Lake System

Rihan Hai RWTH Aachen University Aachen, Germany hai@dbis.rwthaachen.de

##Publication year
2016

## ABSTRACT

As the challenge of our time, Big Data still has many research hassles, especially the variety of data. The high diversity of data sources often results in information silos, a collection of non-integrated data management systems with heterogeneous schemas, query languages, and APIs. Data Lake systems have been proposed as a solution to this problem, by providing a schema-less repository for raw data with a common access interface. However, just dumping all data into a data lake without any metadata management, would only lead to a 'data swamp'. To avoid this, we propose Constance 1 , a Data Lake system with sophisticated metadata management over raw data extracted from heterogeneous data sources. Constance discovers, extracts, and summarizes the structural metadata from the data sources, and annotates data and metadata with semantic information to avoid ambiguities. With embedded query rewriting engines supporting structured data and semi-structured data, Constance provides users a unified interface for query processing and data exploration. During the demo, we will walk through each functional component of Constance. Constance will be applied to two real-life use cases in order to show attendees the importance and usefulness of our generic and extensible data lake system.

## 1. INTRODUCTION

Data lakes address the daunting challenge of Big Data: 'how to make an easy use of highly diverse data and provide knowledge?' Large amounts of data are available, but often the data is separated in information silos without or only with loose inter-connections. However, valuable insights are often only available upon the combination and integrated analysis of information in these silos. To meet his gap, Data Lakes (DLs) have been conceptualized as big data repositories which store raw data and provide functionality for on-demand integration with the help of metadata descriptions [1, 3, 9, 10]. DLs ingest raw data in its original format from heterogeneous data sources, fulfill their role as storage repositories, and allow users to query and explore them. As schema information, mappings, and other constraints are not defined explicitly or required initially for a DL, it is important to extract as much metadata as possible from the data sources during the ingestion phase. Metadata management is crucial for data reasoning, query processing, and data quality management. Without any metadata, the DL is hardly usable as the structure and semantics of the data are not known, which turns a Data Lake quickly into a 'data swamp'.

However, current proposals for DL systems lack details about the required metadata management features and methods for efficient integrated query processing, which hampers repeatable implementations. Furthermore, the DL systems put into practice now are often very application-specific solutions which have been crafted for the specific requirements of an organization. These specific solutions are based on generic software frameworks such as Hadoop and still require a lot of (wo)man power for adaptation and customization of the generic frameworks.

Therefore, in this paper we propose Constance as a first step towards a practical DL solution which can be used as the basis in several DL projects, because it provides a flexible, extensible framework for the data management problems within DL systems. In particular, Constance is a DL system which manages structural and semantic metadata, provides means to enrich the metadata with schema matching and schema summarization techniques, and offers a unified interface for query processing. To emphasize the importance of metadata in the maturation of a DL, in this demo we primarily focus on structured and semi-structured data accompanied by either explicit or implicit metadata. In contrast to other DL proposals [10, 2], Constance focuses more on data ingestion, metadata management, and query answering, but also provides basic security and provenance mechanisms. Before we go into more details of our proposal, we want to clarify two key points regarding the current DL debate [4]. First, a DL is more than just a storage repository on top of a Hadoop file system. Of course, Hadoop is good at managing the huge amount of data in a DL with its distributed and scalable file system; it also provides metadata management functions, but it does not provide all the metadata functionalities which are required for a DL. For example, the DL architecture presented in [2] shows that a DL system is a complex eco-system of several components and that Hadoop provides only a part of the required functionality. Second, compared to data warehouse systems with a relational view of data, DLs need to handle more heterogeneous data sources including semi-structured and unstructured sources. Since the NoSQL movement introduced several new data models in the recent years, a DL system has to provide a flexible storage system which can handle these different data models efficiently in an integrated way.

Putting these ideas together, we propose in this paper Constance , which features the following concepts: (i) Constance provides a metadata management system which extracts explicit and implicit metadata from the imported data. (ii) Composed of semantic annotations, advanced modeling, and record linkage, Constance contributes semantic metadata matching and enrichment , therefore it improves the quality of data stored in the DL. (iii) For an easy use by both data experts and naive users, Constance supports a formal structured query language as well as simple keyword queries . Keyword queries are translated into a formal query by using a query formulation function. (iv) Constance provides an integrated user interface , which allows users to check the visualized impact of every schema management step, to query the data, and to monitor the data quality of the DL by user-defined quality metrics.

The rest of the paper is organized as follows: In Sec. 2, we give a system overview of Constance and its essential components. We present a brief walkthrough of a Constance workflow, combined with two real-life use cases in Sec. 3.

## 3. DEMONSTRATION WALKTHROUGH

Constance is a web-based application which follows Google's material design 2 for better user experience. Users can click on the button menu in the left, and switch among the key components, as shown in Fig. 2. To showcase the usefulness of Constance, we will demonstrate a typical workflow of Constance, derived from the medical engineering project miMappa 3 which requires the integration of patent and publication data. Another use case is the integration of semistructured data in the life science domain, which is currently being developed in the HUMIT project 4 .

The demonstration will include the following scenarios: Data Source Import Our demonstration begins with the data import. As shown in Fig. 2.a, users can import local files, databases, or remote data via web services. The imported data stores are shown in the left area as All Data Sources in the DL. Considering a running DL may contain a huge amount of data sources, while not all contribute to a certain analytical operation, users can select a subset of the data sources for the following step. This can be achieved by dragging and dropping the data sources from the left area to the right area 'data pool'. The selection can be also supported by queries over the data source metadata.

Schema Management Workflow By entering the Schema Discovery page, the schema discovery process is automatically performed and the extracted schema is visualized for the user. In the following Schema Matching step, Constance detects and equivalently maps entity types while users can see highlighted nodes, as shown in equivalent entities, which come from different data sources and may vary by naming or structure, are replaced with one node and marked as yellow. After the execution of Schema Summary, a smaller set of nodes, representing a more concise set of the overall schema, is depicted in Fig. 2.c.

Querying In this section we will demonstrate how Constance retrieves information from its internal storage repository which has been filled by the data sources. As stated above, Constance provides two main options for querying, either using formal queries or keyword queries. The demo will show how these two different types of queries are processed in the system, how the queries are rewritten, and which queries will be finally evaluated over the internal data repository. Furthermore, we will show the possibilities to explore and browse the data as well as the metadata repository.

---

## TITLE: Data Lakes for Digital Humanities

Jérôme Darmont, Cécile Favre, Sabine Loudcher, Camille Noûs

##Publication year
2020

## ABSTRACT

Traditional data in Digital Humanities projects bear various formats (structured, semi-structured, textual) and need substantial transformations (encoding and tagging, stemming, lemmatization, etc.) to be managed and analyzed. To fully master this process, we propose the use of data lakes as a solution to data siloing and big data variety problems. We describe data lake projects we currently run in close collaboration with researchers in humanities and social sciences and discuss the lessons learned running these projects.
· Information systems → Data management systems ; Database administration ; Informationintegration ; · Appliedcomputing ; · Digital Humanities ;

## KEYWORDS

Data Lakes, Digital Humanities, Metadata

## 1 INTRODUCTION

Traditional data management has long been adopted by many researchers involved in Digital Humanities (DH). However, it requires a substantial investment in data modeling, including, at the physical level, technologies such as relational and semi-structured Database Management Systems (DBMSs), various data formats, e.g., XML and JSON for semi-structured data, RDF for linked data, and query languages such as SQL and XQuery. This investment in computer science and the fact that initial data are inevitably transformed are presumably impediments to the adoption of DBMSs and related digital tools for DH.

Moreover, most source information exploited by humanities and social sciences comes in textual format. Again, such textual documents are difficult to manage without substantial transformations: digitization, encoding and tagging, e.g., via the Text Encoding Initiative (TEI), and even lowercasing, stemming, lemmatization, stopword removal or normalization when it comes to text mining and natural language processing.

Another important methodological issue is the black box effect that occurs when resorting to computer scientists only 'as a service'. How can DH researchers work without mastering the whole process? Furthermore, designing and managing such processes also lead to research issues for computer scientists.

To leverage the above-mentioned issues, we propose the use of data lakes, a concept introduced by Dixon in 2010 as a solution to data siloing and big data variety problems [2]. Even if data exploited by DH are not always big data in terms of volume, they can bear considerable variety, i.e., including structured and semi-structured data, as well as unstructured data such as texts, various types of images, sounds and videos. Traditional data management tends to manage such heterogeneity with different systems, thus separating data into so-called silos.

A data lake is a scalable storage and analysis system for data of any type, retained in their native format and used mainly (but not only ) by data specialists (statisticians, data scientists or analysts) for knowledge extraction [10].

One of the main advantages of data lakes is that data are stored in their initial form, and are thus recognizable by their producers, such as DH researchers. A data lake does not propose a new data model nor new data formats for data archiving. Moreover, when data are transformed for processing, the data lineage is stored as metadata, thus enforcing traceability.

However, a drawback is that unprepared data are difficult to process and require data specialists who can program. Yet, we strongly advocate, with other researchers, for the 'industrialization' of data lakes, i.e., providing a software layer that allows non-data scientists such as DH researchers to transform and analyze their own data in autonomy, just as dynamic reports are prepared on top of data warehouses for the use of business (i.e, non technical) users.

The remainder of this paper is organized as follows. In Section 2, we describe data lake projects we currently run in close collaboration with researchers in social sciences and humanities. In Section 3, we conclude this paper by discussing the lessons learned running these projects.

## 3 CONCLUSION

In all four data lake projects summarized in Section 2, we use different versions of the MEDAL metadata system, which is designed to be generic. However, although MEDAL is quite flexible, we do not believe in a single model for data lakes. There are indeed significant differences in data in only four projects, in terms of volume, variety and velocity, which imply different architectures and technologies. Thus, we think that much needed methodological tools for data lakes should be instantiated for each project rather than applied 'as is'.

Furthermore, the software layer we add to 'industrialize' our data lakes might become yet another black box, while there is a strong stake for researchers in humanities and social sciences involved in DH projects not to be dispossessed of data by an analysis layer that would adopt a 'click and go' approach. Data are indeed often partly constructed by said researchers themselves as a product of scientific work that takes time, thus giving a significant value to datasets.

In consequence, we take great care of accompanying DH users in their appropriation of our analysis tools, not only by training, but especially by interweaving research methodologies from computer science and other disciplines by design , in close collaboration with partner researchers.

Moreover, the possibility of having both access to the raw data and the entire possible processing chain is necessary, because black boxes are seldom compatible with a sound methodological approach aiming at producing scientific knowledge. Data lakes precisely allow this much needed transparency.

---

## TITLE: Data Lakes vs. Data Warehouses in Library Analytics: A Strategic Comparison

Ra'no Alimardanova 1* , Umurzoq Jumanazarov 2 , Dr.K. Poongodi 3 , Zaid Ajzan Balassem 4 , Nargiza Musayeva 5 , Raziya Matibaeva 6  and Mamataliev Marufjon Mamatjonovich 

##Publication year
2025

##Abstract

This paper examines the key similarities  and differences between data lakes and data warehouses in relation to library analytics. With libraries beginning to embrace datainformed cultures, it is important to understand the potential benefits and challenges of each data architecture to select the best fit. Data lakes are known for the easy, scalable storage of unrelated, unstructured, and/or semi-structured data for analysis and machine learning applications. Data lakes are also capable of supporting real-time exploratory analytics and can merge  different  types  of  data,  such  as  user  interactions  and content, as well as available data from social media. One of the challenges of a data lake is the requirement of knowledge and expertise on data governance, or the potential risk of becoming a "data swamp," otherwise known as unorganized data with no context or metadata. Conversely, data warehouses  are a structured, optimized storage solution for clean, organized data. Data warehouses  are ideal for some  reporting solutions, tracking  performance,  and  analyzing  historical  trends.  They exceed  query  performance  and  reliability  for  everyday  data functionalities but may lack flexibility for unstructured data or real-time  analytics,  the  paper  analyzes  data  warehouses  and data  lakes  according  to  cost, scalability,  governance,  and usability,  the  analysis  finds  data  lakes  are  more  suited  for libraries  emphasizing  innovation  and  research,  while  data warehouses remain prepared choices and practical implementation strategy for libraries emphasizing operational efficiency and standardized reporting. This comparison provides  insights  that  assist  library  directors  and  decisionmakers in aligning data and business intelligence strategies with institutional priorities and technological infrastructure.

##Keywords
Data Lakes, Data Warehouses, Library, Analytics, Strategic, Comparison, Infrastructure

## I. INTRODUCTION

1.1 Introduction to Data Lakes and Data Warehouses

Today, with the advances in big data and digital transformation, libraries are increasingly adopting advanced technology infrastructures to store, process, and analyze large quantities of data. Two types of technology, a data lake and a data warehouse, are contemplated in this context. A data lake is a type of data repository that allows you to store all types of data - structured, semi-structured, and unstructured - at any scale in its native format (Madera &amp; Laurent, 2020). Because of  this  facility,  data  lakes  are  most  useful  for  exploratory analytics, machine learning, and real-time processing (Giebler et al., 2019). A data warehouse is designed to store curated  and  processed  data,  all  of  which  is  suitable  for  BI applications.  The  primary  interest  in  a  data  warehouse  is reporting and analysis of historical data trends (Inmon, 2005; Kavitha,  2024).  Even  though  both  data  lakes  and  data warehouses  can  be  viewed  as  helping  with  data-informed decision-making, they significantly differ in the design of the data schema, speed of processing, form of storage, and fit to a particular use case. Data lakes allow for dynamic analytics as they are schema-on-read systems, meaning that the schema can  sometimes  be  defined  at  the  time  the  data  is  read.  In contrast, data war ( Giebler et al., 2019; Clavijo-López et al., 2024). This illustrates the tradeoff that librarians face when designing data ecosystems-deciding whether to govern the data or structure the data with cost and governance in mind.

This diagram (Fig 1(a)) shows how contemporary libraries use  data  analytics  and  their  associated  insights  to  make decisions.  Libraries  gather  data  from  circulation  records, digital resources, and user actions, which are analyzed into consolidated insights to support three major activities. First, running  data  analytics,  maintaining  library  resources,  and forecasting  the  demand  for  some  resources  by  the  users. Under this method, libraries can match their services to the needs of their users, and they can also manage their resources efficiently and enhance efficiency as well.

## Problem Statement

As  libraries  shift  towards  digital  transformation  and  datainformed decision-making, one of the challenges they encounter is choosing the best possible data architecture to store and analyze their large volume of heterogeneous data. Data  lakes  and  data  warehouses  are  at  the  core  of  that decision. Data lakes have the flexibility to store and process unstructured, semi-structured, and structured data, and can be used to  perform  advanced  analysis  and  get  insights  in  real time. Data lakes do present challenges regarding governance, security, and performance. Data warehouses offer structured and optimized solutions for clean, processed data and can be a good solution for reporting and tracking performance, but they may be less flexible when libraries want to accommodate  the  hybrid  data  sources,  they  now  have available. Even with the respective strengths of each architecture,  history  has  shown  that  libraries  may  have difficulty choosing the exemplary architecture that fits their strategic  goals,  data  demands,  and  operational  framework. This paper highlights the need for library studies and other data  professionals  to  understand  differences  between  data lakes  and  data  warehouses,  sharing  consideration  for  each architecture's fit in library analytics: advantages and disadvantages.  By  understanding  each  system's  advantages and disadvantages, libraries will be better informed to select a system that aligns with their long-term data management needs and could enhance service delivery.

## 1.2 The Relevance of Data Analytics within Libraries

Libraries continuously collect rich resources of data, such as digital catalogs, e-resources, and the logged activity of users in smart libraries through IoT sensors. In this context, data analytics  plays  an  important  role  in  enhancing  services, improving  resource  allocation,  and  ultimately,  the  overall experience of users (Wu e al., 2013; Rahmat et al., 2023). Today's  analytics  go  well  beyond  traditional  library  usage statistics  such  as  circulation  or  attendance  figures;  they include user segmentation, predictive modeling, and sentiment  analysis,  which  not  only  necessitate  but  also actively  seek  to  enable  heterogeneous  data  infrastructures (Azam,  &amp;  Ahmad,  2024).  Moreover,  library  analytics  can identify  communities  that  are  underserved  and  propose services that are more personalized to them, possibilities to enable more inclusivity of service, connecting to the mission of  libraries  (Jansen  &amp;  Hossain,  2022).  The  importance  of ethical regulatory frameworks remains; libraries must implement governance of transparency, accountability, and user privacy in data collection and analysis (Weller, 2019). Choosing between a data lake and a data warehouse is also a choice about how  uncomplicated the data governance policies are--including the complexity  hierarchy  of  the analytical goals (Garoufallou &amp;  Gaitanou, 2021). For programmers and stakeholders looking to achieve innovation,  libraries  seeking  to  make  headway  in  adopting technology for services benefit from flexibility. More versatile data lakes are suitable for a range of analytical tools and  machine  learning  work.  Data  lakes  also  support  the advanced technology--automation and artificial intelligence-to process raw, unstructured datasets, which are becoming commonplace  in  a  digitally  focused  library  (Ravat  et  al., 2019). By contrast, if a library is focused first on compliance regulation, systematic performance assessment, and organizational  reporting  that  standardizes  the  approach  to said operations, they may find relying on data warehouses the better  approach  due  to  structure and  efficiency in the experience.

Fig 1(b) provides a comparative representation of the design elements of a Data Lake to a Data Warehouse. For example, a Data Lake accepts various streams of data in their native format,  or  transparently,  incorporating  a  schema-on-read design,  which  lends  itself  towards  advanced  analytics  and machine learning models. In contrast, the Data Warehouse architecture on the right employs a structured data pipeline in which the data is provided from an ETL - Extract, Transform, Load process after being structured for storage. This enables the  use  of  business  intelligence  (BI)  tools  integrated  with dashboards  for  decision-making,  thus  underlining  the  Data Warehouse's  emphasis  on  highly refined, orderly, and optimized queryable data.

## 1.3 Objectives of the Research Paper

This article seeks to perform a systematic comparison of data lakes and data warehouses in the context of library analytics in  order  to  create  strategic  reasoning  that  has  not  been conducted  before.  It  examines  the  ways  in  which  either system  architecture  contributes  to  executing  library  roles, processes,  and  strategies  at  a  certain  level.  This  research includes  case  study  results  that  illustrate  both  technical aspects and operational aspects aimed at data-laden frameworks  for  decision-makers  within  libraries,  systems staff, and data scientists. The article will assess characteristics related to the  balance  of  economic  and governance considerations, certain levels of access limitations,  ease  of  modification  of  use  in  response  to changes,  structural  features  such  as  scope,  and  operational implications such as structure. Libraries can make purposefully  informed  decisions  that  both  meet  immediate business needs and respond to next needs as they materialize along  the journey  of  digital  transformation.  The  study contributes to the library transformation literature by explicating data architecture selection as a strategic framework  to  support  data-driven  innovation.  This  paper aims to examine library analytics in depth, in order to inform comparisons of data lakes and data warehouses through an analysis of their data architecture, advantages, and disadvantages.  The  paper  proceeds  to  Section  II  for  a discussion of variables distinguishing data lakes, along with their  advantages  and  disadvantages.  In  the  same  manner, Section III discusses data warehouses. In Section IV, we offer a strategic comparison with some decision-making benchmarks  and  real-world  examples.  In  Section  V,  we summarize  the  main  findings,  his  practical  insights  for librarians,  and  directions  for  further  study.  The  purpose  of these  supported  findings  is  to  aid  decision-making  in  the rapidly changing paradigm of data management in libraries.

## V. CONCLUSION

In conclusion, this study provides a detailed description of the data  lake  comparison  with  the  data  warehouse  in  library analytics by outlining their strengths and weaknesses as well as their suitability in addressing specific organizational goals. Data lakes prove to be the most appropriate when it comes to the factors of flexibility, cost, data integration, and structure when  compared  to  data  warehouses.  The  library  that  is seeking  data  science,  innovation-driven  insights,  and  other exploratory  goals  is  an  asset  with  this  advantage.  Data warehouses, in their turn, are superior to data lakes in terms of  being  structured  in  their  data  processing,  performance compatibility,  user-friendliness,  and  friendliness  to  users. These  features  favor  libraries  that  focus  on  efficiency  of operations and standardized reporting. Bibliocentric libraries basing their decisions on such conclusions should be aware of their strategic goals, type of data they handle, amount of technological  advancement,  and  budget  constraints  during system  selection. In case of more  advanced  analytics, innovation-based and research libraries can use the data lakes in  the  case  of  a  study,  and  public  and  operation-oriented libraries should rely more on the opportunities and convenience  of  data  warehouses.  More  studies  should  be conducted  that  would  combine  the  advantages  of  the  two systems, investigate the question of real-time analytics performance  within  libraries,  and  provide  the  governance systems  for  the  quality  of  the  data  and  privacy  within  the complicated digital space. The first one is the data infrastructure that is in line with the institutional vision and, in  the  process,  will  enhance  actionable  intelligence  and decision-making in contemporary libraries.

---

## TITLE: Data Lakes: A Survey of Functions and Systems

Rihan Hai , Member, IEEE , Christos Koutras , Christoph Quix , and Matthias Jarke , Senior Member, IEEE

##Publication year
2023

##Abstract
Data lakes are becoming increasingly prevalent for Big Data management and data analytics. In contrast to traditional 'schema-on-write' approaches such as data warehouses, data lakes are repositories storing raw data in its original formats and providing a common access interface. Despite the strong interest raised from both academia and industry, there is a large body of ambiguity regarding the definition, functions and available technologies for data lakes. A complete, coherent picture of data lake challenges and solutions is still missing. This survey reviews the development, architectures, and systems of data lakes. We provide a comprehensive overview of research questions for designing and buildingdatalakes.Weclassifytheexistingapproachesandsystems based on their provided functions for data lakes, which makes this survey a useful technical reference for designing, implementing and deploying data lakes. We hope that the thorough comparison of existing solutions and the discussion of open research challenges in this survey will motivate the future development of data lake research and practice.

##keywords
Datadiscovery,datalake, metadata management.

## I. INTRODUCTION

B IGdata has undoubtedly become one of the most important challenges in database research. Unprecedented volume, large variety, and high velocity of data impede their collection, storage, and processing; especially the variety of data still poses a daunting challenge with many open issues [2]. Web-based business transactions, sensor networks, real-time streaming, social media, and scientific research generate a large amount of (semi-)structured and unstructured data, often stored in separate information silos. Combining and integrating the information across these silos is critical for reaching valuable insights.

Traditional schema-on-write approaches, like the extract, transform, load (ETL) process of data warehouses [77], are inefficient for such data management requirements. This has drawn the interest of many developers and researchers to NoSQL data management systems. NoSQL systems provide data management features tailored to high amounts of schema-less data, which enables a schema-on-read manner of data handling, i.e., the structure of data is not required for storing but only when further analyzing and processing the data. Open-source platforms, such as Hadoop [132] with higher-level languages (e.g., Pig and Hive), and NoSQL databases (e.g., MongoDB and Neo4j), have gained popularity. Although the current market share is still dominated by relational database systems, a one-size-fits-all Big Data system is unlikely to solve all the challenges related to data management today.

To address this gap, data lakes (DLs) have been proposed. In essence, a data lake is a flexible, scalable data storage and management system, which ingests and stores raw data from heterogeneous sources in their original format, and provides maintenance, query processing and data analytics in an onthe-fly manner, with the help of rich metadata [116], [138], [142], [143]. Data lakes are proposed to store and manage data in many real-life use cases: Internet of things (IoT) and smart city [99], manufacturing [112], medicine [42], [55], [114], mobility service (e.g., Uber) [50], biology [23], smart grids [20], [103], air quality control [145], flights data [96], disease control, labor markets and products [13].

## IX. CONCLUSION AND OUTLOOK

In the first decade of their existence, data lakes have been receiving increasing interest from both academia and industry. In this survey, we have looked back at the origin and development of data lakes in the past decade. Besides offering a fine-grained data lake architecture and discussing storage systems, we have provided a comprehensive review of existing data lake methods based on their specific functions. We have used a three-level categorization, which facilitates a deep analysis of the corresponding research questions. To bring forth new challenges, we have also discussed potential technologies and future directions.

Without any doubt, the research, engineering, and application challenges are there, waiting for novel data lakes to be developed together with cutting-edge technologies of machine learning and cloud computing. Some well-studied research problems (e.g., data integration, data cleaning, schema evolution) need new perspectives and methods to address the specific characteristics of data lakes. The concept of data lakes is complex and still evolving, not limited to the problems addressed in this survey. We foresee the explosive development of data lake applications in the coming years. The golden age of data lakes is yet to come.

---

## TITLE: Data Ingestions as a Service(DIaaS): A Unified interface for Heterogeneous Data Ingestion, Transformation, and Metadata Management for Data Lake

SREEPATHY H V 1 , DINESH RAO B 2 , MOHAN KUMAR JAYSUBRAMANIAN 3 , and DEEPAK RAO B 4

##Publication year
2016

##ABSTRACT

Data ingestion tools are critical component of Data Lake. Existing data ingestion tools face challenges of handling large variety, formats, sources of data. There exists void for unified data ingestion interface to handle the above research problems. This study proposes an innovative and integrated framework for data ingestion in a data lake, addressing the challenges posed by heterogeneous data sources, formats, and metadata management. The framework comprises three novel modules: First Unified Data Integration Connectors (UDIC), which provide seamless connectivity and data retrieval capabilities from diverse sources including databases, data warehouses, file systems, cloud storage, and APIs; Second, Adaptive Data Variety Transformation (ADVT), a module that intelligently handles the transformation and processing of structured, semi-structured, and unstructured data types, ensuring efficient ingestion into the data lake; and third, Intelligent Metadata Management (IMM), a module that captures, stores, and manages metadata associated with the ingested data, offering advanced search, discovery, and enrichment functionalities. Comparative study corroborates features offered by the service with existing data ingestion tools to evaluate the novelty and significance of the study. Performance validation shows varying ingestion latencies across different data types: approximately 148.1 microseconds per record for structured data, 234.2 microseconds per record for semi-structured data, 65.6 microseconds per kilobyte (KB) for video data, and 42.7 microseconds per KB for image data. These results underscore the importance of considering data structure and size in optimizing ingestion processes. Overall, this research aims to revolutionize data ingestion in data lake environments by providing a unified solution for handling diverse data sources, formats, and metadata management.

##keywords

Data Ingestion, Data Lake, Data sources, Data formats, Unified Interface, Data Ingestion Service, Big Data.

## I. INTRODUCTION AND BACKGROUND

D ATA Lake is a big data architecture for storing structured, semi-structured and un-structured data at any scale and lower cost. The data lake is becoming a common way to coordinate and develop the next generation of systems to tackle new Big data management problems. As a result, organization are adopting data lake as a storage solution. Data lake serves as a central repository to store varieties of data from different sources in its raw format and it is characterized by Metadata management, Data governance, User accessibility and Scalability. Organization can use these data to find potential insights and business value for their growth and to outperform their competitors. The ultimate aim of data lakes is to drive business results and gain value from data aggregated in lake. Data lake was implemented to resolve big data problems, specifically those arising from the variety of data. A data lake is an incredibly large storage management and analysis facility that manages all data formats.

As these data marts and data warehouse are limited to answer only subset of business questions, Dixon introduced the idea of data lake as a solution to the later technologies. Dixon considers the lake to be a humongous storage facility for raw data from diverse origins, enables users to discover, collect and analyze information. Figure 1. provides an overview of Data Lake architecture.

Data Lake is a facility provisioned by the organization to serve as a single repository for all of its data. An organization's data is distributed and generated across various departments, business divisions, and sources. Data lakes play a critical role in modern data management by providing a centralized repository for storing vast amounts of raw data in its native format. This approach allows organizations to consolidate structured, semi-structured, and unstructured data from diverse sources into a single, scalable platform. Data lakes enable organizations to meet various analytical needs, from business intelligence and machine learning to real-time analytics, thereby enhancing decision-making processes and fostering innovation through advanced data analysis.

The ingestion of data is a critical step in bringing together an organization's disparate data sources into a Data Lake. Data ingestion is a primary and crucial step in Data Lake design process. Data intake into Data Lake has become exceedingly challenging as the volume, variety, and veracity of data collected from disparate sources has grown tremendously in recent years. Since a Data Lake stores information from numerous systems, including but not limited to databases, data warehouses, file stores, Internet of Things (IoT) gadgets, sensors, websites, embedded devices, healthcare equipment, and software, etc. Managing a plethora of data sources is a further issue for data ingestion platform. Because there is so much data, and because of its high quality and reliability, metadata is utilized to managing and cataloguing the data stored in the raw/landing zone of the Data Lake architecture. The data object's trend or pattern cannot be inferred from the data catalogue. Using data transformations at a later stage to organize data depending on its domain or context is not reliable or efficient. For creating data transformation and integration pipelines, there are a variety of big data ingestion technologies on the market.

However, the ingestion of data into data lakes presents significant challenges. The growing volume, variety, and veracity of data from disparate sources-such as databases, data warehouses, IoT devices, sensors, healthcare equipment, and more-makedata ingestion a complex process. Effective data ingestion systems must manage diverse data formats, balance real-time and batch processing, and scale to accommodate increasing data volumes. Furthermore, robust metadata management is essential for ensuring governance, quality control, and traceability within the data lake. Current data ingestion technologies often handle only specific data varieties and processing types, leading to a fragmented approach that fails to address the comprehensive needs of modern data lake environments. There is a requirement for a data ingestion service to manage various variety and data processing types since each of those data ingestion technologies only handles certain variety and data processing kinds and data management at the ingestion phase. Major contribution of the proposed work are as follows:

- Design a unified framework as a service to ingest heterogeneous sources, variety and formats of data into Data Lake.
- Design an intelligent metadata module to extract metadata, patterns and trends and also to organize data for easy discovery.
- Evaluate the study by comparing features of the system with existing data ingestion tools and technologies.
- Validate the performance of the proposed data ingestion service by measuring the performance metrics gauge the service's speed and efficiency in processing data from diverse sources, varieties and protocols.

Paper is organized as follows. Section 2 lists and reviews related data ingestion services. Research Methodology and System architecture design is highlighted in Section 3. Design Implementation is dissected in Section 4. Results and discussion of comparative study, performance validation are corroborated in Section 5. Section 6 discuss the conclusion of the work.

## VI. CONCLUSION

S Tudy aimed at filling the existing research gap in data ingestion tools for data lake. This work proposed a design of Data Ingestion as a service for data lake. Novelty of the service is a unified interface to support different data sources, variety, protocols and paradigms, to address different data requirements of organization. It offers a scalable solution for ingesting and transforming data from various sources.

Comparative study proves the superiority of proposed service to existing tools, in terms of handling data variety, sources, formats and protocols. Performance evaluation of the proposed system underscore a notable association between the average latency of the data ingestion service and the size of the dataset, wherein network input/output (I/O) similarly demonstrates dependency on data size, while CPU and memory usage exhibit no significant correlation. Performance validation study of data ingestion latencies across various data types, significant differences were observed based on the structure and size of the data. For structured data, with records ranging from 2,300 to 54,200, the average ingestion latency per record was calculated to be approximately 148.1 microseconds. In contrast, semi-structured data, with records varying from 2,560 to 209,579, exhibited a higher average ingestion latency per record of approximately 234.2 microseconds. This indicates that the semi-structured data format incurs additional overhead during ingestion compared to structured data. Furthermore, the ingestion latency for video data was measured on a per kilobyte (KB) basis, resulting in an average latency of approximately 65.6 microseconds per KB. Image data ingestion demonstrated the lowest latency among the evaluated data types, with an average of approximately 42.7 microseconds per KB. These findings highlight the varying performance implications of different data formats during ingestion processes, underscoring the importance of considering data structure and size in the optimization of data ingestion systems. The usability and flexibility of the service have also been assessed, highlighting its user-friendly interface and ease of configuration. To further enhance the scalability, availability, and efficiency of the data ingestion service, future work will focus on addressing key challenges related to the optimal storage of large volumes of real-time data. Developing advanced storage optimization techniques is crucial for ensuring that the system can manage big data efficiently, which directly impacts overall system performance and resource utilization. Additionally, the study aims to tackle the challenge of adapting to changes in data sources by designing and implementing generic adapters or connectors. These would allow the system to dynamically accommodate various data sources as they evolve, providing a robust solution to the problem of source variability and ensuring seamless data ingestion across heterogeneous environments.

---

## TITLE: Demand-Driven Data Provisioning in Data Lakes

Christoph Stach ,Julia Bräcker,Rebecca Eichler,Corinna Giebler,Bernhard Mitschang

##Publication year
2021

## ABSTRACT

Data has never been as significant as it is today. It can be acquired virtually at will on any subject. Yet, this poses new challenges towards data management, especially in terms of storage (data is not consumed during processing, i. e., the data volume keeps growing), flexibility (new applications emerge), and operability (analysts are no IT experts). The goal has to be a demand-driven data provisioning, i. e., the right data must be available in the right form at the right time. Therefore, we introduce a tailorable data preparation zone for Data Lakes called BARENTS. It enables users to model in an ontology how to derive information from data and assign the information to use cases. The data is automatically processed based on this model and the refined data is made available to the appropriate use cases. Here, we focus on a resource-efficient data management strategy. BARENTS can be embedded seamlessly into established Big Data infrastructures, e. g., Data Lakes.

## KEYWORDS

data pre-processing, data transformation, knowledge modeling, ontology, data management, Data Lakes, zone model, food analysis


## 1 INTRODUCTION

'Data is the new oil.' This metaphor, coined by Clive Humby (data science entrepreneur and Chief Data Scientist of Starcount) in the year 2006, is still used today to illustrate the importance of data in a digital society. This analogy also appears to be overly apt. Just as oil was a significant driver for the Technological Revolution , data is the key resource of the Industry 4.0 . Similarities can also be identified with regard to the extraction and usage of data - like oil, data has to be localized and extracted fi rst. Subsequently, data also needs to be cleansed and processed before it can be stored and provided to users for further exploitation [47].

Peter Sondergaard (Senior Vice President of Gartner) emphasizes the fact that data in general only becomes valuable when it is refined in his 2011 statement that 'information is the oil of the 21 st century' . For instance, datasets may contain inconsistent or inaccurate values, and relevant attributes might not be included in a dataset. Such impurity has to be cleansed in the run-up to an actual analysis. Furthermore, data is typically not available in the form needed for the intended analyses. Besides cleansing, data must therefore also be transformed, pre-processed, and enriched to gain meaningful information from it [30].

Although data shares many characteristics with oil, there are some crucial differences. This becomes particularly evident with regard to the following aspects: While oil is a finite resource, data can be generated at will. Additionally, data is not consumed during processing, i. e., it does not disappear - in terms of storage, concepts for managing Big Data are required. This is further aggravated as data is heterogeneous. Novel tasks emerge frequently, which is why pre-processing needs to be adapted dynamically to the ever-changing challenges. At the same time, refined data is highly specific, i. e., it only reaches its full potential in the use case envisaged through pre-processing. A ready-made one-size-fits-all solution is therefore not an option. It is rather necessary to involve the analyst during data preparation and to adapt it to the respective use case [11].

Moreover, data is not only a driver in industry, but also for, e. g., research and the private sector. A key issue for any data-driven project is rarely a lack of data, but rather the unavailability of the right data in the right form at the right time. John Naisbitt (author in the domain of futures studies) emphasizes that this is a key issue for a digital society with his revised allegory: 'We are drowning in data but starving for information.'

Tothis end, we introduce BARENTS 1 , a tailorable data preparation zone for Data Lakes. It enables analysts to model how datasets have to be pre-processed to become meaningful information. This information is assigned to use cases to enable a demand-driven data provisioning. We make the following contributions:

- 1.) We introduce an ontology-based method that enables even non-IT experts to specify the data requirements of their use cases.
- 2.) We manage the data of the use cases in a resource-efficient manner that addresses the requirements inherent in a Big Data context.
- 3.) We demonstrate how BARENTS can be embedded seamlessly into an established Big Data infrastructure.

The remainder of this paper is structured as follows: In Section 2, we examine the state of the art with regards to data management. Section 3 identifies requirements towards demand-driven data provisioning. Based on this, we discuss related work in Section 4. Subsequently, we introduce BARENTS and provide details on its implementation in Section 5. BARENTS is evaluated in Section 6, before Section 7 concludes this paper.

## 7 CONCLUSION

The economic value of data is on the rise. Yet in order to fully exploit it, data needs to be refined first. This pre-processing must be tailored to the intended use case. While domain experts have the expertise to decide which pre-processing steps are needed, they often lack the IT skills required to implement them and apply them to the raw data.

To this end, we introduce a tailorable data preparation zone for Data Lakes called BARENTS that enables a demand-driven data provisioning. This is achieved by means of three factors:

- 1.) BARENTS introduces an ontology to specify data preprocessing steps. Domain experts can use this ontology to describe which data transformations have to be applied to the raw data from source systems in order to make it exploitable in their use cases.
- 2.) This ontology is used to configure the BARENTS Preparation Zone , an extension to a zone architecture for Data Lakes. Data Lakes are well suited for managing Big Data. This is further enhanced by the addition of virtual zones in BARENTS.
- 3.) By means of adapters , the BARENTS Preparation Zone can be connected to any data source or sink - i. e., BARENTS can be seamlessly integrated into any IT landscape.

Performance measurements and feature analyses show that BARENTS is not only performant, but also fulfills all requirements towards such a data provisioning approach.

As part of future work, the performance of BARENTS can be further enhanced, e. g., by carrying out part of the computation in the databases of the source system or by applying parallel computation approaches.

---

## TITLE: DLMF: AN INTEGRATED ARCHITECTURE FOR HEALTHCARE DATA MANAGEMENT AND ANALYSIS USING DATA LAKE, DATA MESH, AND DATA FABRIC

LAMYA OUKHOUYA 1  ,   ANASS EL HADDADI 2 , BRAHIM ER-RAHA 1 , ASMA SBAI 3

##Publication year
2024

## ABSTRACT

The vast amount of data on healthcare, combined with the diversity of diseases, has led to a proliferation of work  aimed  at  designing  decision-making  architectures  capable  of  exploiting  this  information.  These architectures are based on integrating heterogeneous data from different sources while ensuring that it is stored  centrally.  They  also  focus  on  data  quality  to  guarantee  the  accuracy  of  analyses,  and  on  reliable governance to ensure data compliance, security and traceability. These aspects are essential to enable optimal use of data for advanced analysis and informed decision-making in healthcare. Our objective in this article is to propose an architecture that ensures the 3 points: integration, storage and governance. The article proposes the DLMF architecture to ensure that these 3 points are adapted to good data analysis. This architecture uses the concept of a data lake for the consolidation and storage of data sources, a data mesh and a data fabric to ensure everything to do with data integration, quality and governance. The article also proposes a set of opensource technologies for its implementation. Finally, recommendations and future directions are suggested for a well-designed BI architecture capable of ensuring good data management, from data integration to analysis.

##Keywords

Data Lake, Data Mesh, Data Fabric, Healthcare, Decision Support Architecture.

## 1. INTRODUCTION

Information systems play a crucial role in managing  data  from  a  variety  of  sources  in  all sectors[1]. The health sector is no exception, relying on a range of systems of resources, people, policies and  technologies  to  deliver  health  services  to  the population[2].  These  systems  cover  a  range  of activities,  including  disease  prevention  and  public health  management.  Extracting  value  is  based  on exploiting  this  data  to  improve  clinical  outcomes, optimize processes and support decision-making[3]. The integration of big data technologies and artificial intelligence,  together  with  the  implementation  of sophisticated and modern decision support systems, make it possible to transform raw data into actionable information, thereby improving the personalization  of  care,  the  prediction  of  public health needs, cost reduction and the patient experience[4]. The aim of this paper is to propose an architecture for a modern medical decision support system, capable of efficiently managing large amounts  of  data,  providing  in-depth  analysis  and supporting informed decision-making in medicine.

A medical decision support system is based on  a  complex,  structured  architecture  made  up  of several interconnected layers or domains, each with a  specific  mission  in  the  management  of  medical data[5]. In general, this architecture is based on four main missions, each represented by a layer. The first is  to  collect  data  from different  sources  within  the medical information system, such as electronic medical records, medical images, connected devices and external databases. This data is then ingested by an  integration  layer,  where  it  is  harmonized  and standardized to ensure consistency. Once normalized,  the  data  is  stored  in  a  storage  layer, which can be a data warehouse or a data lake, for later use in the decision-making process, quickly and securely.  This  use  relies  on  advanced  algorithms, such  as  artificial  intelligence,  to  process  the  data, identify  patterns,  make  predictions  and  generate clinical recommendations. The final mission of the BI  architecture  is  to  represent  this  data,  providing interactive dashboards and visualizations, making it easier for healthcare professionals to make informed decisions[6].

The design of decision support architectures  in  scientific  research,  particularly  in healthcare, presents a number of complex challenges[7]. The integration of heterogeneous and voluminous data, often from different sources, poses difficulties  in  terms  of  standardization,  which  can lead to errors. Data  quality  is essential to the reliability  of  analyses  and  requires  cleaning  and validation  efforts[8].  In  addition,  interoperability between existing systems is limited by the lack of unified standards. The protection of sensitive data, particularly  in  the  healthcare  field,  requires  robust security measures, while the scalability of DSS must allow  for  managing  a  growing  volume  of  data without compromising performance[9]. Our mission is to propose an architecture that responds to these difficulties,  integrating  data  lake  as  a  centralized approach to data with basic concepts of a decentralization approach to data i.e. data mesh, data product, and data fabric.

A  centralized  data  approach  is  used  to consolidate data from different sources in one central point  for  easy  management,  analysis,  and  use[10]. The main tools associated with this approach include a data warehouse, data mart, data lake, and lakehouse, each offering specific benefits. A centralized approach optimizes analytics by consolidating data, reducing redundancy, improving security and compliance, providing greater flexibility and scalability, and maximizing the value of  data  while  optimizing  resources  and  reducing associated costs[11]. However, despite these advantages, a centralized approach may suffer from several disadvantages. Using a data lake can lead to complex management and performance issues, due to raw data storage and the difficulty of implementing robust security policies. A data warehouse, although optimized for analysis, can be costly  and  rigid  to  change.  Data  marts  can  create information silos and additional maintenance costs, while a lakehouse, albeit flexible, can present complex scalability and integration challenges[12].

In  light  of  these  limitations,  decentralized approaches to data have emerged. They are characterized by the distribution of data management  and  access  across  several  units  or teams, rather than centralizing them in one place[13].  These  approaches use  various concepts; including data product,  data mesh,  and data  fabric which offer  several  advantages  such  as  the  use  of data  products,  hence  improving  the  relevance  and quality of the data by focusing on the needs of end users, and offering greater flexibility, team autonomy and increased ability to meet specific user needs,  while  reducing  costs  and  information  silos. Data  mesh not  only  promotes  team  autonomy  and scalability  by  distributing  data  management,  while maintaining consistency across the organization and data  fabric,  but  also  facilitates  unified  access  and data  management  in  decentralized  environments, and improves the flexibility and connectivity of data systems.    The  aim  of  this  article  is  to  propose  a hybrid  architecture  that  retains  the  advantages  of existing approaches while addressing the aforementioned limitations. Specifically, the goal is to design an architecture combining centralized and decentralized  data  management  models.  We  will integrate data lakes and address their shortcomings by adopting three decentralization approaches: Data Products, Data Mesh, and Data Fabric. It is worth noting  that  the  concept  of  data  products  has  been implicitly incorporated into the data mesh.

This article is organized as follows: Section 2 outlines the theoretical framework of our architecture, Section 3 presents related works, Section 4 details our proposed DLMF architecture, Section  5  discusses  the  implementation  of  this architecture,  and  finally,  section  6  provides  the conclusion.

## 7. CONCLUSION

In this article, we have proposed a DLMF architecture adapted to the medical domain, integrating the advantages of centralized and decentralized  data  management  systems  to  offer  a solution that is both flexible and scalable. We have detailed  the  layers  that  make  up  the  architecture, namely ingestion and security, storage and governance, domain management and transformation,  orchestration,  data  integration  and access, and analysis and machine learning. We have also presented an open-source technology implementation for each layer of the  DLMF architecture. In terms of future work, there are two main  areas in  which  we  hope  to  enhance  the effectiveness  of  the  DLMF  architecture.  Firstly,  it will be essential to continue the in-depth exploration of the Data Mesh and Data Fabric concepts in order to  optimize  their  integration  into  the  architecture. Secondly, the application of the DLMF architecture in predictive analysis projects will make it possible

---

## TITLE: Energy Measurement System for Data Lake: An Initial Approach

Alvarez-Valera Hernan Humberto, Maurice Alexandre, Franck Ravat, Jiefu Song, Philippe Roose, Nathalie Vallès-Parlangeau

##Publication year
2024

##Abstract

Data Lakes are increasingly deployed as a solution for Big Data analytics. Recent improvements in Data Lake technology have focused on improving data access, governance, and discoverability. However, the energy consumption of data operations, a non-trivial issue for eco-conscious organizations, is currently overlooked. Furthermore, existing monitoring tools do not adequately address the complexities of Data Lake architectures.

This paper presents the initial phase of developing a system for measuring energy in Data Lake pipeline operations. The novelty of our solution lies in the fact that we define four measures to assess the power usage of crucial hardware components in a Data Lake context: CPU, RAM, NIC, and storage devices. To validate our approach, we developed a monitoring tool grounded in real-world datasets from a Data Lake benchmark.

##Keywords:

Data Lakes · energy consumption · data processing.

## 1 Introduction

Big Data Analytics (BDA) involves advanced analytic techniques for processing large and diverse data sets from various sources. To enable accurate predictions and decision-making, BDA requires efficient data management solutions. Consequently, Data Lakes have become a prevalent solution for BDA nowadays.

Despite the importance of Data Lakes, current research, mainly focusing on metadata management [19, 12], data quality [1], and data discovery [2, 6], overlooks their energy consumption. This gap represents a real issue, as the Paris Agreement emphasizes the urgency of reducing greenhouse gas (GHG) emissions to ensure a sustainable future, to limit global warming to 1 . 5 degrees above pre-industrial levels 4 .

To optimize Data Lake energy consumption, we must first measure all its activities granularly, considering all the concerning operating system processes and sub-processes. This involves tracking activities like ingestion, transformation, and analysis. Operationally, a Data Lake begins by ingesting heterogeneous data from various sources, and storing it in its native format. The data is then processed (cleaned, transformed, etc.) to meet quality standards and business needs. Lastly, the Data Lake enables various access methods for analysis, including statistical, business intelligence, and machine learning applications.[13].

All these activities load differently four hardware components: CPU, RAM, Network Interface Controller (NIC), and Storage Devices, each with its different energy consumption profile. For instance, during the ingestion phase, the NIC manages data transfer, while storage devices (SSDs or HDDs) ensure data durability and accessibility. In the storage phase, these devices take on data organization, indexing, and retrieval. Finally, in the data processing phase, the CPU executes tasks such as data transformations and cleaning, with the RAM providing temporary storage for accessed data and temporary results.

The challenge is the lack of a comprehensive tool to precisely and granularly analyze the energy consumption of all Data Lake processes across the four mentioned hardware components.

In this article, we present a novel and comprehensive solution for measuring the energy consumption of a Data Lake. Our solution comprises a model describing the measurement of the four mentioned hardware components (CPU, RAM, NIC, SD). This model is integrated into a monitoring system for each operating-system process of all Data Lake activities. We evaluated our solution by analyzing the entire ingestion phase of the Audal data lake [14], which incorporates the DLBench+ benchmark for these activities. The results display metrics on the energy consumption evolution of each hardware component according to different evaluation configurations.

The paper is organized as follows. Section 2 describes the state of the art, section 3 presents the model describing the energy consumption of Data Lake processes, section 4 illustrates our energy measuring system for a Data Lake, and finally, section 5 describes the experiments we performed and their corresponding results description.

## 6 Conclusions and future work

This paper presents an energy measurement system for Data Lake instances, focusing on the analysis of four key hardware components: CPU, RAM, NIC, and storage devices. In our study, which extends beyond the usual focus on CPU consumption, we highlight the importance of considering all hardware elements to fully understand energy consumption in Big Data Analysis (BDA). Addressing the paradox of seeking frugality in BDA, we recognize the need for a clear view of energy costs in such architectures. Our evaluation of DLBench+ provides this perspective, paving the way for future enhancements in Data Lake deployments. This includes potential load-balancing strategies to improve energy efficiency, an area of ongoing research [16].

---

## TITLE: HANDLE - A Generic Metadata Model for Data Lakes

Rebecca Eichler, Corinna Giebler, Christoph Gr¨ oger, Holger Schwarz, and Bernhard Mitschang

##Publication year
2020

##Abstract
The substantial increase in generated data induced the development of new concepts such as the data lake. A data lake is a large storage repository designed to enable flexible extraction of the data's value. A key aspect of exploiting data value in data lakes is the collection and management of metadata. To store and handle the metadata, a generic metadata model is required that can reflect metadata of any potential metadata management use case, e.g., data versioning or data lineage. However, an evaluation of existent metadata models yields that none so far are sufficiently generic. In this work, we present HANDLE, a generic metadata model for data lakes, which supports the flexible integration of metadata, data lake zones, metadata on various granular levels, and any metadata categorization. With these capabilities HANDLE enables comprehensive metadata management in data lakes. We show HANDLE's feasibility through the application to an exemplary access-use-case and a prototypical implementation. A comparison with existent models yields that HANDLE can reflect the same information and provides additional capabilities needed for metadata management in data lakes.

##Keywords:

Metadata Management, Metadata Model, Data Lake.

## 1 Introduction

With the considerable increase in generated data, new concepts were developed for exploiting the value of this data, one of which is the data lake concept. In this concept an organization's data is incorporated in one big data repository [7]. It is a storage concept designed for data at scale, that integrates data of varying structure, from heterogeneous sources, in its raw format. The focus of the concept is to enable flexible extraction of the data's value for any potential use case.

In order to exploit the data's value, metadata is required [1]. Metadata can be used to document various aspects of the data such as the meaning of its content, information on data quality or security, data lifecycle aspects and so on. Just like any other data, metadata needs to be managed. Metadata management constitutes activities which involve managing an organizations' knowledge on its data [1]. Without this knowledge, data may not be applicable for the intended purpose, e.g., due to a lack of quality or trust.

A central aspect of metadata management is the definition of a metadata model (e.g., [10,15,17]). By our definition a metadata model describes the relations between data and metadata elements and what metadata is collected, e.g., in the form of an explicit schema, a formal definition, or a textual description. In order to store all kinds of knowledge on the data to increase its value, a generic metadata model is required. To be generic, a metadata model must reflect any potential metadata management use case of a data lake. This includes standard use cases, e.g., the collection of lineage information, as well as organizationspecific use cases, e.g., use cases for the manufacturing domain. It follows that the generic metadata model can represent all metadata regardless of its type.

However, existent metadata models, e.g., [2,16,18], are not sufficiently generic as they cannot support every potential metadata management use case. For instance, some of them were developed for only one specific metadata management use case [8,11,21]. The existent metadata models are based on metadata categorizations and/or lists of metadata management features. As our discussion reveals, both do not produce truly generic models. In this paper we address this gap by making the following contributions: (1) We introduce a new approach for constructing a generic metadata model by investigating existent models and their shortcomings. (2) Based on this approach, we developed a generic metadata model called HANDLE, short for Handling metAdata maNagement in Data LakEs. (3) We assess HANDLE by firstly, testing its applicability on a standard use case in the Industry 4.0 context, secondly, we prototypically implemented HANDLE based on this use case, and lastly, compare it to existing metadata models. The comparison yields that HANDLE can reflect the content of the existent metadata models as it is defined on a higher abstraction level which also makes it more generic and that it provides additional metadata management capabilities.

This paper is structured as follows. Related work is introduced and discussed in Section 2. Section 3 specifies the requirements for the new metadata model, which is presented in Section 4, followed by an assessment of it in Section 5. Lastly, the paper is concluded by Section 6.

## 6 Conclusion

In order to exploit the value of data in data lakes, metadata is required, which in turn needs to be handled through metadata management. One central aspect of metadata management is the design of a metadata model. This metadata model should be generic, meaning it should be able to reflect any given metadata management use case and consequently all metadata.

We selected five comprehensive metadata models and pointed out that the two approaches on which they were built are not suited for creating a generic model. Therefore, the existent models do not fulfill the required generic extent, as also demonstrated through an exemplary use case in an Industry 4.0 scenario.

A new approach was used to develop a new metadata model for data lakes, called HANDLE. Our assessment shows that it is easily applicable to metadata management use cases, can be implemented through a graph database, can reflect the content of existent metadata models and offers additional metadata management features. As the research has demonstrated, it is the most generic metadata model for data lakes up to date. In future, we intend to investigate whether HANDLE is applicable beyond the scope of data lakes, e.g., in an enterprise-wide federation of data storage systems.

---

## TITLE: Joint Management and Analysis of Textual Documents and Tabular Data within the AUDAL Data Lake

Pegdwend´ e N. Sawadogo 1 , J´ erˆ ome Darmont 1 , and Camille Noˆ us 2

##Publication year
2021

##Abstract.

In 2010, the concept of data lake emerged as an alternative to data warehouses for big data management. Data lakes follow a schema-on-read approach to provide rich and flexible analyses. However, although trendy in both the industry and academia, the concept of data lake is still maturing, and there are still few methodological approaches to data lake design. Thus, we introduce a new approach to design a data lake and propose an extensive metadata system to activate richer features than those usually supported in data lake approaches. We implement our approach in the AUDAL data lake, where we jointly exploit both textual documents and tabular data, in contrast with structured and/or semi-structured data typically processed in data lakes from the literature. Furthermore, we also innovate by leveraging metadata to activate both data retrieval and content analysis, including Text-OLAP and SQL querying. Finally, we show the feasibility of our approach using a real-word use case on the one hand, and a benchmark on the other hand.

##Keywords

Data lakes · Data lake architectures · Metadata management · Textual documents · Tabular data

## 1 Introduction

Over the past two decades, we have witnessed a tremendous growth of the amount of data produced in the world. These so-called big data come from diverse sources and in various formats, from social media, open data, sensor data, the Internet of things, etc. Big data induce great opportunities for organizations to get valuable insights through analytics. However, this presupposes storing and organizing data in an effective manner, which involves great challenges.

Thus, the concept of data lake was proposed to tackle the challenges related to the variety and velocity characteristics of big data [10]. A data lake can be defined as a very large data storage, management and analysis system that handles any data format. Data lakes use a schema-on-read approach, i.e., no schema is fixed until data are analyzed [12], which provides more flexibility and richer analyses than traditional storage systems such as data warehouses, which are based on a schema-on-write approach [20]. Yet, in the absence of a fixed schema, analyses in a data lake heavily depend on metadata [16]. Thus, metadata management plays a vital role.

Although quite popular in both the industry and academia, the concept of data lake is still maturing. Thence, there is a lack of methodological proposals for data lakes implementations for certain use cases. Existing works on data lakes indeed mostly focus on structured and/or semi-structured data [15,17,23,26], with little research on managing unstructured data. Yet, unstructured data represent up to 80% of the data available to organizations [9]. Therefore, managing texts, images or videos in a data lake is an open research issue.

Furthermore, most of data lake proposals (about 75%) refer to Apache Hadoop for data storage [31]. However, using Hadoop requires technical human resources that small and medium-sized enterprises (SMEs) may not have. Thence, alternatives are needed. Last but not least, data lake usage is commonly reserved to data scientists [12,20,24]. Yet, business users represent a valuable expertise while analyzing data. Consequently, opening data lakes to such users is also a challenge to address.

To meet these issues, we contribute to the literature on data lakes through a new approach to build and exploit a data lake. We implement our approach in AUDAL (the AURA-PMI 3 Data Lake). AUDAL exploits an extensive metadata system to activate richer features than common data lake proposals. More concretely, our contribution is threefold. First, we introduce a new methodological approach to integrate both structured (tabular) and unstructured (textual) data in a lake. Our proposal opens a wider range of analyses than common data lake proposals, which goes from data retrieval to data content analysis. Second, AUDAL also innovates through an architecture leading to an 'inclusive data lake', i.e, usable by data scientists as well as business users. Third, we propose an alternative to Hadoop for data and metadata storage in data lakes.

The remainder of this paper is organized as follows. In Section 2, we focus on our metadata management approach. In Section 3, we detail AUDAL's architecture and the analyses it allows. In Section 4, we demonstrate the feasibility of our approach through performance measures. In Section 5, we review and discuss the related works from the literature. Finally, in Section 6, we conclude the paper and hint at future research.

## 6 Conclusion and Future Works

In this paper, we present AUDAL, presumably the first methodological approach to manage both textual and tabular documents in a data lake. AUDAL includes an extensive metadata system to allow querying and analyzing the data lake and supports more features than state-of-the-art data lake implementations. In terms of queries, AUDAL indeed supports both data retrieval and data content analyses, including Text-OLAP and SQL querying. Moreover, AUDAL also allows the exploitation of a data lake not only by data scientists, but also by business users. All these makes AUDAL an 'inclusive' data lake.

In our near-future research, we plan a deeper validation of AUDAL on two aspects. First, we will work on that complexity and time cost of metadata generation algorithms. Second, we will study how AUDAL's analysis interface is useful to and usable by business users, e.g., using the widely used SUS (System Usability Scale) protocol [6]. Another perspective is data lineage tracking to allow AUDAL support version management. This is particularly important for tabular documents that are often merged or altered. Such a lineage could be implemented by extending AUDAL's refined representations. Finally, we envisage to include more unstructured data types into a lake, i.e., images, videos and/or sounds, and manage their particular metadata for retrieval and analysis.

---
## TITLE: Leveraging Scalable Cloud Infrastructure for Autonomous Driving Data Lakes and Real-Time Decision Making

Junjie Chen

##Publication year
2025

##Abstract

Autonomous driving technology relies heavily on the effective management of vast datasets generated by various sensors and vehicle systems. As such, leveraging scalable cloud infrastructure becomes paramount for improving data handling and decision-making capabilities. In this paper, we introduce the Autonomous Driving Data Lakes (ADDL) framework, designed to streamline the storage, retrieval, and processing of extensive driving data in real-time. By utilizing cloud technology, ADDL ensures tight integration of data from diverse sources to enhance situational awareness for autonomous systems. Our architecture features robust data pipelines that support real-time analytics and machine learning applications, which are crucial for timely and accurate decision-making. Extensive experiments with largescale datasets demonstrate how our approach significantly boosts processing efficiency, data accessibility, and decision-making reliability. The findings highlight advancements in autonomous driving technologies, addressing the challenges associated with data management and enhancing operational effectiveness in changing driving environments.

##keywords
Cloud Infrastructure, Autonomous Driving, Decision Making

## I. INTRODUCTION

Scalable approaches in data processing and model training are crucial for effectively managing large datasets, particularly in domains like autonomous driving. Recent advancements illustrate the potential of large language models (LLMs) to serve as few-shot learners [1], facilitating real-time decisionmaking with minimal task-specific data. For instance, the Pathways Language Model (PaLM), with its vast parameter space, showcases the ability to handle diverse tasks efficiently, reducing reliance on extensive training examples [2].

However, the integration of scalable cloud infrastructure for autonomous driving presents significant challenges. For instance, visual forecasting models, such as ViDAR, can enhance the efficiency of processing and analyzing data from autonomous driving systems by capturing intricate 3D structures and temporal dynamics [3]. Nonetheless, existing frameworks need to address uncertainties in market integration and operation to ensure seamless performance in real-time scenarios.

We introduce a novel approach to enhance autonomous driving through the deployment of scalable cloud infrastructure for managing extensive datasets, termed Autonomous Driving Data Lakes (ADDL). This framework facilitates the effective storage, retrieval, and processing of vast amounts of real-time driving data, enabling autonomous systems to make informed decisions in a dynamic environment. By leveraging cloud capabilities, ADDL ensures seamless data integration from various sources, including sensors and vehicle telemetry, to provide comprehensive situational awareness. Our architecture incorporates efficient data pipelines that support real-time analytics and machine learning processes, allowing for rapid decision-making critical for safe navigation and operational effectiveness.

Our Contributions. Our contributions can be outlined as follows.

- We propose a novel infrastructure termed Autonomous Driving Data Lakes (ADDL) that leverages scalable cloud technologies for efficient management of extensive datasets. This framework supports the dynamic needs of autonomous driving systems by ensuring effective data integration and processing.
- ADDL is designed to facilitate real-time analytics, enhancing situational awareness through seamless data retrieval from diverse sources such as sensors and vehicle telemetry. This capability is pivotal for enabling informed decision-making in complex driving scenarios.
- Our extensive experiments on large-scale datasets validate the effectiveness of the proposed methodology, achieving significant gains in processing speed, data accessibility, and decision accuracy.

## VI. CONCLUSIONS

This paper presents a new methodology that utilizes scalable cloud infrastructure for managing extensive datasets in autonomous driving, named Autonomous Driving Data Lakes (ADDL). This framework is designed for the efficient storage, retrieval, and processing of real-time driving data, allowing autonomous systems to make well-informed decisions in continuously changing environments. By utilizing cloud capabilities, ADDL integrates data from diverse sources, including various sensors and vehicle telemetry, which contributes to enhanced situational awareness.
---
## TITLE: Leveraging the Data Lake: Current State and Challenges

Corinna Giebler, Christoph Gröger, Eva Hoos, Holger Schwarz, and Bernhard Mitschang

##Publication year
2019

##Abstract
The digital transformation leads to massive amounts of heterogeneous data challenging traditional data warehouse solutions in enterprises. In order to exploit  these  complex  data  for  competitive  advantages,  the  data  lake  recently emerged as a concept for more flexible and powerful data analytics. However, existing literature on data lakes is rather vague and incomplete, and the various realization approaches that have been proposed neither cover all aspects of data lakes  nor  do  they  provide  a  comprehensive  design  and  realization  strategy. Hence, enterprises face multiple challenges when building data lakes. To address these shortcomings, we investigate existing data lake literature and discuss various design and realization aspects for data lakes, such as governance or data models. Based on these insights, we identify challenges and research gaps concerning (1) data  lake  architecture,  (2)  data  lake  governance,  and  (3)  a  comprehensive strategy to realize data lakes. These challenges still need to be addressed to successfully leverage the data lake in practice.

##Keywords

Data Lakes, State of the Art, Challenges, Industry Case.

## 1 Introduction

The digital transformation towards capturing and analyzing big data provides novel opportunities for enterprises to improve business and optimize processes [1]. Sensors from the Internet of Things (IoT), for example, enable the continuous gathering of  production data, allowing the proactive assessment and the predictive regulation of production processes [1]. Many other novel data sources can be integrated and analyzed to generate new insights for the enterprise, using advanced analytics such as data mining, text analytics or artificial intelligence [2]. In the following, we summarize advanced analytics and traditional business intelligence as data analytics . The knowledge gained from data analytics represents a significant competitive advantage for enterprises [3].

Data captured for these data analytics tend to be heterogeneous, voluminous, and complex, and thus pose a challenge on traditional enterprise data analytics solutions based on data warehouses. In order to enable comprehensive and flexible data analytics on these complex data, the concept of the data lake emerged in recent years. In a data lake,  any  kind  of  data  are  available  for  flexible  analytics  without  predefined  use cases [4]. To this end, data are stored in a raw or almost raw format.

However, multiple challenges arise when building and using data lakes. Existing literature on data lakes is vague and inconsistent. Numerous approaches exist to realize selected aspects of a data lake, e.g., governance or data models, but it is unclear whether these approaches are sufficient and where additional concepts are needed.

In this paper, we address this gap. We investigate the current state of the art for data lakes and identify remaining research challenges towards a successful data lake. To this end, we make the following contributions:

- We investigate the current state of the general data lake concept.
- We discuss existing design and realization aspects.
- We identify challenges and research gaps for data lakes.

The remainder of this paper is organized as follows: Section 2 investigates existing data lake literature, while Section 3 discusses different design and realization aspects for  data  lakes  and  whether they  are sufficiently  covered  by literature. Based on the gained insights, Section 4 identifies remaining challenges and research gaps. Finally, Section 5 concludes the paper.

## 5 Conclusion and Future Work

This paper summarizes our findings on the current state of data lakes. We conducted a comprehensive literature review on data lakes and existing approaches for their design and realization. It turned out that literature on data lakes is often split over the characteristics of a data lake. There exists no universal data lake concept. When it comes to realizing data lakes, research gaps concerning data lake architecture and data lake governance need to be resolved. Additionally, the lack of a comprehensive design and realization strategy that  considers interdependencies between data lake aspects constitutes a major challenge to leverage data lakes in practice.

Our future work focuses on overcoming these challenges. Existing concepts for data lakes need to be investigated, categorized, and evaluated. Different data lake architectures have to be compared and evaluated with regard to their suitability to typical data lake  use  cases.  Further  approaches  for  e.g.,  semantic  integration,  data  curation,  or schema extraction have to be considered in a data lake context. Using all of these insights, a comprehensive design and realization strategy can be defined.

---
## TITLE: LLM-PQA : LLM-enhanced Prediction Query Answering

Ziyu Li ,Wenjie Zhao ,Asterios Katsifodimos,Rihan Hai

##Publication year
2024

## ABSTRACT

The advent of Large Language Models (LLMs) provides an opportunity to change the way queries are processed, moving beyond the constraints of conventional SQL-based database systems. However, using an LLM to answer a prediction query is still challenging, since an external ML model has to be employed and inference has to be performed in order to provide an answer. This paper introduces LLM-PQA , a novel tool that addresses prediction queries formulated in natural language. LLM-PQA is the first to combine the capabilities of LLMs and retrieval-augmented mechanism for the needs of prediction queries by integrating data lakes and model zoos. This integration provides users with access to a vast spectrum of heterogeneous data and diverse ML models, facilitating dynamic prediction query answering. In addition, LLM-PQA can dynamically train models on demand, based on specific query requirements, ensuring reliable and relevant results even when no pre-trained model in a model zoo, available for the task.

## KEYWORDS

Prediction query; Large Language Models; Model zoo; Data lake
## 1 INTRODUCTION

The recent advancements of Large Language Models (LLMs) has opened up opportunities in tackling complex language understanding tasks [1, 9]. These breakthroughs have inspired novel database management technologies, leading to increasing research interest in natural language to SQL [4, 16]. These works allow users to formulate data retrieval queries in natural language, simplifying interactions with database management systems without requiring in-depth knowledge of SQL syntax.

This scenario exemplifies and highlights the need for innovative systems that go beyond simple data retrieval, which can further incorporate advanced predictive analytics in an easy-to-use manner. However, answering such prediction queries is challenging. First, the user request needs to be translated into a series of actionable steps or pipelines. With the same example, the task is to obtain a value through regression, with other information serving as input features. Second, it would be impractical to train a new model for every query due to resource and time constraints. The alternative solution, finding a suitable pre-trained model, if it exists, is also a challenge task. For instance, HuggingFace [7] hosts 111 models for regression tasks, each varying widely in terms of various factors.

Consider the scenario where a practitioner needs to know the insurance charges of a person meeting specific criteria, e.g., a 19year-old female non-smoker, with a BMI of 27.9. Suppose the database contains a dataset with insurance charge information based on various features. The practitioner's requirement could be resolved by retrieving the relevant record in the database. However, in cases where the required data does not exist in the database, using an LLM alone could lead to unreliable results due to its tendency to generate hallucinated answers [8]. Instead, performing ML inference with a model specifically for this task could provide a more reliable answer. This type of query, requiring ML model prediction to generate the result, is referred as prediction query [2] (or predictive query [3]).

To address the challenges mentioned above, we propose a novel tool, LLM-PQA , designed to handle prediction queries in natural language. LLM-PQA 1 integrates a data lake [5, 14] and a model zoo [10, 15] that serve as the sources of datasets and models. The data lake facilitates the management of heterogeneous data across various domains. It provides the training data for the model training. While the model zoo offers a wide selection of ML models, tailored to specific analytical tasks. To align the most suitable model with the task specified in the query, we employ a vector search strategy. In this approach, the query, models, and datasets are encoded as vectors which are served as indices. The model with the most similar vector to the query vector is selected as the candidate for model inference, ensuring a relevant and efficient response to the query. Moreover, LLM-PQA can also deliver reliable results even when no pre-trained model is available. It allows ML model training 'on the spot" based on the specific requirements of the query. The contributions of this work can be summarized as below:

- Handling prediction queries beyond standard retrieval : LLM-PQA is designed to handle prediction queries, formulated in natural language. This allows for a more intuitive user interaction while addressing complex analytical needs.
- On-the-Spot model training capability : LLM-PQA is able to train ML models tailored to the specific need of a query, which ensures high accuracy and relevance in the responses.
- Matching model to query with vector search : Another critical contribution is the innovative matching mechanism, which accurately pairs a model to a specific task given a query. This tool integrates a data lake and a model zoo, which together provide access to a diverse collection of datasets and ML models, thereby facilitating precise model selection.

## 4 CONCLUSION AND FUTURE WORK

In this work, we propose LLM-PQA , which facilitates prediction query answering in natural language. The vector search mechanism, matching model with given query vector, ensures that the model prediction is both precise and relevant to the query's requirements. By integrating a data lake and model zoo, LLM-PQA provides access to a vast array of heterogeneous data and ML models, enhancing its capability to answer queries from a broad spectrum.

For future work, we will conduct more exploration with the LLM-PQA framework. To enhance retrieval results, one future direction is to improve the exploitation of dataset and model information, such as using statistical and histogram data. Our recent work, TransferGraph [13], has shown that these relationships can be informative for predicting model performance on specific tasks. Moreover, future work can explore optimizing the design of entity profiles or representations to better leverage their intrinsic properties. Additionally, further research can incorporate advanced data discovery techniques to enhance dataset searches.
---
## TITLE: Machine Learning in Data Lake for Combining Data Silos

Merlinda Wibowo 1 , Sarina Sulaiman 2 and Siti Mariyam Shamsuddin 3

##Publication year
2017


## 1 Introduction

Evolving technology has a major role to the operational processes of an organization. The ongoing process of an organization will involve several different stages (design, material acquisition, manufacturing, distribution, sales, usage, service and others) to obtain the meaningful, accurate, and efficient information [1]. Each stage of this process  will  require  the  supply  of  accurate  information  as  a  decision-making  process, operational efficiency, and the creation of the desired solution. An organization has variety of data, which can support transactional applications, analytical decision support, and master as a universal business object [1].

Increasing amount of organization data is creating challenges in data management to  make the hundreds of data entry into a single business view of data  [1]. Lack of storage management system in many organizations, it makes data to become overlapping and indefinite quality. A large number of data in different types can also affect the analytics process of data to deal with uncertainty, prediction and dynamics data [2][3]. Data on a large scale is a collection of various data assets which is complex and cannot be managed efficiently by data processing technology state-of-the-art [4]. Many  organizations  rely  on  traditional  data  warehouses  and  business  intelligence solutions  as  decision  makers  to  access  their  data  and  reports.  But  this  solution  will ignore most of the external data sources because it is too large or in a format that is not  easily  manipulated  and  stored  [5].  We  need  to  determine  the  best  architecture, common  metadata,  data  integration  and  so  on  for  optimizing  operational  business processes within an organization in order to improve data quality and more efficient [6]. It aims to improve the quality of data, use data as a competitive advantage, manage change, comply with work regulations, and adapted to the standards of work [7].

This research will describe the background of study trough definition of data silos, data lake concept, and application. Next part will give the explanation about the modification of data lake architecture with machine learning techniques for combining the data  silos.  Experiment  and  results  of  this  study  are  described  and  followed  by  the conclusion of the study at the end of this paper.

## 7 Conclusion

The improving of the quality of the data organization is considered will influence on the processing of information from the data. The challenges consist of data selection, description,  maintenance,  and  governance.  In  order  to  increase  profits  at  the  operational processes of an organization, technical limitations should be minimized. Data lake can help to determine the best architecture, common metadata, data integration and  so  on  for  optimizing  operational  business  processes  within  an  organization  in order to improve data quality and more efficient. The overall data lake process trough data discovery, governance, explore and machine learning. The use of machine learning  techniques  using  soft  computing  approach  can  maximize  the  data  management process in data lake that used the scenario of data integration process with the different  data  sources,  both  within  a  domain  and  across  domains.  It  aims  to  improve  the quality  of  data,  use  data  as  a  competitive  advantage,  manage  change,  comply  with work regulations, and adapted to the standards of work.

Testing is done by using the data from the Malaysia's and Singapore's Government Open Data about the Air Pollutant Index to determine the condition of air pollution levels for the health and safety of the population. The both of data have been combined be a combination of the new information and have been analyzed using Rough Set  as  a  predicting  method  in  the  data  lake  scenario.  The  selected  significant  data based on generated rules will be displayed on the map chart that is more informative and meaningful information.
---
## TITLE: Managing Data Lakes in Big Data Era: What's a data lake and why has it became popular in data management ecosystem

Huang Fang

##Publication year
2015

##Abstract

the concept of a data lake is emerging as a popular way  to  organize  and  build  the  next  generation  of  systems  to master  new  big  data  challenges,  but  there  are  lots  of  concerns and questions for large enterprises to implement data lakes. The paper discusses the concept of data lakes and shares the author's thoughts and practices of data lakes.

##Keywords

Big  Data,  Data  Lake,  Hadoop,  data  management ecosystem, eneterpirse architecture


## I. INTRODUCTION

The concept of a data lake is emerging as a popular way to organize  and  build  the  next  generation  of  systems  to  master new big data challenges. Large companies are seeking to create data  lakes  because  they  manage  and  use  data  with  increased volume, variety, and a velocity rarely seen in the past.

But there are lots of concerns for data lakes. For example, what is a data lake? How does it help with the challenges posed by  big  data?  How  is  it  related  to  the  current  enterprise  data warehouse?  How  will  the  data  lake  and  the  enterprise  data warehouse be used together? How can you get started on the journey  of  integrate  a  data  lake  into  your  data  management architecture?

This  goal  of  the  paper  is  to  answers  these  questions.  The paper  discusses  the  concepts  of  the  data  lake  and  shares  the author's thoughts and  practices of data lakes in a large company  so  you  can  understand  how  to  develop  a  data  lake strategy and create new forms of business value with the new technologies.

## VI. CONCLUSION

Data lakes is getting hotter in enterprise IT architecture. However, the company should decide what kind of data lakes they need based on the current data process systems. Driving the business result and gain values is the ultimate goal for data lakes. And the hybrid data management ecosystem made up by data lakes and data warehouse will be the wise choice for the company dealing with big data challenge. Data lakes have its own assumptions and maturity growing framework. The IT leader in large organization should pay attention to the data lakes and figure out their own way for implementing these new IT technologies in their organization.
---


## TITLE: Maritime information sharing environment deployment using the advanced multilayered Data Lake capabilities: EFFECTOR project case study

Zdravko Paladin 1 , Nexhat Kapidani 1 , Piero Scrima 2 , Georgios Vosinakis 3 , Guillaume Hajduch 4 , Marios Moutzouris 5 , Christos Bolakis 6 , Alkiviadis Astyakopoulos 6

##Publication year
2022


## ABSTRACT

Establishing an efficient information sharing network among national agencies in maritime domain is  of  essential  importance  in  enhancing  the  operational  performance,  increasing  the  situational awareness  and  enabling  interoperability  among  all  involved  maritime  surveillance  assets.  Based on various data-driven technologies and sources, the EU initiative of Common Information Sharing Environment (CISE), enables the networked participants to timely exchange information concerning vessel traffic, joint SAR &amp; operational missions, emergency situations and other events at sea. In order to host and process vast amounts of vessels and related maritime data consumed from heterogeneous sources (e.g. SAT-AIS, UAV, radar, METOC), the deployment of big data repositories in the form of Data Lakes is of great added value. The different layers in the Data Lakes with capabilities for aggregating, fusing, routing and harmonizing data are assisted by decision support tools with combined reasoning modules with semantics aiming at providing a more accurate Common Operational Picture (COP) among maritime agencies. Based on these technologies, the aim of this paper is to present an endto-end  interoperability  framework  for  maritime  situational  awareness  in  strategic  and  tactical operations at sea, developed in EFFECTOR EU-funded project, focusing on the multilayered Data Lake capabilities.  Specifically,  a  case  study  presents  the  important  sources  and  processing  blocks,  such as the SAT-AIS, CMEMS, UAV components, enabling maritime information exchange in CISE format and  communication  patterns.  Finally,  the  technical  solution  is  validated  in  the  project's  recently implemented maritime operational trials and the respective results are documented.

## Key words

CISE, Maritime surveillance &amp; safety, Big Data, Data Lake, New technologies

## 1  Introduction

The exponential increase in versatility of data sources, datasets,  surveillance  assets,  devices,  has  been  followed by  the  growth  of  compliant  technologies  on  high-level readiness for data processing, management, and sharing. This trend has been recognized and is of special importance in the maritime domain. The various challenges affecting  its  regular  performance  imposed  the  need  for deployment of advanced technologies in each sphere of the  maritime  segment.  Therefore,  the  networked  approach  comprehending  relevant  maritime  stakeholders together  with  an  effective  system  of  new  ICT  technologies, brings many benefits to the broader community of participants, including a safe, secure and resilient framework for maritime activities. These activities need to be persistently  monitored  and  controlled  in  order  to  face various challenging situations, the most frequent among which are  the  intensity  of  maritime  traffic,  vessel  collisions in coastal  areas,  border  control,  environmental risks    (oil  spillage),  law  enforcement,  irregular  migrations,  border-  crossing,  smuggling,  illegal  fishing,  etc. Therefore, seamless and cost-effective collaboration between maritime authorities based on timely information collected from national legacy systems led to the establishment of a cooperative environment for maritime information  and  data  exchange,  known  as  the  Common Information Sharing Environment (CISE). The infrastructure for the data sharing process for the purpose of raising the Maritime Situational Awareness  (MSA)  and creating  the  Common  Operational  Picture  (COP),  comprehends the following important elements:

- own  data  sources,  assets  and  devices  in  the  form  of sensors (e.g. AIS, radar, UAV, meteo data, etc.),
- the  integration  platforms  for  all  collected  data    from sensors and configuration of a system that is capable of processing, managing and coordinating of relevant actions (e.g. VTMIS, NMSW, PCS, etc.)
- Operationalized Big Data repositories - Data Lakes for storing huge volumes of maritime data,
- Advanced tools for Big Data Analytics with Artificial Intelligence (AI) Modules for decision support to national  safety  centers  in  missions  at  sea  over  Command, Control, and Coordination systems (C2 or C3i).

The  aim  and  motivation  of  the  paper  are  to  demonstrate the key features of Data Lakes as Big Data repositories that together with integrated AI modules provide key important  support  to  a  more  efficient  CISE  Network  of maritime participants. The most important features of the Data Lakes and technologies discussed in the paper, contribute  to  adopting  a  consistent  model  for  an  integrated maritime surveillance framework. Also, extensive research was conducted within the EU Project EFFECTOR, leading to  results  and  conclusions  regarding  the  interoperable network of maritime agencies, supported with novel techniques in maritime surveillance and safety domain.

The  structure  of  the  paper  is  organized  as  follows. After the introductory part, Section 2 with the methodological approach, gives a broader insight into a maritime network for sharing relevant data and information through CISE, as well as the architecture of the data lake as a  system  component  that  collects  and  stores  large  data with the purpose of supporting a data and services sharing model. Section 3 gives a case study showing the most important features and plugins of multilayered Data Lake, deployed within the EU Research and Innovation project EFFECTOR. Section 4 provides the analysis of evaluation and validation surveys done with the aim to estimate the satisfaction of maritime end-users with developed technical solutions after testing and live demonstration of operational  trials  within  EFFECTOR  Project.  The  concluding remarks are given in Section 5.
 
## 5  Conclusion

In this study, a holistic approach related to Maritime information sharing environment deployment using the advanced multilayered Data Lake capabilities was presented. The outcome of this study was also aligned with an EFFECTOR project case study. In a related context, an end-to-end interoperability framework for maritime situational awareness at strategic and tactical operations at sea was well  defined  and  analyzed.  Overall,  by  specifying  all  the needed features as inputs to a multilayered Data Lake, utilized through the EFFECTOR Project, we then provided a large-scale statistical analysis by validating and evaluating the  e-surveys  having  been  distributed  to  a  significant number  of  stakeholders,  including  strategic  and  tactical operators and members from the external user community that participated to the EFFECTOR use case. Finally, the respective results are explicitly illustrated, based on an individual KPA definition.

---

## TITLE: Metadata Management for Textual Documents in Data Lakes

Pegdwend´ e N. Sawadogo 1 , Tokio Kibata 2 and J´ erˆ ome Darmont 1

##Publication year
2019

## Abstract:

Data lakes have emerged as an alternative to data warehouses for the storage, exploration and analysis of big data. In a data lake, data are stored in a raw state and bear no explicit schema. Thence, an efficient metadata system is essential to avoid the data lake turning to a so-called data swamp. Existing works about managing data lake metadata mostly focus on structured and semi-structured data, with little research on unstructured data. Thus, we propose in this paper a methodological approach to build and manage a metadata system that is specific to textual documents in data lakes. First, we make an inventory of usual and meaningful metadata to extract. Then, we apply some specific techniques from the text mining and information retrieval domains to extract, store and reuse these metadata within the COREL research project, in order to validate our proposals.

## Keywords:

Data lakes, Textual documents, Metadata management, Data ponds


## 1 INTRODUCTION

The tremendous growth of social networks and the Internet of Things (IoT) brings various organisms exploit more and more data. Such amounts of so-called big data are mainly characterized by high volume, velocity and variety, as well as a lack of veracity, which together exceed the capacity of traditional processing systems (Miloslavskaya and Tolstoy, 2016). To tackle these issues, Dixon introduced the concept of data lake, a large repository of raw and heterogeneous data, fed by external sources and allowing users to explore, sample and analyze the data (Dixon, 2010).

In a data lake, original data are stored in a raw state, without any explicit schema, until they are queried. This is known as schema-on-read or late binding (Fang, 2015; Miloslavskaya and Tolstoy, 2016). However, with big data volume and velocity coming into play, the absence of an explicit schema can quickly turn a data lake into an inoperable data swamp (Suriarachchi and Plale, 2016). Therefore, metadata management is a crucial component in data lakes (Quix et al., 2016). An efficient metadata system is indeed essential to ensure that data can be explored, queried and analyzed.

Many research works address metadata management in data lakes. Yet, most of them focus on structured and semi-structured data only (Farid et al., 2016; Farrugia et al., 2016; Madera and Laurent, 2016; Quix et al., 2016; Klettke et al., 2017). Very few target unstructured data, while the majority of big data is unstructured and mostly composed of textual documents (Miloslavskaya and Tolstoy, 2016). Thus, we propose a metadata management system for textual data in data lakes.

Our approach exploits a subdivision of the data lake into so-called data ponds (Inmon, 2016). Each data pond is dedicated to a specific type of data (i.e., structured data, semi-structured data, images, textual data, etc.) and involves some specific data preprocessing. Thus, we propose in this paper a textual data pond architecture with processes adapted to textual metadata management. We notably exploit text mining and information retrieval techniques to extract, store and reuse metadata.

Our system allows two main types of analyses. First, it allows OLAP-like analyses, i.e., documents can be filtered and aggregated with respect to one or more keywords, or by document categories such as document MIME type, language or business category. Filter keys are comparable to a datamart's dimensions, and measures can be represented by statistics or graphs. Second, similarity measures between documents can be used to automatically find clusters of documents, i.e., documents using approximately the same lexical field, or to calculate a document's centrality. We demonstrate these features in the context of the COREL research project.

Our contribution is threefold. 1) We propose the first thorough methodological approach for managing unstructured, and more specifically textual, data in a data lake. 2) We introduce a new type of metadata, global metadata, which had not been identified as such in the literature up to now. 3) Although we articulate existing techniques (notably standards) to build up our metadata management system, adaptations are required. We especially combine a graph model and a data vault (Linstedt, 2011) for metadata representation, and extend an XML representation format for metadata storage.

The remainder of this paper is organized as follows. Section 2 surveys the research related to metadata management in data lakes, and especially textual metadata issues. Section 3 presents our metadata management system. In Section 4, we apply our approach on the COREL data lake as a proof of concept. Finally, Section 5 concludes the paper and gives an outlook on our research perspectives.

## 5 CONCLUSION

We propose in this article the first, to the best of our knowledge, complete methodological approach for building a metadata management system for data lakes or data ponds storing textual documents. To avoid the data swamp syndrome, we identify relevant metadata extraction, structuring, storage and processing techniques and tools. We notably distinguish three types of metadata, each of which having its own extraction and storage techniques: intra-document metadata, inter-document metadata and global, semantic metadata (which we introduce). Eventually, we extend the XML manifest metadata representation to suit textual document-related metadata storage.

We apply and validate the feasibility of our metadata management system on a real-life textual corpus to build the CODAL data lake. As a result, non-specialist users (i.e., with no data management knowledge) can perform OLAP-like analyses. Such analyses consist in filtering and aggregating the corpus with respect one or more terms, and in navigating through visualizations that summarize the filtered corpus. Users can also cluster documents to identify groups of similar documents.

In future works, we first plan to replace the filesystem by a relational DBMS to store structured presentation metadata, and thus allow easier and faster queries and analyses. We shall also improve our platform by integrating centrality analyses (Section 4.4.2). Finally, since our current test corpus is small-sized, we plan to apply our method on a bigger one from a new project in management sciences and test its scalability.

Moreover, our objective is to turn the specific CODAL platform into a generic (i.e., not tied to the COREL project) analysis platform that implements the metadata management system we propose, and make it available to the community. This would allow non-computer scientists to easily exploit any textual data pond.

Eventually, in the long run, we aim at designing a metadata management system that would help querying data ponds storing different types of data (structured, semi-structured, unstructured - textual and possibly multimedia) altogether.
---
## TITLE: Metadata Management on Data Processing in Data Lakes

Imen Megdiche, Franck Ravat, Yan Zhao

##Publication year
2021

##Abstract

Data Lake (DL) is known as a Big Data analysis solution. A data lake stores not only data but also the processes that were carried out on these data. It is commonly agreed that data preparation/transformation takes most of the data analyst's time. To improve the efficiency of data processing in a DL, we propose a framework which includes a metadata model and algebraic transformation operations. The metadata model ensures the findability, accessibility, interoperability and reusability of data processes as well as data lineage of processes. Moreover, each process is described through a set of coarse-grained data transforming operations which can be applied to different types of datasets. We illustrate and validate our proposal with a real medical use case implementation.

## Keywords
Data Lake, Data processing

## 1 Introduction

Data Lake (DL) is a Big Data analysis solution that allows users to ingest raw data, store them in their native format, process these data upon usage, ensure the availability and accessibility of data for different users and apply governance to maintain the data quality, security and data life-cycle.

Data preparation is commonly considered as the most time consuming phase when analyzing data. Transformation processes, especially those in a DL, require a lot of effort because of (i) a great amount of different types of data (structured, semi-structured and unstructured) are ingested, (ii) various transforming operators can be carried out, for instance, consolidation, join, filtering, and (iii) different users are involved, such as BI (Business Intelligence) professionals, data scientists and data analysts. Users with different profiles apply different programs to prepare data by crossing various sources in a DL, in this paper, we use data wrangler to refer to these users.

To better govern a DL and to facilitate data preparation, metadata management is emphasized by many authors [1,3,4]. The integrated metadata dedicating to data processing allow data wranglers to find, access and reuse existing data transforming processes easier. Moreover, the source code and execution information allow users to update or adjust programs for further usages rapidly.

Today, different DL metadata solutions have been proposed or implemented in the academic and industrial world. However, most of the current solutions only focus on dataset metadata [1,3,4,2] without referring to process metadata. Moreover, some industrial solutions apply lineage metadata by only tracing source data and result data (Zaloni, Azure), but the process metadata is not specific and adapted enough for searching different types of processes efficiently by using the involved the operation or execution information.

At the aim of improving the reusability of data processes, it is better to describe a process through a sequence of generic operations than totally through free text. Hence, we define a framework that includes a metadata model in which processes are composed of a set of transformation operations. These later can be applied to different types of data. Moreover, the operations are presented with a controlled language to make the process interrogation easier. Note that we add the operation metadata for marking the main actions of a data process instead of translating each line of the transformation code (like ETL processes). Our framework have the following advantages: (i) The storage of processes and their metadata can facilitate data preparation by improving transparency and reusability of processes. (ii) The reliability of data is ensured by lineage metadata, users can verify the provenance of data to have more confidence and understanding of the data that they will use. (iii) Process metadata help data wranglers to find more relevant datasets, for instance, datasets that are generated by the same process.

At the aim of proposing a metadata management focusing on data processing for data lakes, our paper is threefold. In section 2, we introduce related work on metadata dedicated to data processing. In section 3, we propose a data lake metadata model for data processes with a minimal core of transforming operations with illustrations on our motivating example. Finally, in section 4, we present an implementation of our model and we validate it by technical aspects.

## 5 Conclusion and Future Work

To the best of our knowledge, there is no solution which can take advantage of the existing processes in a data lake by improving the findability, accessibility, interoperability, and reusability. To better use a data lake, in this paper, we proposed a metadata model including metadata on data processing which can help users to find or even reuse certain processes to make the data transformations more efficient. The introduced process metadata contain operation metadata which are classified by coarse grain into seven categories. These operations can be described by a controlled language. We implement the metadata model in a graph database with Neo4j and validate it.

The graph database of metadata is the basic building block for a metadata management system for a data lake. For future work, we have to proceed on two fronts: (i) The automatic extraction of metadata. Although some metadata have to be entered manually, for instance, the name, description, keywords of pro-

cesses, automatic metadata extraction is always essential which helps to reduce the time to metadata management and avoid possible manual entry errors; (ii) A graphical and ergonomic interface of metadata management system. There is a need to provide an interface that allows data lake users to easily search without writing complicated requests.

---

## TITLE: Metadata Systems for Data Lakes: Models and Features

Pegdwendé Nicolas Sawadogo, Etienne Scholly, Cécile Favre, Eric Ferey, Sabine Loudcher, Jérôme Darmont

##Publication year
2019

##Abstract

Over the past decade, the data lake concept has emerged as an alternative to data warehouses for storing and analyzing big data. A data lake allows storing data without any predefined schema. Therefore, data querying and analysis depend on a metadata system that must be efficient and comprehensive. However, metadata management in data lakes remains a current issue and the criteria for evaluating its effectiveness are more or less nonexistent.

In this paper, we introduce MEDAL, a generic, graph-based model for metadata management in data lakes. We also propose evaluation criteria for data lake metadata systems through a list of expected features. Eventually, we show that our approach is more comprehensive than existing metadata systems.

##Keywords

Data lakes, Metadata modeling, Metadata management

## 1 Introduction

Since the beginning of the 21 st century, the usages of organizations in decisionmaking processes have been disrupted by the availability of large amounts of data, i.e., big data. Mainly issued from social media and the Internet of things, big data bring about great opportunities for organizations, but also issues related to data volume, velocity and variety, which surpass the capabilities of traditional storage and data processing systems [20].

In this context, the concept of data lake [6] appears as a solution to big data heterogeneity problems. A data lake provides integrated data storage without predefined schema [11]. In the absence of a data schema, an effective metadata system becomes essential to make data queryable and thus prevent the lake from turning into a data swamp, i.e., an inexploitable data lake [1, 11, 26].

While the literature seems unanimous about the importance of the metadata system in a data lake, questions and uncertainties remain about its implementation methodology. Several approaches help organize metadata, but most concern only structured and semi-structured data [8, 11, 17, 22]. Moreover, the effectiveness of a metadata system is difficult to measure because, to the best of our knowledge, there are no widely shared and accepted evaluation criteria.

To address these issues, we first identify a set of features that should ideally be proposed by the metadata system of a data lake. By comparing several metadata systems with respect to these features, we hint that none of them offers all expected features. Thus, we propose a new metadata model that is more complete and generic. Our graph-based metadata model is named MEtadata model for DAta Lakes (MEDAL). It is also based on a typology distinguishing intra-object, inter-object and global metadata.

The remainder of this paper is organized as follows. Section 2 introduces the concept of data lake. Section 3 details the expected features of a data lake's metadata system and compares several works on the organization of metadata w.r.t. these features. Section 4 presents the metadata typology on which MEDAL is based. Section 5 formalizes MEDAL and introduces its graph representation. Finally, Section 6 concludes the paper and hint at research perspectives.

## 6 Conclusion

After an overview of the definitions of a data lake from the literature, we propose in this paper our own definition of this concept. Then, we identify the six key features that the metadata system of a data lake must provide to be as robust as possible in addressing the big data issues and the schema-on-read approach. Comparing existing metadata systems, we show that some succeed in providing most features, but none offers them all.

Hence, we propose a new metadata model, MEDAL, based on the notion of object and a typology of metadata in three categories: intra-object, inter-object and global metadata. MEDAL adopts a graph-based organization. An object is represented by a hypernode containing nodes that correspond to the versions and representations of an object. Transformation and update operations are modeled by oriented edges linking the nodes. Hypernodes can be linked in several ways: edges to model similarity links and hyperarcs to translate parenthood relationships and object groupings. Finally, global resources are also present, in the form of knowledge bases, indexes or event logs.

Thanks to all these elements, MEDAL supports all six key features we have identified, making it the most complete metadata model to the best of our knowledge. However, MEDAL is not implemented yet. It is the objective of future work in which we shall propose an application of our metadata model in a context of structured, semi-structured and unstructured data. This implementation will allow us to evaluate MEDAL in more detail, in particular by comparing it with other existing systems.
---
## TITLE: Modeling Data Lake Metadata with a Data Vault

Iuri Nogueira, Maram Romdhane, Jérôme Darmont

##Publication year
2018

## Abstract

With the rise of big data, business intelligence had to find solutions for managing even greater data volumes and variety than in data warehouses, which proved ill-adapted. Data lakes answer these needs from a storage point of view, but require managing adequate metadata to guarantee an efficient access to data. Starting from a multidimensional metadata model designed for an industrial heritage data lake presenting a lack of schema evolutivity, we propose in this paper to use ensemble modeling, and more precisely a data vault, to address this issue. To illustrate the feasibility of this approach, we instantiate our metadata conceptual model into relational and document-oriented logical and physical models, respectively. We also compare the physical models in terms of metadata storage and query response time.

##Keywords

Big data, Data lake, Metadata management, Ensemble modeling, Data vault

##Topics

Information systems, Information storage systems, Cloud based storage

## 1 Introduction

Born with big data in the 2010's, data lakes propose a way to store in their native format voluminous and diversely structured data, in an evolutionary storage place allowing later analyses (reporting, visualization, data mining...) [3]. The concept of data lake opposes that of data warehousing, which outputs an integrated, highly structured, decision-oriented and subject-oriented database, but has the disadvantage of dividing data into silos [26].

Yet, everyone agrees that a data lake must be well designed. Otherwise, it is doomed to quickly become an inoperable data swamp [1, 9]. That is, a data lake must allow querying data (selection/restriction) with good response times, and not only storing data and handling a 'key-value' access. However, actual solutions are more or less non-existent in the literature and pertain to undisclosed industrial practices.

This is why [21] proposed a conceptual metadata model that allows indexing and efficiently querying an industrial heritage data lake constituted of XML data, texts, floorplans and pictures. This multidimensional model is similar to snowflake models used in data warehouses or datamarts, but only stores metadata, not the document corpus itself.

This metadata model has been instantiated physically in several NoSQL database management systems (DBMSs) to enable scaling. However, such a data warehouse-like schema cannot evolve easily when data sources evolve themselves, or when new sources pop up, whereas this is a crucial point in the management of a data lake.

Consequently, we propose in this paper:

1. to replace the multidimensional model of [21] by an ensemble model, more precisely a data vault [16, 8, 4, 18], which is a data model allowing easy schema evolutions and has, to the best of our knowledge, never been used in the context of metadata management;
2. to evaluate, the feasibility, on one hand, and the effectiveness of this model in terms of metadata query response (as an index), on the other hand, because it induces many joints. For this sake, we translate our conceptual metadata vault into different logical (i.e., relational and document-oriented) and physical (i.e., PostgreSQL 1 and MongoDB 2 ) models, which also helps compare the respective efficiency of the two physical models.

The remainder of this paper is organized as follows. Section 2 is devoted to a state of the art concerning data lakes and metadata management, on one hand, and ensemble modeling and data vaults in particular, on the other hand. Section 3 presents our conceptual metadata vault model, as well as its logical and physical translations. Section 4 details the experiments we conducted to validate the feasibility of our approach and compare the PostgreSQL and MongoDB physical models in terms of storage and metadata query response time. Finally, Section 5 concludes this paper and hints at research perspectives.
## 5 Conclusion

From the modeling of data lake metadata as a multidimensional schema, noticing that schema evolution is not guaranteed, we instead propose in this paper an ensemble model, more precisely a metadata vault.

The translation of our conceptual metadata model into logical and physical models, as well as experiments carried out on the TECTONIQ corpus, help demonstrate the feasibility of our modeling choice in terms of metadata storage volume and response time to queries formulated on the metadata.

The comparison of two physical models (PostgreSQL and MongoDB) also reveals the superiority of document-based models for storing this type of metadata.

The perspectives that this preliminary work is opening are numerous. In particular, it would be necessary to test the robustness of the metadata model when source data scale up, add data sources to verify the relevance of data vault modeling and test the model with queries more complex than projections/restrictions.

Moreover, although the supporters of anchor modeling argue that 6NF modeling allows good response times thanks to the join eliminating technique used in modern optimizers [22], it is also important to compare query efficiency over data vault and anchor models vs. classical star-like schemas, with a benchmark that allows significant database scale-up.

Finally, various alternative metadata models, independently from the modeling techniques used, could be considered and compared. Schemas of the TECTONIQ documents could also be automatically extracted to enrich the metadata.

---
## TITLE: Modeling Data Lakes with Data Vault: Practical Experiences, Assessment, and Lessons Learned

Corinna Giebler, Christoph Gröger, Eva Hoos, Holger Schwarz, and Bernhard Mitschang

##Publication year
2019

##Abstract

Data lakes have become popular to enable organization-wide analytics on heterogeneous data from multiple sources. Data lakes store data in their raw format and are often characterized as schema-free. Nevertheless, it turned out that data still need to be modeled, as neglecting data modeling may lead to issues concerning e.g., quality and integration. In current research literature and industry practice, Data Vault is a popular modeling technique for structured data in data lakes. It promises a flexible, extensible data model that preserves data in their raw format. However, hardly any research or assessment exist on the practical usage of Data Vault for modeling data lakes. In this paper, we assess the Data Vault model's suitability for the data lake context, present lessons learned, and investigate success factors for the use of Data Vault. Our discussion is based on the practical usage of Data Vault in a large, global manufacturer's data lake and the insights gained in real-world analytics projects.

##Keywords

Data Lakes, Data Vault, Data Modeling, Industry Experience, Assessment, Lessons Learned.

## 1 Introduction

The advance of digitalization leads to large amounts of heterogeneous data. Businesses that apply data analytics on these data can gain a large competitive advantage [1]. Data lakes [2] are highly popular, since they enable the integration and explorative analysis of heterogeneous data. Typically, a schema-on-read approach is used to manage data in data lakes [2, 3] to allow flexible usage beyond predefined use cases-so called usecase-independence. Even though data of any format may be stored in the data lake, the majority of data lakes in industry practice nowadays mostly contain structured data [4].

However, when managing data with the schema-on-read approach, data modeling must not be neglected [5, 6]. It turned out that a lack of meaningful structure for data may lead to quality issues, integration issues, performance issues and deviations from enterprise goals [6]. Standardizing data modeling in data lakes has two advantages for organizations: Technical and organizational processes (e.g., for ETL and project management) can be reused, and data from different contexts can easily be combined.

One candidate for modeling data in data lakes is Data Vault [7, 8]. It is used to model data lakes in both research and industry practice. Data Vault is a combination of dimensional modeling and third normal form [7] and supports agile project management and use-case-independent  modeling [8, 9].  Because  it  is  a  simple  and  flexible  modeling technique, Data Vault qualifies for data modeling in data lakes [5].

Currently, there is little conceptual work on Data Vault available in both industry and research. Aside from the reference books of its inventor [7, 8], there are some rudimentary comparisons between Data Vault and other modeling techniques [9, 10]. Research also deals with the creation of a conceptual Data Vault model [11], the automated physical design of Data Vault [12], or the direct transformation from JSON to a Data Vault schema [13]. However, there are neither insights on practical experiences nor detailed assessments for Data Vault, especially not in the context of data lakes.

In this paper, we close this gap by providing guidance on the usage of Data Vault in data lakes. Our contributions include the following:

- We investigate  exemplary  real-world  analytics  projects  from  three  different  core business domains at a large, globally active manufacturer and provide insights into the practical experiences made.
- We identify the shortcomings of Data Vault and demonstrate possible solutions.
- We present lessons learned and derive general success factors for the use of Data Vault in data lakes.
- We assess Data Vault as data modeling technique for structured data in data lakes.

The remainder of this paper is structured as follows: Section 2 describes the Data Vault model and its characteristics in detail. Sections 3 discusses the exemplary analytics projects, the difficulties that arose, and possible solutions. Section 4 assesses Data Vault based on the experiences made, presents the lessons learned, and derives success factors for Data Vault modeling. Section 5 gives an overview and comparative evaluation concerning modeling alternatives. Finally, Section 6 concludes the paper.

## 6 Conclusion

Data lakes recently emerged to enable the use-case-independent use of data. However, even data in a data lake have to be modeled. Without data modeling, data are prone to quality and integration issues. Research literature suggests Data Vault for this purpose. To determine the adequacy of Data Vault for data lake modeling, we examined realworld business domains at a large, globally active manufacturer. We provided insights into three domains and discussed the experiences made with the practical application of Data Vault for data lakes. It turned out that even though some of the projects used data rather untypical for Data Vault (e.g., IoT data), it was successfully applied in all projects. 

However, multiple issues arose when using Data Vault, some that were only insufficiently covered by the Data Vault modeling reference, some that were not covered at all. To successfully use Data Vault in data lakes, a set of enterprise-wide modeling guidelines is necessary, which extend the available Data Vault modeling reference and contain solution approaches and best practices.

---

## TITLE: On data lake architectures and metadata management

Pegdwend´ e Sawadogo 1 · J´ erˆ ome Darmont 1

##Publication year
2020

## Abstract

Over the past two decades, we have witnessed an exponential increase of data production in the world. So-called big data generally come from transactional systems, and even more so from the Internet of Things and social media. They are mainly characterized by volume, velocity, variety and veracity issues. Big data-related issues strongly challenge traditional data management and analysis systems. The concept of data lake was introduced to address them. A data lake is a large, raw data repository that stores and manages all company data bearing any format. However, the data lake concept remains ambiguous or fuzzy for many researchers and practitioners, who often confuse it with the Hadoop technology. Thus, we provide in this paper a comprehensive state of the art of the different approaches to data lake design. We particularly focus on data lake architectures and metadata management, which are key issues in successful data lakes. We also discuss the pros and cons of data lakes and their design alternatives.

##Keywords 

Data lakes,Data lake architectures,Metadata management,Metadata modeling

## 1 Introduction

The 21st century is marked by an exponential growth of the amount of data produced in the world. This is notably induced by the fast development of the Internet of Things (IoT) and social media. Yet, while big data represent a tremendous opportunity for various organizations, they come in such volume, speed, heterogeneous sources and structures that they exceed the capabilities of traditional management systems for their collection, storage and processing in a reasonable time (Miloslavskaya and Tolstoy 2016). A time-tested solution for big data management and processing is data warehousing. A data warehouse is indeed an integrated and historical storage system that is specifically designed to analyze data.

However, while data warehouses are still relevant and very powerful for structured data, semi-structured and unstructured data induce great challenges for data warehouses. Yet, the majority of big data is unstructured (Miloslavskaya and Tolstoy 2016). Thus, the concept of data lake was introduced to address big data issues, especially those induced by data variety.

Adata lake is a very large data storage, management and analysis system that handles any data format. It is currently quite popular and trendy both in the industry and academia. Yet, the concept of data lake is not straightforward for everybody. A survey conducted in 2016 indeed revealed that 35% of the respondents considered data lakes as a simple marketing label for a preexisting technology, i.e., Apache Hadoop (Grosser et al. 2016).

Knowledge about the concept of the data lake has since evolved, but some misconceptions still exist, presumably because most of data lakes design approaches are abstract sketches from the industry that provide few theoretical or implementation details (Quix and Hai 2018). Therefore, a survey can be useful to give researchers and practitioners a better comprehension of the data lake concept and its design alternatives.

To the best of our knowledge, the only literature reviews about data lakes are all quite brief and/or focused on a specific topic, e.g., data lake concepts and definitions (Couto et al. 2019; Madera and Laurent 2016), the technologies used for implementing data lakes (Mathis 2017) or data lakes inherent issues (Giebler et al. 2019; Quix and Hai 2018). Admittedly, the report proposed in Russom (2017) is quite extensive, but it adopts a purely industrial view. Thus, we adopt in this paper a wider scope to propose a more comprehensive state of the art of the different approaches to design and exploit a data lake. We particularly focus on data lake architectures and metadata management, which lie at the base of any data lake project and are the most commonly cited issues in the literature (Fig. 1).

More precisely, we first review data lake definitions and complement the best existing one. Then, we investigate the architectures and technologies used for the implementation of data lakes, and propose a new typology of data lake architectures. Our second main focus is metadata management, which is a primordial issue to avoid turning a data lake into an inoperable, so-called data swamp. We notably classify data lake metadata and introduce the features that are necessary to achieve a full metadata system. We also discuss the pros and cons of data lakes.

Eventually, note that we do not review other important topics, such as data ingestion, data governance and security in data lakes, because they are currently little addressed in the literature, but could still presumably be the subject of another full survey.

The remainder of this paper is organized as follows. In Section 2, we define the data lake concept. In Section 3, we review data lake architectures and technologies to help users choose the right approach and tools. In Section 4, we extensively review and discuss metadata management. Eventually, we recapitulate the pros and cons of data lakes in Section 5 and conclude the paper in Section 6 with a mind map of the key concepts we introduce, as well as current open research issues.

## 6 Conclusion

In this survey paper, we establish a comprehensive state of the art of the different approaches to design, and conceptually build a data lake. First, we state the definitions of the data lake concept and complement the best existing one. Second, we investigate alternative architectures and technologies for data lakes, and propose a new typology of data lake architectures. Third, we review and discuss the metadata management techniques used in data lakes. We notably classify metadata and introduce the features that are necessary to achieve a full metadata system. Fourth, we discuss the pros and cons of data lakes. Fifth, we summarize by a mind map the key concepts introduced in this paper (Fig. 10).

Eventually, in echo to the topics we chose not to address in this paper (Section 1), we would like to open the discussion on important current research issues in the field of data lakes.

Data integration and transformation have long been recurring issues. Though delayed, they are still present in data lakes and made even more challenging by big data volume, variety, velocity and lack of veracity. Moreover, when transforming such data, User-Defined Functions (UDFs) must very often be used (MapReduce tasks, typically). In ETL and ELT processes, UDFs are much more difficult to optimize than classical queries, an issue that is not addressed yet by the literature (Stefanowski et al. 2017).

With data storage solutions currently going beyond HDFS in data lakes, data interrogation through metadata is still a challenge. Multistores and polystores indeed provide unified solutions for structured and semi-structured data, but do not address unstructured data, which are currently queried separately through index stores. Moreover, when considering data gravity (Madera and Laurent 2016), virtual data integration becomes a relevant solution. Yet, mediation approaches are likely to require new, big data-tailored query optimization and caching approaches (Quix and Hai 2018; Stefanowski et al. 2017).

Unstructured datasets although unanimously acknowledged as ubiquitous and sources of crucial information, are very little specifically addressed in data lake-related literature. Index storage and text mining are usually mentioned, but there is no deep thinking about global querying or analysis solutions. Moreover, exploiting other types of unstructured data but text, e.g., images, sounds and videos, is not even envisaged as of today.

Again, although all actors in the data lake domain stress the importance of data governance to avoid a data lake turning into a data swamp, data quality, security, life cycle management and metadata lineage are viewed as risks rather than issues to address a priori in data lakes (Madera and Laurent 2016). Data governance principles are indeed currently seldom turned into actual solutions.

Finally, data security is currently addressed from a technical point of view in data lakes, i.e., through access and privilege control, network isolation, e.g., with Docker tools (Cha et al. 2018), data encryption and secure search engines (Maroto 2018). However, beyond these issues and those already addressed by data governance (integrity, consistency, availability) and/or related to the European General Data Protection Regulation (GDPR), by storing and cross-analyzing large volumes of various data, data lakes allow mashups that potentially induce serious breaches of data privacy (Joss 2016). Such issues are still researched as of today.
---

## TITLE: Query Rewriting for Heterogeneous Data Lakes

Rihan Hai 1( B ) , Christoph Quix 1,2 , and Chen Zhou 1

##Publication year
2018

##Abstract

The increasing popularity of NoSQL systems has lead to the model of polyglot persistence, in which several data management systems with different data models are used. Data lakes realize the polyglot persistence model by collecting data from various sources, by storing the data in its original structure, and by providing the datasets for querying and analysis. Thus, one of the key tasks of data lakes is to provide a unified querying interface, which is able to rewrite queries expressed in a general data model into a union of queries for data sources spanning heterogeneous data stores. To address this challenge, we propose a novel framework for query rewriting that combines logical methods for data integration based on declarative mappings with a scalable big data query processing system (i.e., Apache Spark) to efficiently execute the rewritten queries and to reconcile the query results into an integrated dataset. Because of the diversity of NoSQL systems, our approach is based on a flexible and extensible architecture that currently supports the major data structures such as relational data, semi-structured data (e.g., JSON, XML), and graphs. Weshowthe applicability of our query rewriting engine with six real world datasets and demonstrate its scalability using an artificial data integration scenario with multiple storage systems.

## 1 Introduction

Data integration is an open challenge that has been addressed for decades; with the increasing diversity in the data management landscape the challenge has become even harder. One of the first problems in data integration is getting access to the source data. Data lakes (DLs) have been proposed to tackle the problem of data access by providing a comprehensive data repository in which the raw data from heterogeneous sources will be ingested in its original format [6,15]. As DLs do not provide a common unified schema for the loaded data (as in data warehouses), the extraction of metadata from data sources is a crucial element in DLs [8,13]. DL is still a relatively new concept; thus, there is still a discussion about the concrete functionalities and architectures. However, there are certain aspects that are generally agreed upon, e.g., DLs should provide a common interface to query integrated data across heterogeneous data sources [6,14,15].

In this work, we focus on the problem of query rewriting for logical data lakes , making use of a (partially) integrated schema and logical mappings between the sources and the integrated schema [14]. Figure 1 sketches the storage layer of a DL architecture [8] which provides a unified data access interface to heterogeneous raw data stores. A metadata repository maintains the schema information and the mappings to an integrated schema. To illustrate the challenge addressed in this paper, the right part of the figure sketches a motivating example (the formal representation of this example will be done in Sect. 2). Suppose we have two data stores, a graph database (Neo4j) with information about actors and a document-oriented database (MongoDB) with information about movies and their cast. To answer the query 'movies with number of male actors and titles', we have to 'join' the information from both data stores. For this, our system will first translate the input queries (which can be in different query formats, e.g., SQL or JSONiq [4]) into a common logical representation based on Datalog, which is independent of the underlying systems.

Several big data systems like Apache Spark are already able to access data in different types of DBMS; yet, the challenge which we address in this paper is that data for answering a single query is stored in several DBMS of various types. In addition, we also use schema mappings to perform a logical data integration, i.e., resolving the heterogeneities which are caused by different schema structures and semantics (e.g., different labels for types and attributes). Furthermore, our approach also handles queries that cannot be answered just by a union of the sources, i.e., our system performs additional query processing (e.g., join of source data) that cannot be handled by any system separately.

Our system SQRE (Scalable Query Rewriting Engine) executes the generated subqueries on each data store, retrieves the query results, executes the parts of the query not covered by a source, and creates the final integrated results. We use Apache Spark to execute the queries as it provides many connectors to various DBMS and enables with its Dataset abstraction an easy integration of the query results. We also push down selection predicates to the data sources to optimize query execution and to reduce the amount of data that has to be loaded.

The problem of processing queries that span multiple heterogeneous data stores and integrating the query results has been addressed recently in multistore (or polystore) systems [3,7,9]. These systems usually focus on the optimization and the efficient execution of queries spanning multiple systems; in contrast, our logical approach focuses on the heterogeneities caused by different query and schema languages as well as different schema structures; logical optimization is only a side effect of the approach. Especially, we study query rewriting for queries expressed in JSONiq, a query language for JSON data, which is becoming the data format for NoSQL systems and data exchange settings.

Our main contributions in this paper are as follows:

- We propose a query rewriting engine, which supports unified query interface over heterogeneous data stores in data lakes.
- We define a system-independent, logical query language to identify relevant data stores based on the logical schema mappings.
- We show experimentally the practicality, scalability, and efficiency of our proposed system over two use cases covering six real world data sets.

The remainder of the paper is organized as follows. In Sect. 2, we present first the overall architecture and then discuss in detail the major components as well as the logical approach for query rewriting and data integration of our system. The evaluation results are reported in Sect. 3, before we introduce related works in Sect. 4 and conclude the paper in Sect. 5.

## 5 Conclusion

We presented SQRE, a spark-based query rewriting engine for unified query processing over heterogeneous data stores in data lake systems. We designed a general query parser that interprets queries in different formats into a unified logical representation. In particular, SQRE supports JSONiq queries and later translates them into executable queries for various relational and NoSQL systems. Moreover, our approach analyzes the predicates and rewrites them from integrated schema to source schemas using nested schema mappings. In SQRE,

we developed several translators that reformulate the original queries from internal representations into executable queries for SQL systems, MongoDB, Neo4j, and XML files. Further systems and query languages can be supported by implementing new translators and plugging them into our extensible architecture.

We have shown experimentally the usefulness and efficiency of our approach compared to a baseline approach through real world datasets. We have also shown that even with complex data integration scenarios, the query rewriting time of SQRE is scalable with increasing query complexity.

For future work, we will extend our system to support more query languages (e.g., Cypher, XQuery, etc.) and more NoSQL stores. To improve the system performance with large data sets, we want to explore the benefits of the distributed query processing. We are confident that the logical representation used in SQRE is well-defined basis for applying further query optimization techniques.

---

## TITLE: Seamless Decision-Making in the Big Data Era: A Modular Approach to Integrating IoT, Cloud Computing, and Data Lakes

Mohamed Zemmouri 1,* , Fatma Zohra Laalam 1 , Okba Kazar 4,5 , Yassine Himeur 2 , Adel Oulefki 3 , Chahrazad Toumi 1 , Wathiq Mansoor 2 , and Shadi Attala 2

##Publication year
2023

##Abstract
The integration of big data with cutting-edge technologies like IoT and Cloud Computing has profoundly influenced various aspects of modern life, including everyday service processes. To facilitate data-driven decision-making, big data analytics-focused on identifying patterns, trends, and correlations in large data sets-is indispensable. While traditional statistical techniques are useful, new tools and infrastructures such as Hadoop, Spark, and NoSQL are essential to tackle big data challenges. However, modifying the existing environment can be impractical, especially in production settings, due to the need for significant investment and specialized expertise. This article presents a novel computational paradigm that adds a decisionmaking layer atop existing systems for data analysis, eliminating the need to alter the environment. The approach treats the current information system as a data lake and introduces a new data recovery layer through web services, drawing inspiration from big data technologies like MapReduce. This system offers the advantage of being modular, reusable, and universally compatible, making it an independent decisional framework that can work with any information system or data source.

##keywords
Big Data, Data Analysis, Data Science, Paradigm, Design Pattern.

## I. INTRODUCTION

WITH the democratization of the Internet and the emergence of connected devices, the amount of data generated daily has exponentially increased, creating a new era of data-driven decision-making [8], [5]. Human-generated and machine-generated data are growing at a rate ten times that of business data, creating a vast amount of data that needs to be stored, processed, and analyzed [11], [1]. This environment has led to the development of Big Data and its adjacent technologies, such as the Internet of Things (IoT) and Cloud Computing [16], [17].

Big Data is characterized by its massive volume, velocity, and variety [26], [29]. Dealing with such vast amounts of data poses several challenges in terms of storage, processing, and analysis [28]. Platforms like Apache Hadoop and Apache Spark have been built as part of an ecosystem to solve these issues. [27], [30]. This ecosystem leverages innovative analytics methods to handle and analyze massive datasets, which has led to the development of a new field of study known as Big Data Analytics [23], [25].

The growth in data generation has made Big Data Analytics a crucial component of modern data-driven decision-making [6]. By offering insights into customer behavior, detecting fraud, and forecasting future trends, big data analytics has revolutionized a number of industries, including healthcare, banking, and e-commerce[14]. With the continued growth of data, Big Data Analytics will play an increasingly important role in decision-making processes, making it necessary for businesses to develop a sound understanding of this technology and its applications [9].

In today's professional world, information systems often contain vast amounts of data that are diverse and complex [21], making it difficult to analyze using traditional methods. Our objective is to develop an analysis system that takes inspiration from Big Data techniques but doesn't directly use them. This system should provide users with an easy-to-use dashboard that allows them to perform extensive analysis across multiple data sources, regardless of their differences, in a seamless and transparent manner. To achieve this goal, we provide a decisional overlay over the data sources that avoid theirr information systems' logic layer, as it is only responsible for reading data. We have designed a modular architecture based on three main components: security, data, and system core. Our study contributes to the field of big data analytics by offering a novel approach that overcomes the limitations of traditional analysis methods. Specifically, our contributions are:

- Creating a unified decision-making layer that combines data from various sources, providing a comprehensive view of the analyzed system.

- Implementing a dedicated component for global security management, ensuring data privacy and protection against potential threats.
- Optimizing the data retrieval layer by utilizing the MapReduce paradigm and Web Services, resulting in faster and more efficient data processing.
- Utilizing the existing platform without the need for any major changes in the environment, reducing the investment and technical expertise required.
- Introducing the concept of task delegation from critical resources, such as servers, to clients, enabling more efficient resource utilization and better system performance.

The remainder of this paper is structured as follows: Section II provides a detailed description of the research problem. Section III outlines the proposed solution's architecture. In Section IV, we present the computer simulation results and discuss their implications. Finally, the concluding section summarizes the advantages of the proposed method.

## V. CONCLUSION

The goal of this work is to develop an analytical system that can process massive amounts of conventional data in a manner akin to Big Data in professional settings, as was previously indicated in the issue description. The proposed design can be described as follows: (i) outsourced services in which the entire project can be considered as an outsourcing of the decision-making service; (ii) modular design which helps optimize the work and facilitate reuse and thus the system is broken down into modules; and (iii) decentralization and task delegation:, which alleviate the burden on shared resources and engage individual resources, tasks are decentralized and delegated.

Once the design was defined, we implemented it as an operational solution using a variety of tools. We also described the deployment environment for our solution and highlighted the experiences and lessons we learned during the entire process, which we consider to be valuable outcomes. Some noteworthy achievements include: (i) implementing the MRxQ algorithm and comparing its performance to standard execution. Our results showed that the algorithm greatly enhances response time, especially as data size increases. However, we found that this gain in response time reaches a threshold beyond which further improvement is limited; and (ii) decentralizing data processing to the client side, which freed up shared resources on servers and eliminated potential blocking points. This approach also allowed for the customization of result presentations at the client level;

In conclusion, we have largely achieved our objectives. However, as with all human endeavors, there is room for improvement. We believe that there are opportunities for further enhancements, such as the automation of the data preparation phase.

---

## TITLE: Spatial big data architecture: From Data Warehouses and Data Lakes to the LakeHouse

Soukaina Ait Errami a , ∗ , Hicham Hajji a , Kenza Ait El Kadi a , Hassan Badir b

##Publication year
2023

## abstract

The construction of systems supporting spatial data has experienced great enthusiasm in the past, due to the richness of this type of data and their semantics, which can be used in the decision-making process in various fi elds. Thus, the problem of integrating spatial data into existing databases and information systems has been addressed by creating spatial extensions to relational tables or by creating spatial data warehouses, while arranging data structures and query languages by making them more spatiallyaware. With the advent of Big Data, these conventional storage and spatial representation structures are becoming increasingly outdated, and required a new organization of spatial data. Approaches based on distributed storage and data lakes have been proposed, to integrate the complexity of spatial data, with operational and analytical systems which unfortunately quickly showed their limits. Recently the concept of lakehouse was introduced in order to integrate, among other things, the notion of reliability and ACID properties to the volume of data to be managed. This new data architecture is a combination of governed and reliable Data Warehouses and fl exible, scalable and cost-effective Data Lakes.

In this paper, we present how traditional approaches of spatial data management in the context of spatial big data have quickly shown their limits. We present a literature overview of these approaches, and how they led to the Data LakeHouse. We detail how the Lakehouse paradigm can be used and extended for managing spatial big data, by giving the different components and best practices for building a spatial data LakeHouse architecture optimized for the storage and computing over spatial big data.

## 1. Introduction

In the era of the internet and location-aware devices, a vast amount of data is generated daily, and a significant proportion of it is location-related. The processing of these spatial data streams and batches requires highly scalable and high-performing data management systems. To address these challenges, Spatial Big Data technologies have emerged, providing distributed and parallel systems. In the past, decision support systems relied on Spatial Data Warehouses to combine traditional and spatial analysis. However, due to the growing need for storing and querying large datasets, the data required, and the questions to ask were often unknown before the architecture implementation. Data Lakes emerged as a cost-effective solution to democratize data access and address the variety, volume, and computing requirements of Spatial Big Data. Despite being a significant breakthrough, Data Lakes have exhibited some consistency issues, ranging from data-related issues to system-related ones, leading to the emergence of the Data LakeHouse. The primary goal of the Data LakeHouse system is to provide a unified platform for all enterprise data workloads, without compromising the governance and performance of Data Warehouses or the fl exibility and cost-effectiveness of Data Lakes. This paper outlines the challenges facing Spatial Big Data throughout the data system maturing phases and details the components for building a Data LakeHouse optimized for spatial data. The main contributions in this paper can be highlighted as follows:

- Analysis of the limitations of the current traditional approaches for managing Spatial Big Data, mainly Spatial Data Warehouse and Spatial Data Lake.
- Analysis of open-source systems supporting the LakeHouse architecture such as Apache Iceberg, Hudi, and Delta Lake, and how they can answer new challenges posed by spatial big data.
- We present a reference architecture for extending the Data LakeHouse with spatial capabilities.
- We present some preliminary Data LakeHouse performance metrics on storage and processing.

## 5. Conclusion

With the expansion of big amount of data, traditional Data Warehouses cannot offer the fl exibility to deal with all data types neither to scale effectively their storage. On the other hands Data Lake presented a suitable solution to deal with the massive growing amount of this data. Except that the consistency issues of the Data Lake were an obstacle facing the good governance practices. Thus, the Data LakeHouse emerged as the new paradigm aiming to resolve all these issues. In this paper we presented the motivation behind the adoption of Data LakeHouse, its relation with Data Warehouses and lakes and the components to build a Data LakeHouse architecture optimized for Spatial Big Data.

Managing Spatial Big Data on the LakeHouse enables unlocking the full spatial dataset potential without compromising the governance and reliability. Some open research directions for improving the Spatial LakeHouse landscape are:

- A native spatial storage format: by extending the open-source storage formats such as Parquet, Avro and ORC, which will ease the management of spatial big data on the LakeHouse.
- Development of native spatial indexes to handle both real-time and batch datasets
- The exploitation of the Data LakeHouse system in the creation of a single source of geospatial data repository as the case of the STAC specification [45].
---


## TITLE: STORAGE STRUCTURES IN THE ERA OF BIG DATA: FROM DATA WAREHOUSE TO LAKEHOUSE

MOHSSINE BENTAIB 1 , ABDELAZIZ ETTAOUFIK 2 , ABDERRAHIM TRAGHA 3 , MOHAMED AZZOUAZI 4

##Publication year
2024

## ABSTRACT

The amount of data that is available to enterprises today comes from many different sources, including social networks, sensors, and IoT devices. In order to discover trends, draw conclusions, produce projections, and make informed decisions, this enormous amount of data needs to be stored across a variety of platforms for processing and analysis. The capacity of conventional EDs is surpassed by the quantity and quality of data that  is  being  collected.  To  accomplish  this,  businesses  with  current  data  warehouses  must  pick  a storage architecture with enough storage and processing power for this kind of data. They must choose one of the following options: The data warehouse can either (i) develop into a big data warehouse, (ii) be replaced by a data lake, or (iii) be combined with a data lake to create a data LakeHouse. In this article, we aim to find the best choice for the storage of varied and voluminous data. To do this, we examine the big data warehousing literature. After doing a comparison of the various architectures put forth, we draw a conclusion outlining the optimum storage practice.

##Keywords

Data Warehouse, Big Data, Big Data Warehouse, Data Lake, Data Lakehouse

##1. INTRODUCTION
Huge  volumes  of  heterogeneous  data  have  been produced as a result of the widespread usage of new technologies [1]. Organizations must  deal with massive amounts of data from many sources and in various  formats  as  a  result.  In order  to create predictions,  come  to  conclusions,  and  take  wise judgments,  they  must  process  and  analyze  all  the data, which necessitates a platform with the required capabilities  and  features  [2].  Data  warehouses  are utilized  mostly  with  massive  datasets  produced  in various  legacy  systems  using  relational  data,  and they  constitute  a  traditional  domain  of  relational databases [3]. They get analytical data via analysis and  reporting  tools  and  are  fed  from  various  data sources via ETL. Because of the limitations imposed by  data  warehouses,  analytical  tools  fall  short  of what analysts demand in terms of high availability and quick responses to queries [4].

Due to these restrictions, organizations are forced to move  to  a  big  data  platform  that  offers  unlimited storage  capacity  and  supports  a  variety  of  data formats.

Because  of  this  obligation,  we  ask  ourselves  the following questions: What role will the data warehouse play in the age of Big Data? Should the company permanently stop using the data warehouse? What is the impact of investing in a data warehouse even if the organization already has a big data platform? An in-depth analysis of the different solutions offered by companies that currently have a data warehouse is necessary to find the answers to these questions.

Numerous architectures are found in the literature. The  data  warehouse  has  been  replaced  by  the  big data warehouse, the data warehouse has been abandoned in favor of the data lake, and the two have been combined into a new tool called the LakeHouse [5].

In this paper, we answer these questions by presenting a comparative study of the new architectures  that  are  replacing  the  traditional  data warehouse.

The  state  of  the  art  for  the  data  lake,  large  data warehouse,  and  LakeHouse  is  presented  in  the following section. In the third section, we outline the many designs that outline excellent storage methods and offer a comparison of their individual traits. In section  4  follows  we  provide  a  synthesis,  and  we discuss  open  research's  difficulties  and  potential future prospects in the fifth section. The final section is when we put our labor to rest.

## 5. OPEN RESEARCH CHALLENGES AND FUTURE DIRECTIONS

Big Data has properties that are beyond the scope of conventional  approaches,  especially  when  data  is kept in a distributed setting that necessitates the use of  parallel  processing  tools  like  the  MapReduce paradigm. Due to these restrictions, new methodologies with specific features and enhanced capabilities have emerged, such Hadoop Distributed File  System  (HDFS),  Cassandra,  and  MongoDB. High availability and large-scale data processing are also capabilities of these scalable systems. Processing is a crucial component of the Big Data universe at the storage stage. It entails processing the data necessary to get it ready for the following step. New processing technologies like Hadoop and Spark have  been  created  in  response  to  the  functional limitations of conventional systems. These solutions allow businesses to swiftly, effectively, and concurrently process enormous amounts of data.

The  analysis  phase  is  the  last  step,  where  data analysis is done in order to make informed conclusions.  In  this  context,  a  variety  of  analysis tools  are  employed,  including  capabilities  that  let analysts create interactive dashboards  that give businesses a holistic view of the market.

Researchers are faced with a challenge while trying to improve any of the three phases outlined above. Although big data analysis also uses machine learning and artificial intelligence (AI), we intend to propose a new architecture for the optimal storage, processing and processing of big data. To do this, we intend to create an intelligent architecture that merges LakeHouse's capabilities with machine learning  and artificial intelligence.  Our vision  will enable AI-based incremental partitioning of LakeHouse data and metadata.

## 6. CONCLUSION
The data warehouse continues to play a key role in business intelligence (BI), even as big data technologies drive data processing. As a result, it is possible to create a variety of hybrid designs, such as Data LakeHouse, by combining Big Data technologies with traditional data warehouses. This new technology integrates two key components, data processing and BI maturity.

We  have  discussed  various  big  data  storage  and processing  architectures.  We  also  compared  the main  characteristics  of  the  different  architectures. Our  comparative  study  allows  us  to  conclude  that data LakeHouse today represents the best choice for companies  needing  to  process,  store  and  analyze enormous  quantities  of  raw,  structured  and  semistructured data.

In  our  experimental  study,  we  demonstrated  the remarkable  impact  of  data  partitioning  on  system performance. We also studied two types of partitioning techniques, namely static and incremental partitioning.

In our future work, we intend to include optimization techniques  to  improve  the  performance  of  Data LakeHouse  which  may  degrade  as  a  result  of  the exponential increase in the volume of data injected into Data LakeHouse.

---
## TITLE: Textual Data Analysis from Data Lakes

Pegdwend´ e N. Sawadogo ( B )

##Publication year
2019

##Abstract

Over the last decade, the data lake concept has emerged as an alternative to data warehouses for data storage and analysis. Data lakes adopt a schema-on-read approach to provide a flexible and extendable decision support system. In absence of a fixed schema, data querying and exploration depend on a metadata system. However, existing works on metadata management in data lakes mainly focus on structured and semi-structured data, with little research on unstructured data. Thence, we propose in this thesis a methodological approach to enable textual data analyses from data lakes through an efficient metadata system.

##Keywords

Data lake,Metadata management, Olap

## 1 Introduction and Context

Since the beginning of the 21 st century, we observe a tremendously growth of data production in the world. So-called big data give great opportunities to organizations. Thus, in the marketing domain, big data can be used to improve customer retention through customer profiles identification. Similarly, big data may serve to improve the efficiency in industries and health-care through anomaly prediction. However, such applications require overcoming the challenges posed by the volume, variety and velocity of big data.

To address these challenges, several adaptations of the data warehouse concept were proposed. That is, some approaches make it possible to ensure scalability in data warehouses and others support fast data. Nevertheless, data warehouses remain challenged by unstructured data. Yet, the majority of big data is unstructured [13]. In addition, data warehouses hardly support heterogeneous and changing data because of their fixed schema.

More recently, the data lake concept was proposed to address these issues. A data lake is a large repository of raw and heterogeneous data from which various analyses can be performed [4]. Data lakes adopt a schema-on-read approach to ensure flexibility and to avoid data loss. That is, ingested data do not follow any fixed schema. Therefore, data access and querying depends on a metadata system.

However, existing works on metadata management in data lakes mostly focus on structured and semi-structured data [2,7,8,11], with little research on unstructured data. Furthermore, a substantial part of the literature restricts data lake usage to data scientists [5,10,12]. Thus, according to this conception, only on-demand analyses can be performed from a data lake. Therefore, opening a data lake to industrialized analyses is an open issue.

## 5 Conclusion and Future Prospects

Our first results are promising. However, they remain theoretical for now. Thence, the next step focuses on implementing our metadata system and test it on a real-life case. Thus, we could experimentally evaluate our proposition on the basis of enabled analyses.

Afterwards, we envisage to propose, from our metadata model, a methodological approach to setup industrialized text analyses from a data lake. This may be done through the conception of an efficient OLAP-like analysis platform dedicated to business users.

However, this task implies three key issues. The first is about adapting TextOLAP measures, as most text-OLAP measures were proposed in the context of data warehouses. Some adaptations seem necessary to match with our metadata model. The context of data lakes also induces a need of dynamic dimensions and hierarchies, instead of (mostly) static ones in data warehouses, which is another key challenge. Eventually, our analysis platform would need to be scalable. Thus, we should identify the most efficient storage modes and engines for textual data.

---

## TITLE The Data Lake Architecture Framework: A Foundation for Building a Comprehensive Data Lake Architecture

Corinna Giebler 1 , Christoph Gröger 2 , Eva Hoos 2 , Rebecca Eichler 1 , Holger Schwarz 1 , Bernhard Mitschang 1

##Publication year
2021

##Abstract
During recent years, data lakes emerged as a way to manage large amounts of heterogeneous data for modern data analytics. Although various work on individual aspects of data lakes exists, there is no comprehensive data lake architecture yet. Concepts that describe themselves as a 'data lake architecture' are only partial. In this work, we introduce the data lake architecture framework. It supports the definition of data lake architectures by defining nine architectural aspects, i.e., perspectives on a data lake, such as data storage or data modeling, and by exploring the interdependencies between these aspects. The included methodology helps to choose appropriate concepts to instantiate each aspect. To evaluate the framework, we use it to configure an exemplary data lake architecture for a real-world data lake implementation. This final assessment shows that our framework provides comprehensive guidance in the configuration of a data lake architecture.

##Keywords
Data Lake; Data Lake Architecture; Framework

## 1 Introduction

In recent years, data lakes emerged as platforms for big data management and analyses [Ma17b]. They are used in various domains, e.g., healthcare [RZ19] or air traffic [Ma17a], and enable organizations to explore the value of data using advanced analytics such as machine learning [Ma17b]. To this end, data of heterogeneous structure are stored in their raw format to allow analysis without predefined use cases.

However, implementing a data lake in practice proves challenging, as no comprehensive data lake architecture exists so far. Such an architecture specifies, e.g., the data storage or data modeling to be used. In this work, we define comprehensive as ' all necessary architectural aspects of a data lake and their interdependencies are covered '. An architectural aspect is a perspective on a data lake architecture, such as data modeling or infrastructure. To define a comprehensive data lake architecture, multiple such aspects have to be considered. While some concepts are called 'data lake ( reference ) architecture' (e.g., in [Sh18]) by their authors, they only focus on a subset of necessary architectural aspects.

In addition, the possible applications of data lakes are very diverse. A data lake might only process batch data [Ma17a] or both batch data and data streams [MM18]. It might be limited to data scientists and advanced analytics [ML16] or additionally support traditional data warehousing [Ma17b]. Depending on the kind of data in the data lake and on the scenario in which it is used, different requirements are posed on a data lake architecture. Thus, defining a generic and universally applicable data lake architecture proves difficult. Instead, we propose the data lake architecture framework (DLAF) as a foundation for comprehensive data lake architecture development. Architecture frameworks exist in varoius domains, e.g., the Zachman framework [Za87] provides both guidance and a methodology to define an appropriate information system architecture. However, in the context of data lakes, we are not aware of such an approach. Fig. 1 depicts the connection between the framework and a configured data lake architecture. The guidance provided by the DLAF is threefold: 1) It defines the architectural aspects necessary for a data lake, e.g., data modeling, 2) it associates each aspect with a set of possible implementation concepts, e.g., data vault [Li12], and 3) it provides a methodology that helps picking appropriate concepts for a data lake architecture while also considering interdependencies between aspects, e.g., between data modeling and infrastructure. A data lake architecture derived from the framework can be understood as a DLAF instance. In this paper, we make the following contributions:

- From a categorization of literature on data lakes, we identify their necessary architectural aspects. We use these aspects to build the data lake architecture framework, which serves as a support for the configuration of a comprehensive data lake architecture.
- We present a methodology as part of the data lake architecture framework that guides the development of a specific data lake architecture from the aspects in the framework.
- We assess the data lake architecture framework with regards to its comprehensiveness and applicability. This assessment shows that the data lake architecture framework is not missing any important aspects for data lakes, and that its methodology is applicable in practice to configure a comprehensive data lake architecture.

- We show how the framework can be used to configure a comprehensive data lake architecture, to evaluate existing data lake architectures, and to extend incomprehensive data lake architectures to become comprehensive.

The remainder of this work is structured as follows: Sect. 2 discusses related work on data lake architectures and architecture frameworks. Sect. 3 describes the developed DLAF, before Sect. 4 presents the contained methodology for its use. Sect. 5 assesses the framework by analyzing existing data lake implementations and by defining an exemplary comprehensive data lake architecture for real-world industry. Finally, Sect. 6 concludes the work.

## 6 Conclusion and Future Work

While various concepts refer to themselves as data lake architectures, none of them covers all aspects necessary for a functional data lake. Thus, we developed the data lake architecture framework (DLAF) to support the definition of a scenario-specific data lake architecture. The DLAF consists of nine data lake aspects to be considered, their interdependencies, and a methodology to choose appropriate concepts for each aspect. The evaluation showed that the DLAF can be applied in two ways: 1) It can be used to identify missing aspects in existing data lake implementations and provide pointers towards re-design of the architecture. Our discussion of existing real-world data lake architectures showed that important aspects had been forgotten during the architecture's definition, such as metadata management. We showed that the DLAF supports not only the evaluation of existing data lake architectures to identify such shortcomings, but also their extension towards comprehensiveness. 2) The DLAF can be used to define a novel comprehensive data lake architecture. We used it in a real-world industry case. The DLAF enables a structured, step-by-step decision process, while providing decision support for choosing appropriate concepts. As interdependencies between aspects are considered by the DLAF methodology, the concepts of the resulting data lake architecture are well-matched to each other.

For future work, we plan to further apply and evaluate the developed data lake architecture in practice. Furthermore, the implications of the DLAF for an enterprise-wide usage across multiple data lakes should be investigated.
