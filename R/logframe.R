

Activity <- c("Organic vanilla for household income",
	"Sustainable fuel wood production",
	"Improved fish farming trials",
	"Sustainable hunting awareness ", 
	"Maternal health: health practitioner training",
	"Invasive species management: mustelid trapping",
	"Community land-use planning")
Expected.outcome <- c("Household income is increased",
	"Fuel-wood use becomes sustainable",
	"Sustainable consumption of farmed fish improves sufficiently to offset demand for wild sourced meat",
	"Hunted wildlife shows signs of recovery",
	"Women from all villages are able to access maternal health services",
	"Invasive species are reduced",
	"Communities develop sustainable land-use plans")
Indicators <- c("Income compared to baseline",
	"Projected fuel-wood supply exceeds demand",
      "Weight of fish consumed offsets and exceeds that of wild sourced meat",
	"Camera trap indices of cuscus population show either stability or recovery",
	"Usage figures of clinic",
	"Relative abundance of mustelids is reduced",
	"Hectares under community management")
Deliverables <- c("Report:change in reported household income",
	"Report: projected biomass of fuel wood",
      "Report: effectiveness of improved fish farming",
	"Short communication (scientific paper): cuscus recovery",
	"Maternal clinic training program",
	"Short communication (scientific paper): effectiveness of mustelid control",
	"Ratified set of community maps")	

logframe <- data.frame(Expected.outcome, Activity, Indicators,Deliverables)

library(kableExtra)

kable(logframe) %>%
  kable_styling(full_width = F) %>%
  column_spec(1, bold = T, border_right = T) %>%
  column_spec(2, width = "30em", background = "yellow")

logframe %>%
  kable() %>%
  kable_styling()
	

