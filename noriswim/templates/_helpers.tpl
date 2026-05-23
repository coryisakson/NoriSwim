{{/* Expand the name of the chart. */}}
{{- define "noriswim.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Expand the full name of the chart. */}}
{{- define "noriswim.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := .Chart.Name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/* Define the labels */}}
{{- define "noriswim.labels" -}}
helm.sh/chart: {{ include "noriswim.chart" . }}
{{ include "noriswim.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/* Selector labels */}}
{{- define "noriswim.selectorLabels" -}}
app.kubernetes.io/name: {{ include "noriswim.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Chart metadata */}}
{{- define "noriswim.chart" -}}
{{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}