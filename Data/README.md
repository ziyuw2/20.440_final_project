# Rawdata
You can find the raw data of this study at [Gitlab: Xavier-lab](https://gitlab.com/xavier-lab-computation/public/fg300tanzania/-/tree/master/data)

# Data Processing
* You can download the raw data at the URL provided above, and then convert the R objects into `.xlsx` files using [preprocess.R](https://github.com/ziyuw2/20.440_project/blob/bd612ff60badae21bcb1ef9d8a142e0ab96235b4/Code/preprocess.R) in the `Code/` folder.
* For `tz_metadata.xlsx`, we modified the file by summing the value of `Ugali`,  `Banana`, `Wheat`, `Beans`, `Vegetables` and `Fruits` using `=SUM(J2,L2,M2,P2,Q2,R2)` for all participants and stored the values in a new column called `exc rice`. The reason to exclude `Rice` from the total dietary fiber calculation is that rice doesn't really contain high amount of dietary fiber.
* We uploaded all the converted `.xlsx` files to the `Data/` folder, and used them for our analysis and figure generation for fig. 4-6 and supplementary figures.  
