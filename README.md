# 

```
#clone my repository
git clone https://github.com/mjschmidt/test-helm-repo.git
# cd in 
cd test-helm-repo/
#install gsutil
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud init
 
# use gsutil to get all the kubernetes charts you may want.
gsutil -m cp -R gs://kubernetes-charts .
gsutil -m cp -R gs://kubernetes-charts-incubator .

#Create the zip files
zip -r kubernetes-charts.zip kubernetes-charts
zip -r kubernetes-charts-incubator.zip kubernetes-charts-incubator


#how to add a repo
helm repo add sample 'https://raw.githubusercontent.com/mjschmidt/test-helm-repo/master/kubernetes-charts/'
```
