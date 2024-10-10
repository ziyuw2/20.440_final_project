# Overview
This repo contains Ziyu Wang's contribution to the analyses done in Ziyu Wang and Andy Saiz's final project for 20.440 spring 2023.

The raw datasets of the Tanzanian and the Netherland population are available on: [Gitlab: Xavier-lab](https://gitlab.com/xavier-lab-computation/public/fg300tanzania)

# Data
* The processed data are stored in the `Data/` folder
* The raw data can be found at [Gitlab: Xavier-lab](https://gitlab.com/xavier-lab-computation/public/fg300tanzania/-/tree/master/data)

# Folder Structure

### Data
* All of the processed data in the format of `.xlsx`

### Code
* [preprocess.R](https://github.com/ziyuw2/20.440_project/blob/bd612ff60badae21bcb1ef9d8a142e0ab96235b4/Code/preprocess.R) is used to convert the R objects in the raw data to `.xlsx` file that we worked with for our analysis.
* [wang_ziyu_fig45.ipynb](https://github.com/ziyuw2/20.440_project/blob/750bc3d9002a545c664b4bfa876dbf5881c82f70/Code/wang_ziyu_fig45.ipynb) is used to do the analysis in Fig 4 and 5 in our report and generate the correcponding figures.
* [wang_ziyu_fig6.ipynb](https://github.com/ziyuw2/20.440_project/blob/750bc3d9002a545c664b4bfa876dbf5881c82f70/Code/wang_ziyu_fig6.ipynb) is used to do the analysis in Fig 4 and 5 in our report and generate the correcponding figures.

### Figures
* Stores Fig 4-6 in the resport. The figures generated from [wang_ziyu_fig45.ipynb](https://github.com/ziyuw2/20.440_project/blob/750bc3d9002a545c664b4bfa876dbf5881c82f70/Code/wang_ziyu_fig45.ipynb) and [wang_ziyu_fig6.ipynb](https://github.com/ziyuw2/20.440_project/blob/750bc3d9002a545c664b4bfa876dbf5881c82f70/Code/wang_ziyu_fig6.ipynb) were further labeled with significance and letters in a figure panel using [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) and then uploaded here.


# Installation
* Google colab is recommend to recreate our analysis and figures. Otherwise, you can use any python development environment with [Python 3.10.11](https://www.python.org/downloads/release/python-31011/).
* We used [R 4.2.3](https://cran.r-project.org/bin/windows/base/old/4.2.3/) for the preprocess of the raw data. Therefore, any version after that is recommended. 
