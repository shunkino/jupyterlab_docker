# About
This is the image of my jupyterlab environment.

# Usage
Should work with command like:

```
docker run --user root --restart=always -d --name jupyter -p 8888:8888 --network pcap-analysis -e JUPYTER_ENABLE_LAB=yes -v $(pwd):/home/jovyan/work shunkin/jupyterlab:latest
```
