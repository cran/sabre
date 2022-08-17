## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- message=FALSE-----------------------------------------------------------
library(sabre)
library(raster)
data("partitions1")
data("partitions2")

## ---- echo=FALSE, fig.height=4, out.width="45%"-------------------------------
plot(partitions1, main = "partitions1")
plot(partitions2, main = "partitions2")

## -----------------------------------------------------------------------------
partitions_vm = vmeasure_calc(x = partitions1, y = partitions2)
partitions_vm

## ---- warning=FALSE, fig.height=2, fig.height=4, out.width="45%", echo=FALSE----
plot(partitions_vm$map1[["rih"]], main = "Map1: rih"); plot(partitions_vm$map2[["rih"]], main = "Map2: rih")

## -----------------------------------------------------------------------------
partitions_mc = mapcurves_calc(x = partitions1, y = partitions2)
partitions_mc

