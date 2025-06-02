Y1000 file repo test

Current Data Release:
V1.0

How to access data:
...
git clone https://github.com/HittingerLab/Y1000_Repo.git
bash download_data.sh
bash prepare_data.sh
...

Description of files:

All downloaded data will be stored in Y1000_Repo/data/original

Soft links to the raw files will be in Y1000_Repo/data/BySpecies and Y1000_Repo/data/ByDataType

BySpecies: All files corresponding to the Species ID in one folder

ByDataType: All files of that DataType (genome,pep,cds,gff3, or gtf) in one folder

A table with file paths using the soft links in Y1000_Repo/data/ByDataType will be automatically genered as:
File_paths.tsv

Description of Data Releases:
V1.0 Exact copy of figshare data accompanying Opulente et al. 2024
Can be accessed directly at https://data.glbrc.org/shared_collections/341/shared?ak=8c2aa328e739ae78d0c08e8711b98a0e

The Data in the original figshare can be accessed below:

|Dataset|Figshare|
|-|-|
|Genomes|[Genomes and annotations v2](https://plus.figshare.com/articles/dataset/Genome_Analyses_of_1_154_budding_yeasts/22802147)|
|Annotations (gff3)|[Genomes and annotations v2](https://plus.figshare.com/articles/dataset/Genome_Analyses_of_1_154_budding_yeasts/22802147)|
|Protein AA sequences|[Genomes and annotations v2](https://plus.figshare.com/articles/dataset/Genome_Analyses_of_1_154_budding_yeasts/22802147)|
|Orthogroups|[Figshare Genome analysis](https://plus.figshare.com/articles/dataset/Genome_Analyses_of_1_154_budding_yeasts/22781714?backTo=/collections/Genomic_and_ecological_factors_shaping_specialism_and_generalism_across_an_entire_subphylum/6714042)|
|Phenotypic data |[Figshare Phenotyping Data for Saccharomycotina yeasts](https://plus.figshare.com/articles/dataset/Phenotyping_Data_for_Saccharomycotina_Yeasts/22840730?backTo=/collections/Genomic_and_ecological_factors_shaping_specialism_and_generalism_across_an_entire_subphylum/6714042)|
|Environmental data|NA|

