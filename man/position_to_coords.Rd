% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/position_to_coords.R
\name{position_to_coords}
\alias{position_to_coords}
\alias{position_to_coords.data.frame}
\alias{position_to_coords.matrix}
\alias{position_to_coords.numeric}
\alias{position_to_coords.double}
\alias{position_to_coords.integer}
\alias{position_to_coords64}
\alias{position_to_coords64.data.frame}
\alias{position_to_coords64.matrix}
\alias{position_to_coords64.numeric}
\alias{position_to_coords64.double}
\alias{position_to_coords64.integer64}
\alias{position_to_coords64.bitstring}
\title{Convert Grid Positions to Coordinates}
\usage{
position_to_coords(x, ..., n = 10L, extent = NULL)

\method{position_to_coords}{data.frame}(x, ..., n, extent, coords = c(1, 2), attach = TRUE)

\method{position_to_coords}{matrix}(x, ..., n, extent, coords = c(1, 2), attach = TRUE)

\method{position_to_coords}{numeric}(x, y, ..., n, extent)

\method{position_to_coords}{double}(x, y, ..., n, extent)

\method{position_to_coords}{integer}(x, y, ..., n, extent)

position_to_coords64(x, ..., n = 10L, extent = NULL)

\method{position_to_coords64}{data.frame}(x, ..., n, extent, coords = c(1, 2), attach = TRUE)

\method{position_to_coords64}{matrix}(x, ..., n, extent, coords = c(1, 2), attach = TRUE)

\method{position_to_coords64}{numeric}(x, y, ..., n, extent)

\method{position_to_coords64}{double}(x, y, ..., n, extent)

\method{position_to_coords64}{integer64}(x, y, ..., n, extent)

\method{position_to_coords64}{bitstring}(x, y, ..., n, extent)
}
\arguments{
\item{x}{One of: Integer vector, \code{data.frame}, or \code{matrix}.
If a numeric vector, then it corresponds to Row positions.}

\item{...}{Unused.}

\item{n}{Exponent to the dimensions of the underlying grid. The Hilbert
Curve indices are based on a \verb{2^n x 2^n} grid. This number
must be less than 15 due to the 32-bit implementation of R.}

\item{extent}{Named vector with names \code{xmax}, \code{xmin}, \code{ymax}, \code{ymin}.
Corresponds to the bounding box of the given coordinates.
If \code{extent} is \code{NULL}, then the function will throw an exception.}

\item{coords}{Column names or indices of a \code{data.frame}/\code{matrix} that
contain the positions.}

\item{attach}{If \code{TRUE}, adds the coordinates as new columns to the given
\code{data.frame}/\code{matrix}. This will \emph{replace} the position columns.}

\item{y}{Integer vector corresponding to Column positions.}
}
\value{
A \code{data.frame} containing the coordinates as \code{numeric}
columns \code{x} and \code{y}, or the original object
(\code{data.frame} or \code{matrix}) with the positions
replaced with the coordinates.
}
\description{
Convert Grid Positions to Coordinates
}
