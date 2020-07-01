##   helm cheatsheet

Add a Helm Chart Repository
```bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
```
Get the latest list of chart
```bash
helm repo update
```
Install a chart 
```bash
helm install ./postgresql --namespace demo
```
```bash
helm install mysql-release stable/mysql
```
List releases (releases with status)
```bash
helm ls
```
Delete a release
```bash
helm delete wishing-tarsier
```
Uninstall a chart
```bash
$ helm uninstall happy-panda
```
Create a chart scaffolding
```bash
helm create my-chart
```
Examine a chart for possible issues
```bash
helm lint
```
Render chart templates locally and display the output
```bash
helm template -f values.yaml,values-prod.yaml,values-sales.yaml --set app.brand="grape" .
```
```bash   
helm template ./charts/cp-kafka --namespace demo > kafka-output.yaml
```
```bash
helm template ./charts/cp-kafka --name kafka-service --namespace strimzi > kafka.yaml
```
Render your templates, then return the resulting manifest file
```bash
helm install --dry-run --debug plinking-anaco ./mychart
```
Download a uncompressed chart 
```bash
helm fetch stable/postgresql --untar
```

