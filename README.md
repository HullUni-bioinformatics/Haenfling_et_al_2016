# Haenfling_et_al_2016
Data processing workflow and supplementary data for Haenfling et al. 2016 - Environmental DNA metabarcoding of lake fish communities reflects long-term data from established survey methods.

__Content__:
 - Instructions on how to set up all dependencies for data processing/analyses
 - Data processing workflow as Jupyter notebooks
 - Supplementary data:
  - reference sequences used in analyses in Genbank format ([here](https://github.com/HullUni-bioinformatics/Haenfling_et_al_2016/tree/master/reference_DBs))

##Introduction

Illumina data was processed (from raw reads to taxonomic assignments) using the [metaBEAT](https://github.com/HullUni-bioinformatics/metaBEAT) pipeline ([version 0.8](https://github.com/HullUni-bioinformatics/metaBEAT/releases)). The pipeline relies on a range of open bioinformatics tools. To facilitate full reproducibility of our analyses we have deposited a self contained docker images with all dependencies [here](https://hub.docker.com/r/chrishah/metabeat/).

##Setting up the environment

In order to make use of our self contained environment you will have to install [Docker](https://www.docker.com/) on your computer. Docker is compatible with all major operating systems. See the [Docker documenation](https://docs.docker.com/) for details. On Ubuntu installing Docker should be as easy as:

```
sudo apt-get install docker.io
```

Once Docker is installed you can enter the environment by typing, e.g.:
```
docker run -i -t --net=host --name metaBEAT -v $(pwd):/home/working chrishah/metabeat:v0.8 /bin/bash
```

This will download the metabeat v0.8 image (if it's not yet present on your computer) and enter the 'container', i.e. the self contained environment (Note that `sudo` may be necessary in some cases). With the above command the container's directory `/home/working` will be mounted to your current working directory (as instructed by `$(pwd)`), in other words, anything you do in the container's `/home/working` directory will be synced with your current working directory on your local machine. 

##Data processing workflow

Raw illumina data has been deposited with Genbank (BioSample accessions: SAMN04530423-SAMN04530510).


