## A very simple example script for setting up reproducible and portable projects
## TESS Lab 8th April 2024

## Setup

library(dplyr)
library(ggplot2)
library(readr)
library(terra)
library(sf)
library(tmap)


## 1. Load some data
test_csv <- readr::read_csv("data/raw/some_data.csv")
test_raster <- terra::rast("data/raw/test_raster.tif")

plot(test_raster)

## 2. Do some analysis

calculate_anomaly <- function(x) {x / mean(x)}

raster_anomaly <- terra::arith(test_raster, calculate_anomaly)

plot(raster_anomaly)

## 3. Write the result to disk
writeRaster(raster_anomaly, "data/processed/raster_anomaly.tif")
