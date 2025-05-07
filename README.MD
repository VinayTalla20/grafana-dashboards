### setup Env ####
Grafonnet
Jsonnet library for generating Grafana dashboards.

#########################################################

1. install Golang

scoop install go

2. initilize project

go install -a github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest
jb init

3. install required library

jb install github.com/grafana/grafonnet/gen/grafonnet-latest@main

4. install jsonnet cli

go install github.com/google/go-jsonnet/cmd/jsonnet@latest

5. reneder the json output for the dashboard

jsonnet -J vendor sample-dashboard.jsonnet > sample-dashboard.json

6. reference ofr dashboards creation

reference link: https://github.com/grafana/grafonnet/tree/main/examples/runtimeDashboard


###########################################################