# Overview
This repo contains the code to reproduce all of the analyses done in Ziyu Wang and Andy Saiz's final project for 20.440 spring 2023.

The assembly datasets are available on: [NIH BioProject](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA544527)

The metabolomics datasets can be access either online or downloaded on: [Metabolomic Workbench](https://www.metabolomicsworkbench.org/data/DRCCMetadata.php?Mode=Study&DataMode=ProjectData&StudyID=ST001192&StudyType=MS&ResultType=5#DataTabs)

# Data
All of the code is in the `data/` folder:
The Whole Genome Sequencing data from 3062 bacterial isolates were collected from fecal samples from human fecal microbial transplant donors in the Boston area. Then, [the Alm lab](https://web.mit.edu/almlab/) did gene assembly and annotion to the raw WGS data (details can be found in their [paper](https://www.nature.com/articles/s41591-019-0559-3#data-availability)). The assembly data is stored in the `Assembly_data` folder (have to download thousands of folder one by one, still working on scipts to automatically do that).

The stool Metabolites were profiled using hydrophilic interaction liquid chromatography in positive and negative ion mode coupled with forward and reverse-phase liquid chormatography (more details can be found in their [paper](https://www.nature.com/articles/s41591-019-0559-3#data-availability)). The stool metabolite data can be accessed online so we are not uploading it in any folder.

# Folder Structure

### Data
* `assembly`: all of the assembly data
* `figures`: all of the figures generated from the analyses

### Source Code
All of the code is in the `src/` folder:
* `analysis`: all of the scripts for doing analysis
* `data_retrival`: scripts for getting assembly datasets stored in different locations online

# Installation

All the code should be running under python 3.9 virtual environment. (still in the processing for setting up a yml file)
