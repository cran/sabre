## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- message=FALSE------------------------------------------------------
library(sabre)
library(sf)
data("regions1")
data("regions2")

## ---- echo=FALSE, fig.height=4, out.width="45%"--------------------------
plot(regions1, main = "regions1")
plot(regions2, main = "regions2")

## ------------------------------------------------------------------------
regions_vm = vmeasure_calc(x = regions1, y = regions2, x_name = z, y_name = z)
regions_vm

## ---- warning=FALSE, fig.height=2, fig.height=4, out.width="45%", echo=FALSE----
plot(regions_vm$map1["rih"], main = "Map1: rih"); plot(regions_vm$map2["rih"], main = "Map2: rih")

## ------------------------------------------------------------------------
regions_mc = mapcurves_calc(x = regions1, y = regions2, x_name = z, y_name = z)
regions_mc

