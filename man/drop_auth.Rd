% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/drop_auth.R
\name{drop_auth}
\alias{drop_auth}
\title{Authentication for Dropbox}
\usage{
drop_auth(new_user = FALSE, key = "mmhfsybffdom42w",
  secret = "l8zeqqqgm1ne5z0", cache = TRUE)
}
\arguments{
\item{new_user}{Default is \code{FALSE}. Set to \code{TRUE} if you need to
switch to a new user account or just flush existing token.}

\item{key}{Your application key. rdrop2 already comes with a key/secret but
you are welcome to swap out with our own. Since these keys are shipped with
the package, there is a small chance they could be voided if someone abuses
the key. So if you plan to use this in production, or for an internal tool,
the recommended practice is to create a new application on Dropbox and use
those keys for your purposes.}

\item{secret}{Your application token. rdrop2 already comes with a key/secret
but you are welcome to swap out with our own.}

\item{cache}{By default your credentials are locally cached in a file called
\code{.httr-oauth}. Set to FALSE if you need to authenticate separately each
time.}
}
\description{
This function authenticates you into Dropbox. The documentation for the
\href{https://www.dropbox.com/developers/core/docs}{core Dropbox API} provides
more details including alternate methods if you desire to reimplement your
own.
}
\examples{
\dontrun{
drop_auth()
# If you want to overwrite an existing tokend and switch to a new user,
# set new_user to TRUE.
drop_auth(new_user = TRUE)
}
}

