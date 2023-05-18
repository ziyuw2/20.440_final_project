# first download the data.TZ.Robj and data.NL.Robj from
# https://gitlab.com/xavier-lab-computation/public/fg300tanzania/-/tree/master/data
# to the current directory
dir<-getwd()
f_dir<-paste(dir, "/data.TZ.Robj",sep="")
load(f_dir)
library(openxlsx)
# cytokines
cytokines <- obj$assays$Cytokines$data
row <- rownames(cytokines)
cytokines <- cbind(row,cytokines)
cm <- obj$assays$Cytokines$metadata
row <- rownames(cm)
cm <- cbind(row,cm)
c_wb <- createWorkbook()
addWorksheet(c_wb, "cytokines")
addWorksheet(c_wb, "metadata")
writeData(c_wb, "cytokines", cytokines)
writeData(c_wb, "metadata", cm)
saveWorkbook(c_wb, "tz_cytokines.xlsx", overwrite = TRUE)
# metabolite
tzmetabolite <- obj$assays$Metabolites$data
row <- rownames(tzmetabolite)
tzmetabolite <- cbind(ID=row, tzmetabolite)
tzmmeta <- obj$assays$Metabolites$metadata
row <- rownames(tzmmeta)
tzmmeta <- cbind(ID = row, tzmmeta)
metabolite_wb <- createWorkbook()
addWorksheet(metabolite_wb, "metabolite")
addWorksheet(metabolite_wb, "metadata")
writeData(metabolite_wb, "metabolite", tzmetabolite)
writeData(metabolite_wb, "metadata", tzmmeta)
saveWorkbook(metabolite_wb, "tz_metabolite.xlsx", overwrite=TRUE)
# metadata
tz_diet <- obj$assays$Diet$data
row <- rownames(tz_diet)
tz_diet <- cbind(row, tz_diet)
tz_meta <- obj$metadata
row <- rownames(tz_meta)
tz_meta <- cbind(row, tz_meta)
meta_wb <- createWorkbook()
addWorksheet(meta_wb, "diet")
addWorksheet(meta_wb, "metadata")
writeData(meta_wb, "diet", tz_diet)
writeData(meta_wb, "metadata", tz_meta)
saveWorkbook(meta_wb, "tz_metadata.xlsx", overwrite = TRUE)
# pathway
tzpathways <- obj$assays$pathways$data
rownames <- rownames(tzpathways)
tzpathways <- cbind(ID = rownames, tzpathways)
pathway_wb <- createWorkbook()
addWorksheet(pathway_wb, "pathways")
addWorksheet(pathway_wb, "metadata")
tzpmeta <- obj$assays$pathways$metadata
row <- rownames(tzpmeta)
tzpmeta <- cbind(pathways = row, tzpmeta)
writeData(pathway_wb, "pathways", tzpathways)
writeData(pathway_wb, "metadata", tzpmeta)
saveWorkbook(pathway_wb, "tz_pathways.xlsx", overwrite = TRUE)
# species
TZspecies <- data.frame(obj$assays$Species$data)
rownames <- rownames(TZspecies)
newdataframe <- cbind(ID = rownames, TZspecies)
tzspecieslm <- data.frame(obj$assays$Species_from_lm$data)
rownames <- rownames(tzspecieslm)
tzspecieslm <- cbind(ID = rownames, tzspecieslm)
species_wb = createWorkbook()
addWorksheet(species_wb, "species")
addWorksheet(species_wb, "species_lm")
addWorksheet(species_wb, "metadata_lm")
writeData(species_wb, "species", newdataframe)
writeData(species_wb, "species_lm", tzspecieslm)
metadatalm <- obj$assays$Species_from_lm$metadata
writeData(species_wb, "metadata_lm", metadatalm)
saveWorkbook(species_wb, "tz_species.xlsx", overwrite = TRUE)

dir<-getwd()
f_dir<-paste(dir, "/data.NL.Robj",sep="")
load(f_dir)
# cytokines
cytokines <- obj$assays$Cytokines$data
row <- rownames(cytokines)
cytokines <- cbind(row,cytokines)
cm <- obj$assays$Cytokines$metadata
row <- rownames(cm)
cm <- cbind(row,cm)
c_wb <- createWorkbook()
addWorksheet(c_wb, "cytokines")
addWorksheet(c_wb, "metadata")
writeData(c_wb, "cytokines", cytokines)
writeData(c_wb, "metadata", cm)
saveWorkbook(c_wb, "nl_cytokines.xlsx", overwrite = TRUE)
# metadata
nl_meta <- obj$metadata
row <- rownames(nl_meta)
nl_meta <- cbind(row, nl_meta)
meta_wb <- createWorkbook()
addWorksheet(meta_wb, "metadata")
writeData(meta_wb, "metadata", nl_meta)
saveWorkbook(meta_wb, "nl_metadata.xlsx", overwrite = TRUE)
# species
species <- obj$assays$Species$data
row <- rownames(species)
species <- cbind(row, species)
species_wb <- createWorkbook()
smeta <- obj$assays$Species$metadata
row <- rownames(smeta)
smeta <- cbind(row, smeta)
addWorksheet(species_wb, "species")
addWorksheet(species_wb, "metadata")
writeData(species_wb, "species", species)
writeData(species_wb, "metadata", smeta)
saveWorkbook(species_wb, "nl_species.xlsx", overwrite = TRUE)
# pathways
path <- obj$assays$pathways$data
pathm <- obj$assays$pathways$metadata
row <- rownames(path)
path <- cbind(row,path)
row <- rownames(pathm)
pathm <-cbind(row, pathm)
path_wb <- createWorkbook()
addWorksheet(path_wb, "pathways")
addWorksheet(path_wb, "metadata")
writeData(path_wb, "pathways", path)
writeData(path_wb, "metadata", pathm)
saveWorkbook(path_wb, "nl_pathways.xlsx", overwrite = TRUE)