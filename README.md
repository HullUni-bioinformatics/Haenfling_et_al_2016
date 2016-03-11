# Haenfling_et_al_2016
Data processing workflow and supplementary data for __Haenfling et al. 2016 - Environmental DNA metabarcoding of lake fish communities reflects long-term data from established survey methods__.

##Content:
 - Supplementary data:
  - reference sequences used in analyses in Genbank format ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/reference_DBs))
  - adapter sequences used for 12S fragment ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/adapters))
  - SRA accession numbers for raw Illumina data ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv))
 - Instructions on how to set up all dependencies for data processing/analyses
 - Data processing workflow as Jupyter notebooks


##Introduction

Illumina data was processed (from raw reads to taxonomic assignments) using the [metaBEAT](https://github.com/HullUni-bioinformatics/metaBEAT) pipeline ([version 0.8](https://github.com/HullUni-bioinformatics/metaBEAT/releases)). The pipeline relies on a range of open bioinformatics tools. To facilitate full reproducibility of our analyses we have deposited a self contained docker images with all dependencies [here](https://hub.docker.com/r/chrishah/metabeat/).

##Setting up the environment

In order to retrieve supplementary data (reference sequences etc.) start by cloning this repository to your current directory:
```
git clone --recursive https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016.git
```

In order to make use of our self contained analysis environment you will have to install [Docker](https://www.docker.com/) on your computer. Docker is compatible with all major operating systems. See the [Docker documenation](https://docs.docker.com/) for details. On Ubuntu installing Docker should be as easy as:

```
sudo apt-get install docker.io
```

Once Docker is installed you can enter the environment by typing, e.g.:
```
docker run -i -t --net=host --name metaBEAT -v $(pwd):/home/working chrishah/metabeat:v0.8 /bin/bash
```

This will download the metabeat v0.8 image (if it's not yet present on your computer) and enter the 'container', i.e. the self contained environment (Note that `sudo` may be necessary in some cases). With the above command the container's directory `/home/working` will be mounted to your current working directory (as instructed by `$(pwd)`), in other words, anything you do in the container's `/home/working` directory will be synced with your current working directory on your local machine. 

##Data processing workflow

Raw illumina data has been deposited with Genbank (BioSample accessions: SAMN04530423-SAMN04530510) - SRA accession numbers see [here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv). Before following the workflow below, you'll need to download the raw reads from SRA. Our workflow expects that the raw Illumina data is present in a directory `raw_reads` at the base of the repository structure and that the file are named according to the following convention:

Files should be named 'sampleID-marker', followed by '_1' or '_2' to identify the forward/reverse read file respectively. sampleID must corresponds to the first column in the file `Sample_accessions.tsv` [here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv), marker is either '12S' or 'CytB'.

To download the raw read data you can follow the steps in [this]() notebook.

So, ideally running the following:
```
ls -1 ./raw_reads | head
```

should yield something like:
```
Bassenthwaite_01-12S_1.fastq.gz
Bassenthwaite_01-12S_2.fastq.gz
Bassenthwaite_01-CytB_1.fastq.gz
Bassenthwaite_01-CytB_2.fastq.gz
Bassenthwaite_02-12S_1.fastq.gz
Bassenthwaite_02-12S_2.fastq.gz
Bassenthwaite_02-CytB_1.fastq.gz
Bassenthwaite_02-CytB_2.fastq.gz
Bassenthwaite_03-12S_1.fastq.gz
Bassenthwaite_03-12S_2.fastq.gz
``` 


