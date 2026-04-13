# Laboratorium5
# BUILD
```
docker build --build-arg VERSION=3.0 -t lab5:v1 .
```
<img width="945" height="418" alt="image" src="https://github.com/user-attachments/assets/3295245d-6c4e-4cf3-98af-a655d304237a" />


# RUN
```
docker run -d -p 8080:80 --name lab5 --hostname laboratorium5 lab5:v1
```
<img width="945" height="41" alt="image" src="https://github.com/user-attachments/assets/8edd4863-3763-4e92-9ffe-0ec2935f979b" />


```
docker run -d -p 8081:80 --name lab5-2 --hostname laboratorium5-2 lab5:v1
```
<img width="945" height="40" alt="image" src="https://github.com/user-attachments/assets/0b5ee045-53d3-4812-9e20-c27503c677ea" />


# TEST
```
docker ps
```
<img width="945" height="59" alt="image" src="https://github.com/user-attachments/assets/ad5e83fb-bd55-40cc-915f-74df4db5e416" />


# 
<img width="662" height="256" alt="image" src="https://github.com/user-attachments/assets/07bcf378-076f-49a4-9ca4-3d3b4b755d95" />
<img width="658" height="261" alt="image" src="https://github.com/user-attachments/assets/bd1bd4e0-3592-4c8e-b434-5e281d42bcff" />

