% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coordsys.R
\name{setGrid}
\alias{relocDataRange}
\alias{relocDataZoom}
\alias{relocLegend}
\alias{relocTimeline}
\alias{relocTitle}
\alias{relocToolbox}
\alias{setGrid}
\title{Set \code{grid} of Echarts Widgets And Pane}
\usage{
setGrid(chart, index = 1, left = NULL, top = 60, right = "10\%",
  bottom = 60, width = NULL, height = NULL, containLabel = FALSE,
  bgColor = NULL, borderColor = NULL, borderWidth = 1,
  shadowBlur = NULL, shadowColor = NULL, shadowOffsetX = 0,
  shadowOffsetY = 0, show = TRUE, z = 2, zlevel = 0,
  widget = c("pane", "timeline", "legend", "title", "dataZoom", "dataRange",
  "toolbox"), ...)

relocTitle(chart, ...)

relocLegend(chart, ...)

relocDataZoom(chart, ...)

relocDataRange(chart, ...)

relocTimeline(chart, ...)

relocToolbox(chart, ...)
}
\arguments{
\item{chart}{\code{echarts} object generated by \code{\link{echart}}}

\item{index}{Integer, index of the widget, if widget is 'pane'. Default 1.}

\item{left}{Left margin of the plot area. Default NULL ('auto').}

\item{top}{Top margin of the plot area. Default 60 px.}

\item{right}{Right margin of the plot area. Default '10\%'.}

\item{bottom}{Bottom margin of the plot area. Default 60 px.}

\item{width}{Width of the plot area. Default NULL (automatically configured)}

\item{height}{Height of the plot area. Default NULL (automatically configured)}

\item{containLabel}{Logical, whether grid area contains axis label. Default FALSE.
Set if TRUE when the chart is too small to show the axis label.}

\item{bgColor}{Background color of plot area. Default transparent ('rgba(0,0,0,0)').}

\item{borderColor}{Border color of the plot area. Default '#ccc'.}

\item{borderWidth}{Border width of the plot area. Default 0px (not shown).}

\item{shadowBlur}{Numeric, size of shadow blur. Only effective when \code{show} is TRUE.}

\item{shadowColor}{Color of the shadow. Only effective when \code{show} is TRUE.}

\item{shadowOffsetX}{Numeric, horizontal offset of the shadow. Only effective
when \code{show} is TRUE.}

\item{shadowOffsetY}{Numeric, vertical offset of the shadow. Only effective
when \code{show} is TRUE.}

\item{show}{Logical, if grid is shown. Default FALSE.}

\item{z}{Layer index of the widget. It does not create new canvas. Default 2.}

\item{zlevel}{Layer index of the canvas. Default 0.}

\item{widget}{Widget name to set. Could be \code{c('pane', 'timeline', 'legend',
'title', 'dataZoom', 'dataRange', 'toolbox')}.
\describe{
\item{pane}{the area pane, takes in all the parameters}
\item{timeline}{timeline widget, only use \code{x, y, x2, y2}}
\item{legend, title, dataZoom, dataRange, toolbox, roamController}{other widgets,
only use \code{x, y}}
}}

\item{...}{Other arguments to pass to echarts object.}
}
\value{
A modified echarts object
}
\description{
When an echart object is generated, you can modify it by setting grid using
\code{\link{\%>\%}}. \cr
\strong{It is recommended to put \code{setGrid} at the end of the piped command.} \cr
When used for 'pane', it is only applicable for \code{scatter, point, bubble,
line, area, bar, histogram}. When used for 'timeline', it only take in params
\code{x, y, x2, y2}. When used for 'legend', 'title', 'dataZoom', 'dataRange',
 'toolbox', 'roamController', it only takes in params \code{x, y}.
}
\examples{
\dontrun{
g = iris \%>\% echartR(x=Sepal.Width, y=Petal.Width, series=Species)
g \%>\% setGrid(x=40, y=40, x2=70, y2=30, bgColor='gray90')
}
}
\references{
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~grid}
}
\seealso{
\code{\link{relocWidget}}
}

