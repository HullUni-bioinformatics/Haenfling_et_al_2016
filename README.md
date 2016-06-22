# Haenfling_et_al_2016
Data processing workflow and supplementary data for __Haenfling et al. 2016 - Environmental DNA metabarcoding of lake fish communities reflects long-term data from established survey methods. _[Molecular Ecology](http://onlinelibrary.wiley.com/doi/10.1111/mec.13660/abstract). DOI: 10.1111/mec.13660___.

Release 1.0 of this repository has been archived: [![DOI](https://zenodo.org/badge/19905/HullUni-bioinformatics/Haenfling_et_al_2016.svg)](https://zenodo.org/badge/latestdoi/19905/HullUni-bioinformatics/Haenfling_et_al_2016)

##Contents
 - Supplementary [data](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data):
  - reference sequences (curated reference databases) used in analyses in Genbank format ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/reference_DBs))
  - adapter sequences used for 12S fragment ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/adapters))
  - SRA accession numbers for raw Illumina data ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv))
  - Per sample read counts ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/sample_read_stats))
  - Taxonomic assignment results ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/assignment_results))
  - R scripts used to produce the figures in the paper ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/supplementary_data/R_scripts))
 - Instructions on how to set up all dependencies for data processing/analyses
 - Data processing workflow as Jupyter notebooks


##Introduction

To facilitate full reproducibility of our analyses we provide Jupyter notebooks illustrating our workflow and all necessary supplementary data in this repository.

Illumina data was processed (from raw reads to taxonomic assignments) using the [metaBEAT](https://github.com/HullUni-bioinformatics/metaBEAT) pipeline ([version 0.8](https://github.com/HullUni-bioinformatics/metaBEAT/releases)). The pipeline relies on a range of open bioinformatics tools, which we have wrapped up in a self contained docker image which includes all necessary dependencies [here](https://hub.docker.com/r/chrishah/metabeat/).

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

This will download the metaBEAT v0.8 image (if it's not yet present on your computer) and enter the 'container', i.e. the self contained environment (Note that `sudo` may be necessary in some cases). With the above command the container's directory `/home/working` will be mounted to your current working directory (as instructed by `$(pwd)`), in other words, anything you do in the container's `/home/working` directory will be synced with your current working directory on your local machine. 

##Data processing workflow

Raw illumina data has been deposited with Genbank (BioProject: PRJNA313432; BioSample accessions: SAMN04530423-SAMN04530510; SRA accessions: SRR3359939-SRR3360124) - see sample specific accessions [here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv). Before following the workflow below, you'll need to download the raw reads from SRA. To download the raw read data you can follow the steps in [this](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/raw_reads/How_to_download_from_SRA.ipynb) notebook.


With the data in place you should be able to __fully rerun/reproduce our analyses__ by following the steps outlined in the Jupyter notebooks that we provide for the [12S](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/12S/12S.ipynb) and [CytB](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/CytB/CytB.ipynb) datasets.

The workflow illustrated in the notebooks assumes that the raw Illumina data is present in a directory `raw_reads` at the base of the repository structure and that the files are named according to the following convention:
'sampleID-marker', followed by '_1' or '_2' to identify the forward/reverse read file respectively. sampleID must corresponds to the first column in the file `Sample_accessions.tsv` [here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/blob/master/supplementary_data/Sample_accessions.tsv), marker is either '12S' or 'CytB'.
