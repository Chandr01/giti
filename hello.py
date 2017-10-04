def wsgi_app(environ, start_response):
    lines = environ['QUERY_STRING'].split('&')
    lin = "\n".join(lines)
    start_response("200 OK", [("Content-Type", "text/plain")])    
    return [lin]