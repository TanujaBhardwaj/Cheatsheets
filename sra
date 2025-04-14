# Script for using sra-tools to use for downloading the files from the SRA (NCBI-GEO)

# Step 1: update conda environment which has sra-tools installed
conda activate sratools

# ******* to check if sratools are working properly 
fastq-dump    # it will tell you the version of the sra-tools installed in the system

# go to the directory where you want to download the files you dowwnload fromn the SRA for example
cd /home/download/#####

# now to make this directory as your working directory so that all the files you download are downloaded in this folder only
vdb-config --prefetch-to-cwd  # this will set your currect directory as your working directory


# Now go to GEO and type the GEO accession number of the files you want to download (example: GSE#####   #### data)
# When the page opens, go to the  bottom of the page, and just below where the files are there, click on SRA Eun Selector
# It will lead you to a page which will have complete detail of the type of experiment, size of files and their SRR numbers, which we will use to download

### Remember the command prefetch in the sra-tools is used to download the files from the sra-tools; see below how to use this

prefetch SRR##### #the SRR number of the first file in the study

#to download the files one by one, you can also download all files together by using the  SRP number of the study, but download the files one by one since they are large size files

# After the download is over, which will take several minutes or hours, depending upon the file size
# You need to see if the file is a paired or single aly=though it will be mentioned in the table itself, but you also need to change this .sra file to .fastq for that type:

fasterq-dump SRR##### --split-files --skip-technical


## Now you have your fasta file, and you are good to go for the next steps

# Summary of all commands:
	fastq-dump  (to see if the sra-tools are installed properly)
	vdb-config --prefetch-to-cwd (to set the folder where I want to install my files as my working directory)
	prefetch SRR#####
	fasterq-dump SR#### --split-files --skip-technical  (to split if the files are paired-end files)
