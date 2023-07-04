## build detectbase container
---

builds a base image to be used by other image detectors, compatible with yolov7 <br>
**make sure you have a local docker registry running!**<br>
to create a local registry run 

```bash
sudo docker run -d -p 5000:5000 --restart=always --name registry registry:2
```

this will create a local docker registry at port 5000,
then you can build detect base , by running:

```bash
sudo chmod 701 build_detectbase.sh
sudo ./build_detectbase.sh
```
