#Task1
em = read.table("C:/Users/96328/Downloads/data/data/em.csv ", header=FALSE, sep= "\t")
de = read.table("C:/Users/96328/Downloads/data/data/de_duct_vs_gut.csv", header=FALSE, sep= "\t")
annotations = read.table("C:/Users/96328/Downloads/data/data/annotations.csv", header=FALSE, sep= "\t")

#Task4
em = read.table("C:/Users/96328/Downloads/data/data/em.csv ", header=TRUE, row.names = 1, sep= "\t")
de = read.table("C:/Users/96328/Downloads/data/data/de_duct_vs_gut.csv", header=TRUE, row.names = 1, sep= "\t")
annotations = read.table("C:/Users/96328/Downloads/data/data/annotations.csv", header=TRUE, row.names = 1, sep= "\t")

#Task5
em[1,]
em[2,]
em[3,]

em[,1]
em[,2]
em[,3]

em[1,1]
em[1,2]
em[1,3]

em[,9]
em[15000,]
em[8123,2]

first_row = em[1,]
first_column = em[,1]
first_cell = em[1,1]

#Task6
em["ENSMUSG00000028180",]
em[,"gut_r1"]
em["ENSMUSG00000028180","gut_r1"]

de["ENSMUSG00000024084",]
de["ENSMUSG00000110586",]
de[,"log2fold"]
de[,"p"]
de["ENSMUSG00000045010", "p"]

#Task7
new_names = c("chromosome","start","stop","Gene_name","Gene_type")
names(annotations) = new_names

#Task8
master_temp = merge(em, annotations,by.x = 0,by.y = 0)
master = merge(master_temp,de, by.x = 1,by.y = 0)
master["ENSMUSG00000028180",]

row.names(master) = master[,"Row.names"]
row.names(master) = master[,"Gene_name"]

names(master)[1] = "gene_id"
master = master[,-14]

#Task9
em_symbols = master[,2:10]