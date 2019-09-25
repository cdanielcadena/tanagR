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
#' @param palette_name the name of the palette
#'
#' @param discrete whether to use a discrete or continuous color palette (boolean)
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
#'  geom_point(size  = 3) +
#'  geom_density2d() +
#'  theme_bw(base_size=12) +
#'  scale_color_tanagr(palette_name = "stilpnia_preciosa")
#'
#' ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Petal.Width)) +
#'  geom_point(size  = 4) +
#'  theme_bw(base_size=12) +
#'  scale_color_tanagr(palette_name = "chlorochrysa_nitidissima", discrete = FALSE)
#'
#' @export
#'
#' @importFrom ggplot2 scale_color_manual scale_color_gradientn

scale_color_tanagr <- function(palette_name, discrete = TRUE, ...) {
  palette_t = tanagr_palettes[[palette_name]]
  n = length(palette_t)
  pal = tanagr_pal(palette_name)
  cols = pal(n)

  if (discrete) {
    scale_color_manual(...,
                        aesthetics = "color",
                        values = cols)
  } else {
    scale_color_gradientn(...,
                          colors = pal(256),
                          aesthetics = "color")
  }
}

#' Creates palette to use with ggplot2 (scale_color)
#'
#' It generates a palette by linear interpolation for scale_fill
#'
#' @param palette_name the name of the palette
#'
#' @param discrete whether to use a discrete or continuous color palette (boolean)
#'
#' @param ... additional arguments to pass to scale_fill_gradientn
#'
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(fl, fill = fl)) +
#'  geom_bar() +
#'  theme(axis.text.x = element_text(hjust = 1), panel.background = element_blank()) +
#'  scale_fill_tanagr(palette = "stilpnia_preciosa", guide = "none")
#'
#' library(gridExtra)
#' g = ggplot(faithfuld, aes(waiting, eruptions)) +
#'  geom_raster(aes(fill = density)) +
#'   theme_bw() +
#'   theme(panel.grid=element_blank())
#'
#' grid.arrange(
#'    g + scale_fill_tanagr(palette = "cyanerpes_cyaneus", guide = "none", discrete  = FALSE),
#'    g + scale_fill_tanagr(palette = "dacnis_berlepschi", guide = "none", discrete  = FALSE),
#'    g + scale_fill_tanagr(palette = "ramphocelus_sanguinolentus", guide = "none", discrete  = FALSE),
#'    g + scale_fill_tanagr(palette = "tangara_seledon", guide = "none", discrete  = FALSE),
#'    ncol = 2, nrow = 2
#'    )
#' @export
#'
#' @importFrom ggplot2 scale_discrete_manual scale_fill_gradientn

scale_fill_tanagr <- function(palette_name, discrete = TRUE, ...) {
  palette_t = tanagr_palettes[[palette_name]]
  n = length(palette_t)
  pal = tanagr_pal(palette_name)
  cols = pal(n)

  if (discrete) {
    scale_discrete_manual(aesthetics = "fill",
                          values = cols,
                          ...)
  } else {
    scale_fill_gradientn(...,
                         colors = pal(256))
  }
}
