#' Vizualization of palettes
#'
#' Visualize a single palette from the list of available palettes
#' To see list of available palettes use names(tanagr_palettes)
#'
#' @param palette_name the name of the palette
#'
#' @examples
#' viz_palette("bangsia_edwardsi")
#' viz_palette("tangara_velia")
#'
#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb

viz_palette <- function(palette_name) {

  pal <- tanagr_palettes[[palette_name]]

  if (is.null(pal))
    stop("Palette not found.")

  n <- length(pal)

  # save the old values of mar, and reset when done (see Hadley's
  # book on writing R packages)
  old <- par(mar = c(1, 1, 1, 1))
  on.exit(par(old))

  image(x = 1:n,
        y = 1,
        z = as.matrix(1:n),
        col = pal,
        ylab = "",
        xaxt = "n",
        yaxt = "n",
        bty = "n")#,
  #main = paste0(name, " (", length(pal), " colors in palette)"))

  rect(xleft = 0,
       ybottom = 0.9,
       xright = n + 1,
       ytop = 1.1,
       col = rgb(1, 1, 1, 0.6),
       border = NA)

  text(x = (n + 1) / 2,
       y = 1,
       labels = paste(palette_name),
       cex = 2,
       family = "Helvetica")
}
