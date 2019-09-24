#' Chooses palette to use with ggplot2
#'
#' It generates a palette by linear interpolation. This function is not used on its own; it is called by other functions.
#'
#' @param palette_name the name of the palette
#'
#' @example
#' tanagr_pal("buthraupis_montana")(5) # original palette
#' tanagr_pal("buthraupis_montana")(10) # interpolation 1:10 colors
#' tanagr_pal("buthraupis_montana")(100) # interpolation 1:100 colors
#'
#' @export
#'
#' @import grDevices

tanagr_pal <- function(palette_name) {
  pal <- tanagr_palettes[[palette_name]]
  return(colorRampPalette(pal))
}

#' Creates palette to use with ggplot2 (scale_color)
#'
#' It generates a palette by linear interpolation for scale_color
#'
#' @rdname scale_color_tanagr
#'
#' @param palette the name of the palette
#'
#' @param discrete whether to use a discrete or continuous color palette (boolean)
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) + geom_point(alpha = 0.5, size  = 3) + geom_density2d() + theme_bw(base_size=12) + scale_color_tanagr(palette_name = "stilpnia_preciosa")
#'
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Petal.Width)) + geom_point(alpha = 0.6, size  = 4) +  theme_bw(base_size=12) + scale_color_tanagr(palette_name = "chlorochrysa_nitidissima", discrete = FALSE)
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_tanagr <- function(palette_name, discrete = TRUE, ...) {
  if (discrete) {
    discrete_scale(aesthetics = "color",
                   scale_name = paste0("tanagr_", palette_name),
                   palette = tanagr_pal(palette_name),
                   ...)
  } else {
    scale_color_gradientn(...,
                          colors = tanagr_pal(palette_name)(256),
                          aesthetics = "color")
  }
}

#' Creates palette to use with ggplot2 (scale_color)
#'
#' It generates a palette by linear interpolation for scale_fill
#'
#' @param palette the name of the palette
#'
#' @param discrete whether to use a discrete or continuous color palette (boolean)
#'
#' @param ... additional arguments to pass to scale_fill_gradientn
#'
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(manufacturer, fill = manufacturer)) + geom_bar() + theme(axis.text.x = element_text(angle = 45, hjust = 1), panel.background = element_blank()) + scale_fill_tanagr(palette = "stilpnia_preciosa", guide = "none")
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_tanagr <- function(palette_name, discrete = TRUE, ...) {
  if (discrete) {
    discrete_scale(aesthetics = "fill",
                   scale_name = paste0("tanagr_", palette_name),
                   palette = tanagr_pal(palette_name),
                   ...)
  } else {
    scale_fill_gradientn(...,
                          colors = tanagr_pal(palette_name)(256),
                          aesthetics = "color")
  }
}
