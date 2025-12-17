+++
date = '2024-12-22T11:54:25-08:00'
draft = false
title = 'Workload'
weight = 20
summary = 'View my historical workload, automatically generated from the emails waiting in my inbox.'
+++


You reached out to me and now you're wondering, "That a{{% icon icon="skull-crossbones" %}}h{{% icon icon="burst" %}}le! Why hasn't Rik got back to me?"  If I'm busy I just may not have had a chance yet.  So check out my current workload for yourself.  Automatically generated from the amount of email waiting in my inbox.

<div id="workloadWrapper" style="height: 400px;">
    <canvas id="workloadChart" style="cursor: zoom-in;"></canvas>
</div>

<div id="rangeButtons" style="margin-top: 10px;">
    <button data-range="all">All time</button>
    <button data-range="10y">10 years</button>
    <button data-range="3y">3 years</button>
    <button data-range="1y">1 year</button>
    <button data-range="4m">4 months</button>
    <button data-range="1m">1 month</button>
<!--<button data-range="2w">2 weeks</button>-->
</div>

<!--<button id="resetZoomBtn">Reset Zoom</button>-->

<style>
#rangeButtons {
    display: flex;
    justify-content: center; /* centers the buttons horizontally */
    gap: 10px;               /* spacing between buttons */
    margin-top: 15px;        /* space above the button row */
}

#rangeButtons button {
    padding: 5px 12px;       /* optional: add some padding inside buttons */
    cursor: pointer;         /* pointer cursor */
}

/* Highlight the active range button */
#rangeButtons button.active {

    text-decoration: underline;
    text-underline-offset: 4px; /* optional, adjust spacing */
    font-weight: bold;           /* optional, makes it pop a bit */
    background-color: transparent; /* ensure no background highlight */
}
</style>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.5.1"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-zoom@2.0.1/dist/chartjs-plugin-zoom.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns"></script>

<script>

function getCSSVar(name) {
    return getComputedStyle(document.documentElement).getPropertyValue(name).trim();
}

async function loadWorkloadData() {
    const url = "https://raw.githubusercontent.com/rikblok/workload-data/data-latest/workload.dat";
	
    const response = await fetch(url);
    const text = await response.text();
	//console.log("Fetched text:", text.slice(0, 500)); // show first 500 chars // DEBUG

    const lines = text.split(/\r?\n/).filter(line =>
        line.trim() && !line.startsWith("#")
    );

    const points = [];

    for (const line of lines) {
        const [dateStr, valueStr] = line.trim().split(/\s+/);
        const jsDate = new Date(dateStr.replace("@", "T").replace(/\//g, "-"));
		jsDate.setHours(0,0,0,0);  // normalize to midnight
		const yValue = parseFloat(valueStr);
        points.push({ x: jsDate, y: yValue });
		//console.log("dateStr:", dateStr, "jsDate:", jsDate, "valueStr:", valueStr, "yValue:", yValue); // DEBUG
    }

    return points;
}

// ---- Horizontal bands plugin ----
const horizontalBandsPlugin = {
    id: 'horizontalBands',
    beforeDraw: (chart) => {
        const { ctx, chartArea: { top, bottom, left, right }, scales: { y } } = chart;
        const textColor = getCSSVar("--MAIN-TEXT-color") || "#e0e0e0";
        ctx.save();
		const rootFontPx = parseFloat(getComputedStyle(document.documentElement).fontSize); // usually 16px
		const defaultFont = {
			size: rootFontPx,
			family: "sans-serif"
		};
		
        const labelOffset = 20; // distance outside the chart

        // function to draw rotated label
        const drawRotatedLabel = (text, x, y) => {
            ctx.save();
            ctx.translate(x, y);
            ctx.rotate(-Math.PI / 2); // rotate 90° counterclockwise
            ctx.textAlign = "center";  // center along rotated axis
            ctx.fillStyle = textColor;
            ctx.fillText(text, 0, 0);
            ctx.restore();
        };

        // Light (0–25%)
        ctx.fillStyle = "rgba(0, 128, 0, 0.2)";
        ctx.fillRect(left, y.getPixelForValue(25), right - left, y.getPixelForValue(0) - y.getPixelForValue(25));
        drawRotatedLabel("Light", left - labelOffset, y.getPixelForValue(12.5));

        // Moderate (25–75%) — no background
        drawRotatedLabel("Moderate", left - labelOffset, y.getPixelForValue(50));

        // Heavy (75–100%)
        ctx.fillStyle = "rgba(255, 0, 0, 0.2)";
        ctx.fillRect(left, y.getPixelForValue(100), right - left, y.getPixelForValue(75) - y.getPixelForValue(100));
        drawRotatedLabel("Heavy", left - labelOffset, y.getPixelForValue(87.5));

        ctx.restore();
    }
};

async function drawChart() {
    const points = await loadWorkloadData();
    const ctx = document.getElementById("workloadChart").getContext("2d");

	const today = new Date();
	const oneYearAgo = new Date();
	oneYearAgo.setFullYear(today.getFullYear() - 1);
	
    // ---- Read Hugo Relearn theme colors ----
    const textColor   = getCSSVar("--MAIN-TEXT-color")     || "#e0e0e0";
    const gridColor   = getCSSVar("--BORDER-color")        || "rgba(255,255,255,0.2)";
    const accentColor = getCSSVar("--MAIN-LINK-color")     || "#4FC3F7";
    const bgColor     = getCSSVar("--MAIN-BG-color")       || "transparent";

	const rootFontPx = parseFloat(getComputedStyle(document.documentElement).fontSize); // usually 16px
	const defaultFont = {
		size: rootFontPx,
		family: "sans-serif"
	};

    const chart = new Chart(ctx, {
        type: "line",
        data: {
            datasets: [{
                label: "Rik's Workload",
                data: points,
                borderWidth: 2.5,
                borderColor: accentColor,
                backgroundColor: accentColor + "40", // 25% opacity
                pointRadius: 0,
                tension: 0.15,
				fill: true, // <-- this makes the area under the line filled
            }]
        },
        options: {
            parsing: false,
            maintainAspectRatio: false,
            color: textColor,
			layout: {
				padding: {
					left: 40   // increase this until labels fit
				}
			},
            scales: {
                x: {
                    type: "time",
					min: oneYearAgo,
					max: today,
					time: {
						tooltipFormat: "yyyy-MM-dd", // tooltip always shows full date
						displayFormats: {
							millisecond: "MMM d", // zoomed-in view
							second:      "MMM d",
							minute:      "MMM d",
							hour:        "MMM d"
						}
					},                    ticks: { 
						color: textColor,
						font: defaultFont
					},
                    grid: { color: gridColor }
                },
                y: {
					min: 0,
					max: 100,
                    ticks: { 
						display: false,			// hide numeric labels
						stepSize: 25
					},
                    grid: { 
						color: gridColor,
						drawTicks: false		// hide short tick marks	
					}
                }
            },
            plugins: {
                legend: {
                    labels: { 
						color: textColor,
						font: defaultFont
					}
                },
				zoom: {
					limits: {
						y: { min: 0, max: 100 }   // lock Y axis
					},
					zoom: {
						wheel: { enabled: true },
						pinch: { enabled: true },
						mode: "x",                    // only zoom horizontally
						scaleMode: "x"                // enforce X-axis zooming
					},
					pan: {
						enabled: true,
						mode: "x",                    // only pan horizontally
						drag: { enabled: true },
						overScaleMode: "x",   		  // REQUIRED for drag-panning
						wheel: { enabled: true },     // horizontal scroll support
						scaleMode: "x"
					}
				}				
            }
        },
		plugins: [ horizontalBandsPlugin ] 
    });
	
	// GRAB / GRABBING cursor
//	ctx.canvas.addEventListener("mousedown", () => { ctx.canvas.style.cursor = "grabbing"; });
//	ctx.canvas.addEventListener("mouseup",   () => { ctx.canvas.style.cursor = "grab"; });
//	ctx.canvas.addEventListener("mouseleave",() => { ctx.canvas.style.cursor = "grab"; });
	

    //document.getElementById("resetZoomBtn").onclick = () => chart.resetZoom();

	function applyRange(chart, range) {
		const today = new Date();
		today.setHours(0,0,0,0);  // normalize to midnight
		let start;

		switch(range) {
			case "2w":
				start = new Date(today);
				start.setDate(today.getDate() - 14);
				break;
			case "1m":
				start = new Date(today);
				start.setMonth(today.getMonth() - 1);
				break;
			case "4m":
				start = new Date(today);
				start.setMonth(today.getMonth() - 4);
				break;
			case "1y":
				start = new Date(today);
				start.setFullYear(today.getFullYear() - 1);
				break;
			case "3y":
				start = new Date(today);
				start.setFullYear(today.getFullYear() - 3);
				break;
			case "10y":
				start = new Date(today);
				start.setFullYear(today.getFullYear() - 10);
				break;
			case "all":				
				start = new Date("2007-03-02");
				break;
		}

		chart.options.scales.x.min = start;
		chart.options.scales.x.max = today;
		chart.update();

		// Highlight the active button
		document.querySelectorAll("#rangeButtons button").forEach(btn => {
			btn.classList.toggle("active", btn.dataset.range === range);
		});
	}

	// Add click listeners to the buttons
	document.querySelectorAll("#rangeButtons button").forEach(btn => {
		btn.addEventListener("click", () => {
			applyRange(chart, btn.dataset.range);
		});
	});
	
	// Set "1 year" as the default active range
	applyRange(chart, "1y");
}

drawChart();
</script>

<!--

{{< tabs >}}

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

-->

Under light workloads expect a response within a few days.  I should be able to get back to you within a week under moderate workloads.  But when my workload is heavy, it could take a few weeks.



