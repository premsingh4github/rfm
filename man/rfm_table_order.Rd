% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfm-table-transaction.R
\name{rfm_table_order}
\alias{rfm_table_order}
\title{RFM table (transaction data)}
\usage{
rfm_table_order(data = NULL, customer_id = NULL, order_date = NULL,
  revenue = NULL, analysis_date = NULL, recency_bins = 5,
  frequency_bins = 5, monetary_bins = 5, ...)
}
\arguments{
\item{data}{A \code{data.frame} or \code{tibble}.}

\item{customer_id}{Unique id of the customer.}

\item{order_date}{Date of the transaction.}

\item{revenue}{Revenue from the customer.}

\item{analysis_date}{Date of analysis.}

\item{recency_bins}{Number of bins for recency.}

\item{frequency_bins}{Number of bins for frequency.}

\item{monetary_bins}{Number of bins for monetary.}

\item{...}{Other arguments.}
}
\value{
\code{rfm_table_order} returns a tibble with the following columns:

\item{customer_id}{Unique id of the customer.}
\item{date_most_recent}{Date of the most recent transaction.}
\item{recency_days}{Number of days since the most recent transaction.}
\item{transaction_count}{Total number of transactions of the customer.}
\item{amount}{Revenue from the customer.}
\item{recency_score}{Recency score of the customer.}
\item{frequency_score}{Frequency score of the customer.}
\item{monetary_score}{Monetary score of the customer.}
\item{rfm_score}{RFM score of the customer.}
}
\description{
Recency, frequency, monetary and RFM score.
}
\examples{
analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
rfm_table_order(rfm_data_orders, customer_id, order_date, revenue, analysis_date)

}
