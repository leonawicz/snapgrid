#' snapgrid: Common SNAP geographic raster layer objects.
#'
#' The snapgrid package contains a collection of rasterized maps focused on
#' Alaska and Canada, including vegetation input for the ALFRESCO wildfire model,
#' fire management options map layers, domain template layers for the Alaska "statewide" classic ALFRESCO domain,
#' 1-km ALFRESCO and 2-km climate templates and more.
#'
#' snapgrid is a member package in the data sector of the SNAPverse.
#' All maps are in the NAD83 Alaska Albers Equal Area Conic projection for convenience and conformity,
#' but cover multiple extents and users should be familiar with the layers already in order to ensure proper usage context.
#'
#' There following maps are available:
#' \describe{
#' \item{\code{swveg}}{Vegation map layer for the classic "statewide" ALFRESCO model spatial domain.}
#' \item{\code{swfmoBuffers}}{Statewide fire management options buffered zone map layer for the union of 15-km buffered modified, full and critical management areas.}
#' \item{\code{swfmoRatios}}{Statewide fire management options ratios map layer.}
#' }
#'
#' @docType package
#' @name snapgrid
NULL

#' Alaska Statewide ALFRESCO vegetation input.
#'
#' A raster layer of the ALFRESCO vegetation input conforming to the classic "statewide" domain.
#'
#' @format A RasterLayer.
"swveg"

#' Alaska Statewide ALFRESCO fire management options buffered zone.
#'
#' A raster layer of the ALFRESCO fire management options 15-km buffered zone for the union of modified, full and critical management areas,
#' conforming to the classic "statewide" domain.
#'
#' @format A RasterLayer.
"swfmoBuffers"

#' Alaska Statewide ALFRESCO fire management options ratios.
#'
#' A raster layer of the ALFRESCO fire management options 15-km buffered zone ratios conforming to the classic "statewide" domain.
#' All values are greater than or equal to one. Grid cells equal to one do not experience fire suppression in ALFRESCO.
#' ALl other cells experience fire suppression to a degree based on their relative ratios.
#' The mechanism for this in ALFRESCO is that this map layer is used to weight the fire sensitivity and/or ignition factor ALFRESCO
#' input geotiffs.
#'
#' @format A RasterLayer.
"swfmoRatios"
