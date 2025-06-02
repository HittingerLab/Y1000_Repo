#!/bin/bash

unzip Y1000dataV1.0.zip
mv 'Y1000+ Data Release 1.0.0'/Y1000dataV1.0_20250430.tar.gz .
rm -rf 'Y1000+ Data Release 1.0.0'

tar zxvf Y1000dataV1.0_20250430.tar.gz

tar zxvf genomes.tar.gz
tar zxvf pep.tar.gz
tar zxvf cds.tar.gz
tar zxvf gtf.tar.gz
tar zxvf gff3.tar.gz
tar zxvf y1000.outgroups.tar.gz
tar zxvf orthofinder.tar.gz

mkdir ./data
mkdir ./data/original

mv genomes ./data/original/genomes
mv pep ./data/original/pep
mv cds ./data/original/cds
mv gtf ./data/original/gtf
mv gff3 ./data/original/gff3
mv y1000.outgroups ./data/original/y1000.outgroups
mv orthofinder ./data/original/orthofinder


mkdir ./data/BySpecies

mkdir ./data/ByDataType
mkdir ./data/ByDataType/genomes
mkdir ./data/ByDataType/pep
mkdir ./data/ByDataType/cds
mkdir ./data/ByDataType/gtf
mkdir ./data/ByDataType/gff3

IFS=""

echo -e "SpID\tGenome\tPep\tCDS\tGFF3\tGTF" > File_paths.tsv


tail -n +2 File_guide.tsv > temp
while read line ; do
	spID=$(echo $line | cut -f 1)
	genome=$(echo $line | cut -f 2)
	pep=$(echo $line | cut -f 3)
	cds=$(echo $line | cut -f 4)
	gtf=$(echo $line | cut -f 6)
	gff3=$(echo $line | cut -f 5)
	
	mkdir ./data/BySpecies/$spID
	
	ln -s $(pwd)/data/original/genomes/$genome ./data/ByDataType/genomes/$spID.fsa
	ln -s $(pwd)/data/original/genomes/$genome ./data/BySpecies/$spID/$spID.fsa
	newgenome="$(echo $PWD)""/data/ByDataType/genomes/$spID.fsa"
	
	ln -s $(pwd)/data/original/pep/$pep ./data/ByDataType/pep/$spID.pep
	ln -s $(pwd)/data/original/pep/$pep ./data/BySpecies/$spID/$spID.pep
	newpep="$(echo $PWD)""/data/ByDataType/pep/$spID.pep"

	ln -s $(pwd)/data/original/cds/$cds ./data/ByDataType/cds/$spID.cds
	ln -s $(pwd)/data/original/cds/$cds ./data/BySpecies/$spID/$spID.cds
	newcds="$(echo $PWD)""/data/ByDataType/cds/$spID.cds"

	ln -s $(pwd)/data/original/gtf/$gtf ./data/ByDataType/gtf/$spID.gtf
	ln -s $(pwd)/data/original/gtf/$gtf ./data/BySpecies/$spID/$spID.gtf
	newgtf="$(echo $PWD)""/data/ByDataType/gtf/$spID.gtf"

	ln -s $(pwd)/data/original/gff3/$gff3 ./data/ByDataType/gff3/$spID.gff3
	ln -s $(pwd)/data/original/gff3/$gff3 ./data/BySpecies/$spID/$spID.gff3
	newgff3="$(echo $PWD)""/data/ByDataType/gff3/$spID.gff3"

	echo -e "$spID\t$newgenome\t$newpep\t$newcds\t$newgff3\t$newgtf" >> File_paths.tsv

done < temp
rm temp


##Cleanup
rm genomes.tar.gz
rm pep.tar.gz
rm cds.tar.gz
rm gtf.tar.gz
rm gff3.tar.gz
rm y1000.outgroups.tar.gz
rm orthofinder.tar.gz
rm Y1000dataV1.0.zip
