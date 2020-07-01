{{/*
Application name
*/}}
{{- define "application.name" -}}
{{- printf "%s-sink-%s" .Values.app.namePrefix .brand.name -}}
{{- end -}}

{{/*
Application image
*/}}
{{- define "application.image" -}}
{{- printf "%s/%s:%s" .Values.app.imageRepository .Values.app.imageName .Values.app.imageTag -}}
{{- end -}}

{{/*
Source topic
*/}}
{{- define "kafka.sourceTopic" -}}
{{- printf "%s.%s.%s" .brand.name .Values.app.namePrefix .Values.kafka.topic.source.version | replace "-" "." | quote -}}
{{- end -}}

{{/*
Consumer group
*/}}
{{- define "kafka.consumerGroup" -}}
{{- printf "%s-sink-group-%s-%s" .Values.app.namePrefix .brand.name .Values.kafka.topic.source.version | quote -}}
{{- end -}}

{{/*
Error topic
*/}}
{{- define "kafka.errorTopic" -}}
{{- printf "all.%s.sink.errors.%s" .Values.app.namePrefix .Values.kafka.topic.error.version | replace "-" "." | quote -}}
{{- end -}}

{{/*
S3 path
*/}}
{{- define "s3Path" -}}
{{- printf "%s" .Values.s3.path | replace "${brand}" .brand.name | replace "${name}" .Values.app.namePrefix | quote -}}
{{- end -}}
