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
#' \item{\code{akcan2km}}{Alaska/western Canada 2-km downscaled climate domain template layer.}
#' \item{\code{akcan1km}}{Alaska/western Canada 1-km ALFRESCO domain template layer.}
#' \item{\code{ak1km}}{"Statewide" classic ALFRESCO domain template layer.}
#' \item{\code{swveg}}{Vegation map layer for the classic "statewide" ALFRESCO model spatial domain.}
#' \item{\code{swfmoBuffer}}{Statewide fire management options map layer using 15-km buffered management areas.}
#' \item{\code{swfmoRatios}}{Statewide fire management options ratios map layer.}
#' }
#'
#' @docType package
#' @name snapgrid
NULL

#' Alaska/western Canada 2-km downscaled climate template raster layer.
#'
#' A raster layer of the 2-km Alaska/western Canada PRISM extent used for the SNAP climate downscaling spatial domain.
#' All non-NA values are set to 1.
#'
#' @format A RasterLayer.
"akcan2km"

#' Alaska/western Canada 1-km ALFRESCO template raster layer.
#'
#' A raster layer of the 1-km Alaska/western Canada PRISM extent used for the SNAP climate downscaling domain, resampled to the 1-km ALFRESCO model spatial domain.
#' All non-NA values are set to 1.
#'
#' @format A RasterLayer.
"akcan1km"

#' Alaska 1-km ALFRESCO template raster layer.
#'
#' A raster layer of the 1-km Alaska classic "statewide" ALFRESCO model spatial domain.
#' All non-NA values are set to 1.
#'
#' @format A RasterLayer.
"ak1km"

#' Alaska Statewide ALFRESCO vegetation input.
#'
#' A raster layer of the ALFRESCO vegetation input conforming to the classic "statewide" spatial domain.
#' The ID codes for the raster layer are as follows:
#'
#' \describe{
#' \item{\code{0}}{No vegetation/non-burnable area, e.g. mountain or water body}
#' \item{\code{1}}{Alpine tundra}
#' \item{\code{2}}{Black spruce}
#' \item{\code{3}}{White spruce}
#' \item{\code{4}}{Deciduous tree species}
#' \item{\code{5}}{Shrub tundra}
#' \item{\code{6}}{Graminoid tundra}
#' \item{\code{7}}{Wetland tundra}
#' }
#'
#' @format A RasterLayer.
"swveg"

#' Alaska Statewide ALFRESCO fire management options buffered zone.
#'
#' A raster layer of the ALFRESCO fire management options using 15-km buffered management areas,
#' conforming to the classic "statewide" spatial domain.
#' The ID codes for the raster layer are as follows:
#'
#' \describe{
#' \item{\code{0}}{No fire management}
#' \item{\code{1}}{Limited}
#' \item{\code{2}}{Modified}
#' \item{\code{3}}{Critical}
#' \item{\code{4}}{Full}
#' }
#'
#' @format A RasterLayer.
"swfmoBuffer"

#' Alaska Statewide ALFRESCO fire management options ratios.
#'
#' A raster layer of the ALFRESCO fire management options 15-km buffered zone ratios conforming to the classic "statewide" spatial domain.
#' All values are greater than or equal to one. Grid cells equal to one do not experience fire suppression in ALFRESCO.
#' ALl other cells experience fire suppression to a degree based on their relative ratios.
#' The mechanism for this in ALFRESCO is that this map layer is used to weight the fire sensitivity and/or ignition factor ALFRESCO
#' input geotiffs.
#'
#' Ratios for modified, full and critical zones are 1.25, 1.5 and 1.75, respectively. All other areas are set to 1.0.
#'
#' @format A RasterLayer.
"swfmoRatios"
