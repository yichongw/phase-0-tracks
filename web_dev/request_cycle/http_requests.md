What are some common HTTP status codes?
Five of the most popular error codes are 403, 404, 500, 503, and 504.
The 404 status code means the requested resource is no longer available or, more specifically, just not found. 
Getting a 403 status code back from an HTTP request means access to the resource is forbidden.
The 500 status code is a server-side error code. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned. 
The 503 (service unavailable) status code could be a temporary problem. It basically means the web server isn’t available. 
The 504 status code indicating a gateway timeout. A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out. 

What is the difference between a GET request and a POST request? When might each be used?
GET request requests data ffrom a specified resource.
POST request submits data to be processed to a specified resource. GET only loads data, as in a picture or text, while POST submits data, like the informaiton entered into a form by a user.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies are often included in HTTP requests as a way to inform the server of the browser indentity or history on the web site.