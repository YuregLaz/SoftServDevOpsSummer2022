  GNU nano 6.2                                   /home/yureg/1.sh
#!/bin/bash
#lazorenko tree #12
fn="Yuriy"
ln="Lazorenko"
gr1text="Summer2022 13/07/2022"
gr2text="yurkalazorenko@gmail.com"
mkdir -p $ln/{TAA,TBB,TDK}
mkdir $ln/TBB/gr1
mkdir $ln/TDK/gr2
echo $gr1text>$ln/TBB/gr1/$fn.txt
echo $gr2text>$ln/TDK/gr2/$ln.txt
find ~/$ln -type f -execdir cp  "{}" ~/$ln ";"






