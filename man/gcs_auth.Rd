% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auth.R
\name{gcs_auth}
\alias{gcs_auth}
\title{Authenticate this session}
\usage{
gcs_auth(token = NULL, new_user = FALSE, no_auto = FALSE)
}
\arguments{
\item{token}{An existing token object, or filepath to one}

\item{new_user}{If TRUE, reauthenticate via Google login screen}

\item{no_auto}{Will ignore auto-authentication settings if TRUE}
}
\value{
Invisibly, the token that has been saved to the session
}
\description{
A wrapper for \link[googleAuthR]{gar_auth} and \link[googleAuthR]{gar_auth_service}
}
\details{
If you have set the environment variable \code{GCS_AUTH_FILE} to a valid file location,
  the function will look there for authentication details.
Otherwise it will look in the working directory for the `.httr-oauth` file, which if not present
  will trigger an authentication flow via Google login screen in your browser.

If \code{GCS_AUTH_FILE} is specified, then \code{gcs_auth()} will be called upon loading the package
  via \code{library(googleCloudStorageR)},
  meaning that calling this function yourself at the start of the session won't be necessary.

\code{GCS_AUTH_FILE} can be either a token generated by \link[googleAuthR]{gar_auth} or
  service account JSON ending with file extension \code{.json}

If you want to use your own project, set your own clientID/secret by 
  using \link[googleAuthR]{gar_set_client}
}
