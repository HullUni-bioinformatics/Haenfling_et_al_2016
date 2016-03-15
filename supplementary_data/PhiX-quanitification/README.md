
##Quantifying per sample PhiX contamination


Start MITObim container
```
sudo docker run -i -t -v $(pwd):/home/data chrishah/mitobim /bin/bash
```

In container - navigate to mount point and create working directory
```
cd /home/data
mkdir PhiX
cd PhiX
```

Per sample - detect PhiX contamination, by mapping reads to PhiX reference
```
for sample in $(ls -1 ../raw_reads/ | grep "fastq" | sed 's/_[1-2].fastq.gz//g' | sort -n | uniq)
do 
	echo -e "\n### $sample ###\n"
	mkdir $sample
	cd $sample
	interleave-fastqgz-MITOBIM.py ../../raw_reads/$sample\_1.fastq.gz ../../raw_reads/$sample\_2.fastq.gz | gzip > $sample\_interleaved.fastq.gz
	MITObim_1.8.pl -end 0 --quick ../Coliphage_phi-X174.fasta -readpool $sample\_interleaved.fastq.gz -sample $sample -ref Phi-X174 -v &> log
	cd ..
	
done
```

Summarizing results and write out as table: `Phix_summary.tsv`
```
rm Phix_summary.tsv
echo -e "sample\ttotal reads\tPhix read proportion" > Phix_summary.tsv
for a in $(ls -hlrt | grep "^d" | perl -ne 'chomp; @a=split(" "); print "$a[-1]\n"')
do 
	echo -e "\n### $a ###\n"
	cat $a/log | grep "Number of sequences baited"
	total=$(cat $a/log | grep "Number of sequences baited" | perl -ne 'chomp; @a=split(" "); print "$a[-2]\n"';)
	echo -e "$total"
	cat $a/log | grep "readpool contains"
	phi=$(cat $a/log | grep "readpool contains" | perl -ne 'chomp; @a=split(" "); print "$a[-2]\n"')
	if [ -z $phi ]
	then
		phi=0
	fi
	echo -e "$phi";
	prop=$(echo -e "$phi,$total" | perl -ne 'chomp; @a=split(","); $out=($a[0] / $a[1]); $out=sprintf("%.5f", "$out"); print "$out\n"')
	echo -e "$a\t$total\t$prop" >> Phix_summary.tsv
	
done
```


Calculate cummulative frequency distributions for each marker
```
#12S
for a in $(seq 0 .00001 .03)
do 
	for b in $(cat Phix_summary.tsv | grep "12S" | cut -f 3 | grep "Phi" -v)
	do 
		echo -e "$a\t$b"
	 done
done | perl -ne 'chomp; @a=split("\t"); if ($a[1] >= $a[0]){print "$_\n"}' | cut -f 1 | sort -n |uniq -c | perl -ne 'chomp; @a=split(" "); print "$a[0],$a[1]\n"' \
> 12S_PhiX_cummulative_frequency.csv

#CytB
for a in $(seq 0 .00001 .03)
do 
	for b in $(cat Phix_summary.tsv | grep "CytB" | cut -f 3 | grep "Phi" -v)
	do 
		echo -e "$a\t$b"
	done
done | perl -ne 'chomp; @a=split("\t"); if ($a[1] >= $a[0]){print "$_\n"}' | cut -f 1 | sort -n |uniq -c | perl -ne 'chomp; @a=split(" "); print "$a[0],$a[1]\n"' \
> CytB_PhiX_cummulative_frequency.csv
```
