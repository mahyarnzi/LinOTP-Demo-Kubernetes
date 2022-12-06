{{- define "namespace" -}}
{{- if eq .Values.product_mode.enabled true}}linotp-prod{{- else }}linotp-dev{{- end}}
{{- end }}
