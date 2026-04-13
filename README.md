# Laboratorium5
# BUILD
```
docker build --build-arg VERSION=3.0 -t lab5:v1 .
```
<img width="945" height="289" alt="image" src="https://github.com/user-attachments/assets/064a4a0a-ae03-40f4-aaac-e76c4121fbc7" />

# RUN
```
docker run -d -p 8080:80 --name lab5 --hostname laboratorium5 lab5:v1
```
<img width="945" height="43" alt="image" src="https://github.com/user-attachments/assets/2174daa6-2e66-4314-bc88-1f24103376aa" />

```
docker run -d -p 8081:80 --name lab5-2 --hostname laboratorium5-2 lab5:v1
```
<img width="945" height="45" alt="image" src="https://github.com/user-attachments/assets/d7d0fc46-73c6-45b7-bdcc-0cf7f3e76f65" />

# TEST
```
docker ps
```
<img width="945" height="59" alt="image" src="https://github.com/user-attachments/assets/114ffcb8-eea8-4c12-add6-25ce9bdebd5c" />

# 
<img width="662" height="256" alt="image" src="https://github.com/user-attachments/assets/07bcf378-076f-49a4-9ca4-3d3b4b755d95" />
<img width="658" height="261" alt="image" src="https://github.com/user-attachments/assets/bd1bd4e0-3592-4c8e-b434-5e281d42bcff" />

