+++
date = '2024-12-22T11:54:25-08:00'
draft = false
title = 'Workload'
weight = 20
summary = 'View my historical workload, automatically generated from the emails waiting in my inbox.'
+++


You reached out to me and now you're wondering, "That a{{% icon icon="skull-crossbones" %}}h{{% icon icon="burst" %}}le! Why hasn't Rik got back to me?"  If I'm busy I just may not have had a chance yet.  So check out my current workload for yourself.  Automatically generated from the number of emails waiting in my inbox.

{{< tabs >}}

<!-- for embed code: Google Drive on web > double-click image > Open in new window > Embed item... >  https://drive.google.com/file/d/.../preview [Rik, 2024-12-23] -->

{{% tab title="2 weeks" %}}
<iframe src="https://drive.google.com/file/d/1pbK1FHxB3K56_Py6_mDYHmGEyV_syG4I/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows daily maximum workload. 
{{% /tab %}}

{{% tab title="1 month" %}}
<iframe src="https://drive.google.com/file/d/1L50bXifTVryDj1t_dS7KmmWi0Cs9PoZ6/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows daily maximum workload. 
{{% /tab %}}

{{% tab title="4 months" %}}
<iframe src="https://drive.google.com/file/d/1LhyqEsc7W8128bIE-_0cFZ8ZmwaKt6mM/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows daily maximum workload. 
{{% /tab %}}

{{% tab title="1 year" %}}
<iframe src="https://drive.google.com/file/d/11PuT5Gdo7nfPBXkwcNn1xCNtgZzP1JH-/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows weekly maximum workload. 
{{% /tab %}}

{{% tab title="3 years" %}}
<iframe src="https://drive.google.com/file/d/1BXqD7MxDQKFt_IFQCjhzQUKUsB58acRt/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows weekly maximum workload. 
{{% /tab %}}

{{% tab title="10 years" %}}
<iframe src="https://drive.google.com/file/d/11U7FtLED_vDaiFjaxSPg99OkknBwlOfW/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows 3-month maximum workload. 
{{% /tab %}}

{{% tab title="all time" %}}
<iframe src="https://drive.google.com/file/d/11TnjNff9DnS6UJnslzA4eCsuSy8gG3BS/preview" width="720" height="405" allow="autoplay"></iframe>

Chart shows 3-month maximum workload. 
{{% /tab %}}

{{< /tabs >}}

Under light workloads expect a response within a few days.  I should be able to get back to you within a week under moderate workloads.  But when my workload is heavy it could take a few weeks.





<canvas id="workloadChart" width="800" height="400"></canvas>
<button id="resetZoomBtn">Reset Zoom</button>




<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-zoom@2.0.1/dist/chartjs-plugin-zoom.min.js"></script>



<script>
async function loadWorkloadData() {
    const url = "https://drive.google.com/file/d/1XpVHMjVhF1g5hXaAfQoSl4ptz8r5s8YY/preview";
    const response = await fetch(url);
    const text = await response.text();

    // parse CSV or whitespace data
    const lines = text.split("\n").filter(line => line.trim() && !line.startsWith("#"));

    const labels = [];
    const values = [];

    for (const line of lines) {
        const [dateStr, valueStr] = line.trim().split(/\s+/);

        // Workload file format: "YYYY/MM/DD@HH:MM"
        const jsDate = new Date(dateStr.replace("@", " "));
        labels.push(jsDate);
        values.push(parseFloat(valueStr));
    }

    return { labels, values };
}

async function drawChart() {
    const data = await loadWorkloadData();

    const ctx = document.getElementById("workloadChart").getContext("2d");

    const chart = new Chart(ctx, {
        type: "line",
        data: {
            labels: data.labels,
            datasets: [{
                label: "Workload (%)",
                data: data.values,
                borderWidth: 2,
                borderColor: "blue",
                pointRadius: 0
            }]
        },
        options: {
            parsing: false,
            scales: {
                x: {
                    type: "time",
                    time: { tooltipFormat: "yyyy-MM-dd HH:mm" }
                },
                y: {
                    beginAtZero: false
                }
            },
            plugins: {
                zoom: {
                    zoom: {
                        wheel: { enabled: true },
                        pinch: { enabled: true },
                        mode: "x"
                    },
                    pan: {
                        enabled: true,
                        mode: "x"
                    }
                }
            }
        }
    });

    document.getElementById("resetZoomBtn").onclick = () => {
        chart.resetZoom();
    };
}

drawChart();
</script>
