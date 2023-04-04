# Introduction

Obtain the real IP address of the client.

# Build the image

```
docker build -t xxx/ip1201
docker run -d -p 8000:8000 xxx/ip1201
```

# Call

```
curl "http://127.0.0.1:8000/"
```
