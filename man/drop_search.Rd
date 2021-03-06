% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/drop_search.R
\name{drop_search}
\alias{drop_search}
\title{Returns metadata for all files and folders whose filename contains the given
search string as a substring.}
\usage{
drop_search(query = NULL, path = NULL, file_limit = 1000,
  include_deleted = FALSE, locale = NULL, include_membership = FALSE,
  dtoken = get_dropbox_token())
}
\arguments{
\item{query}{The search string. This string is split (on spaces) into
individual words. Files and folders will be returned if they contain all
words in the search string.}

\item{path}{This is required The path to the new folder to create relative to
root.}

\item{file_limit}{Default is 10000. (max is 25000). When listing a folder,
the service won't report listings containing more than the specified amount
of files and will instead respond with a 406 (Not Acceptable) status
response.}

\item{include_deleted}{If this parameter is set to true, then files and
folders that have been deleted will also be included in the search.}

\item{locale}{Dropbox uses the locale parameter to specify language settings
of content responses. If your app supports any language other than English,
insert the appropriate IETF language tag. When a supported language is
specified, Dropbox will returned translated size and/or user_error fields
(where applicable)}

\item{include_membership}{If true, metadata for a shared folder will
include a list of members and a list of groups.}

\item{dtoken}{The Dropbox token generated by \code{\link{drop_auth}}.
rdrop2 will try to automatically locate your local credential cache and use
them. However, if the credentials are not found, the function will initiate
a new authentication request. You can override this by pointing to a
different location where your credentials are stored.}
}
\description{
Returns metadata for all files and folders whose filename contains the given
search string as a substring.
}
\examples{
\dontrun{
# If you know me, you know why this query exists
drop_search('gif') \%>\% select(path, is_dir, mime_type)
}
}

