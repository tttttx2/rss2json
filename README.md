A simple Flask HTTP Microservice to parse rss/atom feeds and return it as json.

The container is pushed to dockerhub https://hub.docker.com/r/tttttx2/rss2json

After the container is running, you can send an HTTP GET request to http://localhost:5000/?url=<rss_url> where <rss_url> is the URL of the RSS feed you want to retrieve. The response will be the RSS feed in JSON format.
