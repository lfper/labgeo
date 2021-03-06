% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_data_polygon.R
\name{extract_data_polygon}
\alias{extract_data_polygon}
\title{extract_data_polygon}
\usage{
extract_data_polygon(path_raster, raster_type = ".asc", path_poligon,
  name_poligon, field_class = "gridcode", field_poligon = "Id",
  cpu_cores = 1, remove_NA = TRUE)
}
\arguments{
\item{raster_type}{Tipo do arquivo raster a ser lido (.tif, .asc, .img ... )}

\item{path_poligon}{Path para a pasta onde esta os poligonos da amostragem}

\item{name_poligon}{nome do arquivo de poligono sem a raster_type}

\item{field_class}{nome do campo do shape de poligonos conte a identificacao da classe}

\item{field_poligon}{nome do campo do shape de poligonos conte a identificacao do poligono}

\item{cpu_cores}{number of cpu cores used in processing}

\item{remove_NA}{remover os valores NA durante a extracao dos dados}
}
\description{
This function allows extract data from raster layers from polygon areas
}
\details{
details
}
\examples{
\dontrun{
df = extrai_poligono_raster(pathraster = "./bandas", extensao = "*.asc",
                            pathpoligono = "./amostragem", filepoligono = "poligonos",
                            fieldclasse = "gridcode", fieldpoligono = "Id")
}
}
\author{
Elpidio Filho, \email{elpidio@ufv.br}
}
\keyword{data}
\keyword{extract}
\keyword{raster}
