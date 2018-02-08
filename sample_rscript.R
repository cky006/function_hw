# Can you improve this analysis code?
library(bio3d)
#read.pdb:read PDB coordinate file with some kind of file accession label (i.e. "4AKE")
s1 <- read.pdb("4AKE") # kinase with drug
s2 <- read.pdb("1AKE") # kinase no drug
s3 <- read.pdb("6EWZ") # kinase with drug
#trim.pdb:trims PDB object subset of atoms
#(i.e. chain in protein; elety lables alpha carbon atom)
s1.chainA <- trim.pdb(s1, chain="A", elety="CA")
s2.chainA <- trim.pdb(s2, chain="A", elety="CA")
s3.chainA <- trim.pdb(s3, chain="A", elety="CA")
#vector input of temperature factor values of subset atoms "b" from trimmed sidechain
s1.b <- s1.chainA$atom$b
s2.b <- s2.chainA$atom$b
s3.b <- s3.chainA$atom$b
#plotb3: draw standard scatter plot with optional secondary structure in the marginal
#typ=l : line scatter plot in this case
#ylab: denotes y axis label
#sse: secondary structure object in read.pdb
plotb3(s1.b, sse=s1.chainA, typ="l", ylab="Bfactor")
plotb3(s2.b, sse=s2.chainA, typ="l", ylab="Bfactor")
plotb3(s3.b, sse=s3.chainA, typ="l", ylab="Bfactor")
