Common http status codes:
    Informational codes are 1xx
    Code 200 is common and means that everything is ok.
    304 means that a user has made a GET request, but nothing has been modified (AKA there is no message-body)
    4xx codes beginning with 4 indicate that there is an issue somewhere. Either the page cannot be found, or a the client doesn't have access to it, etc.

GET requests data from a source aka all the queries one makes to retrieve data are using the GET http method.
POST submits data to a source. Often form submissions and uploads are POST.

A cookie is a small text file that is saved on the user's/client's computer that is created when the user first visits a page (generally a page with a log in feature). The info in the file is sent back to the server when the user visits the page. Thus, the server recognizes the computer and the user via the cookie. I assume that the client's computer makes a GET request based on what a user is trying to do online, then the server recognizes the user's computer via a cookie.

