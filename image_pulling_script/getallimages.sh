echo creating image lists
cat ../kubernetes-charts/index.yaml | grep icon | sed 's/    icon: //g' > iconlist; uniq iconlist output.txt; cat -n output.txt | sed 's/^.......//' > imagelist_stable.txt; rm output.txt iconlist
cat ../kubernetes-charts-incubator/index.yaml | grep icon | sed 's/    icon: //g' > iconlist; uniq iconlist output.txt; cat -n output.txt | sed 's/^.......//' > imagelist_incubator.txt; rm output.txt iconlist
echo 
echo deleting old picture folders in 5
sleep 1
echo 4
sleep 1
echo 3
sleep 1
echo go!
echo GOGOGOGOGOG
echo GOOOOOOOOOOOO
echo
echo rm -rf ~/pics/stable/
sleep .04
echo rm -rf ~/pics/incubator/
sleep .04
echo mkdir ~/pics/stable/
sleep .04
echo mkdir ~/pics/incubator/
sleep .04
rm -rf ~/pics/stable/
rm -rf ~/pics/incubator/
mkdir ~/pics/stable/
mkdir ~/pics/incubator/
echo
echo pulling images stable
sleep  2
for f in `cat imagelist_stable.txt`; 
do  
echo go get image "### $(echo $f| sed 's|.*/||') ###";  
curl -o ~/pics/stable/$(echo $f | sed 's/https\:\/\///g' | sed 's/\//-/g') $f
echo  
sleep .04
done
echo
echo pulling images incubator
sleep  2
for f in `cat imagelist_incubator.txt`;
do
echo go get image "### $(echo $f| sed 's|.*/||') ###";
curl -o ~/pics/stable/$(echo $f | sed 's/https\:\/\///g' | sed 's/\//-/g') $f
echo
sleep .04
done
mv ~/pics/helmpics.zip ~/pics/helmpics_old.zip
zip -r ~/pics/helmpics.zip ~/pics/
echo 
echo
echo
echo ALL DONE
