  GNU nano 6.2                                   /home/yureg/1.sh
#!/bin/bash
#lazorenko tree #12
fn="Yuriy"
ln="Lazorenko"
text1="Summer2022 13/07/2022"
text2="yurkalazorenko@gmail.com"
mkdir -p $ln/{TAA,TBB,TDK}
mkdir $ln/TBB/gr1
mkdir $ln/TDK/gr2
echo $text1>$ln/TBB/gr1/$fn.txt
echo $text2>$ln/TDK/gr2/$ln.txt
find ~/$ln -type f -execdir cp  "{}" ~/$ln ";"






