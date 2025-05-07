local grafanadashboard =  import 'github.com/grafana/grafonnet/gen/grafonnet-latest/main.libsonnet';

grafanadashboard.dashboard.new("from-jsonnet")
+ grafanadashboard.dashboard.withTags("Proemtheus-Test")
+ grafanadashboard.dashboard.timepicker.withRefreshIntervals(["1s", "30s"])
+ grafanadashboard.dashboard.withDescription("Created with the help of grafonnet")
+ grafanadashboard.dashboard.withVariables([
    grafanadashboard.dashboard.variable.datasource.new("datasource-var", "prometheus"),
])
+ grafanadashboard.dashboard.withPanels([
            grafanadashboard.panel.timeSeries.new("First Panel from json")
            + grafanadashboard.panel.timeSeries.queryOptions.withTargets([
                grafanadashboard.query.prometheus.new("Prometheus", "rate(prometheus_http_requests_total[5m])")
                + grafanadashboard.query.prometheus.withLegendFormat("StatusCode={{code}}, Job={{job}}")
            ])
            + grafanadashboard.panel.timeSeries.standardOptions.withUnit("reqps")
            + grafanadashboard.panel.timeSeries.gridPos.withH(8)
            + grafanadashboard.panel.timeSeries.gridPos.withW(8)
            + grafanadashboard.panel.timeSeries.options.legend.withShowLegend(true)
        ])