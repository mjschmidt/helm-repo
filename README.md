d# Moving Charts to Offline Env

## Pre-Req
```
#clone down the complimentary repsistory or an empty one where where you wish to push charts to git
https://github.com/mjschmidt/low-to-high-chart-zips.git
#clone my repository
git clone https://github.com/mjschmidt/helm-repo
# cd in 
cd helm-repo/
#install gsutil
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud init
```

```
#Don't forget to pull down changest first
 
# use gsutil to get all the kubernetes charts you may want.
gsutil -m cp -R gs://kubernetes-charts .
gsutil -m cp -R gs://kubernetes-charts-incubator .

#Create the zip files
mkdir ~/low-to-high-chart-zips
mv ~/low-to-high-chart-zips/kubernetes-charts.zip ~/low-to-high-chart-zips/kubernetes-charts.zip_backup
mv ~/low-to-high-chart-zips/kubernetes-charts-incubator.zip ~/low-to-high-chart-zips/kubernetes-charts-incubator.zip_backup
zip -r ~/low-to-high-chart-zips/kubernetes-charts.zip kubernetes-charts
zip -r ~/low-to-high-chart-zips/kubernetes-charts-incubator.zip kubernetes-charts-incubator

#how to add a repo
helm repo add sample 'https://raw.githubusercontent.com/mjschmidt/test-helm-repo/master/kubernetes-charts/'
```

```
#How to pull the images

cd helm-repo/image_pulling_script
./getallimages.sh

cd ~/pics

#helmpics.zip is both stable and incubator pics
```
