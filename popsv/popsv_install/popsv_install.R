source("http://bioconductor.org/biocLite.R")

biocLite(pkgs=c("BSgenome.Hsapiens.UCSC.hg19",
		"Rsamtools",
		"qvalue",
		"DNAcopy",
		"devtools",
		"data.table",
		"dplyr",
		"outliers",
		"fdrtool",
		"shiny",
		"reshape"),
	 ask=FALSE)
