{{- define "namespace" -}}
{{- $dev := index .Values.namespaces 0 }}
{{- $prod := index .Values.namespaces 1 }}
{{- if eq .Values.product_mode.enabled true}}{{ $prod.name}}{{- else }}{{ $dev.name}}{{- end}}
{{- end }}
