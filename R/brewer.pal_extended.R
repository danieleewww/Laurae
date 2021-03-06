#' RColorBrewer's Extended Palettes without Warning
#'
#' Creates nice looking color palettes especially for thematic maps. This modification ColorBrewer palette extends to an infinite amount of colors. You may choose a palette inside: between \code{c("None", "BrBG", "PiYG", "PRGn", "PuOr", "RdBu", "RdGy", "RdYlBu", "RdYlGn", "Spectral", "Accent", "Dark2", "Paired", "Pastel1", "Pastel2", "Set1", "Set2", "Set3", "Blues", "BuGn", "BuPu", "GnBu", "Greens", "Greys", "Oranges", "OrRd", "PuBu", "PuBuGn", "PuRd", "Purples", "RdPu", "Reds", "YlGn", "YlGnBu", "YlOrBr", "YlOrRd")}.
#' 
#' @param n Type: numeric. The number of colors you want back.
#' @param name Type: character. The palette name you can find via \code{brewer.pal.info} when \code{RColorBrewer} is loaded in memory.
#' 
#' @return A color palette in a numeric vector following the hexadecimal RGB format (\code{#RRGGBB}) ready to be used.
#' 
#' @examples
#' library(RColorBrewer)
#' brewer.pal_extended(20, "BrBG") # Generate a palette of 20 colors when it cannot
#' 
#' @export

brewer.pal_extended <- function(n, name) {
  return(colorRampPalette(suppressWarnings(RColorBrewer::brewer.pal(n, name)))(n))
}