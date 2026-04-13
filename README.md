# Laboratorium5
BUILD

docker 
build --build-arg VERSION=3.0 -t lab5:v1 .
<img width="945" height="293" alt="image" src="https://github.com/user-attachments/assets/38078bfd-f820-4da8-9086-7dd690b5f2de" />

RUN

docker run -d -p 8080:80 --name lab5 --hostname laboratorium5 lab5:v1
<img width="945" height="48" alt="image" src="https://github.com/user-attachments/assets/8fc22dd8-9201-4390-8d3f-d84ccb5eb46c" />
docker run -d -p 8081:80 --name lab5-2 --hostname laboratorium5-2 lab5:v1
<img width="945" height="42" alt="image" src="https://github.com/user-attachments/assets/19019737-7e8a-40f5-964c-68c923a8ca9d" />

TEST

docker ps
<img width="945" height="55" alt="image" src="https://github.com/user-attachments/assets/da4d2b03-55b6-4d70-a5bc-043a8338e03e" />

<img width="662" height="256" alt="image" src="https://github.com/user-attachments/assets/07bcf378-076f-49a4-9ca4-3d3b4b755d95" />
<img width="658" height="261" alt="image" src="https://github.com/user-attachments/assets/bd1bd4e0-3592-4c8e-b434-5e281d42bcff" />

