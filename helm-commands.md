##   helm cheatsheet

Download a uncompressed chart 
```bash
helm fetch stable/postgresql --untar
```

Install a chart 
```bash
helm install ./postgresql --namespace demo
```

List releases (releases with status)
```bash
helm ls
```

Delete a release
```bash
helm delete wishing-tarsier
```

Create a chart scaffolding
```bash
helm create cp-kafka-connector-operator
```
```bash
helm template ./charts/cp-kafka --namespace hbc > kafka-output.yaml
```
```bash
helm template ./charts/cp-kafka --name kafka-servic    e --namespace strimzi > kafka.yaml
```

