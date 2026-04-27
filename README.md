# docker-nginx-alpine-full-webpage
```
# 🌐 Ahmed Kamel - First DevOps Project: Full Website with Nginx & Docker
> A complete, production-ready website containerized with Docker, served via Nginx, and published to Docker Hub. This project demonstrates a professional DevOps workflow from development to deployment.
---
![project](/project-image.png)
![page1](/page1.png)
![page2](/page2.png)
![page3](/page3.png)
## 📋 Project Overview
This repository contains a **full-featured website** (HTML, CSS, JS, assets, and routing) packaged into a lightweight Docker container. The workflow covers building the image, running it locally, committing the container state, pushing to Docker Hub, and cleaning up resources.


## 📁 Project Structure
```
2nd-project/
├── sample-website/          # Full website source code (all pages, assets, styles, scripts)
│   ├── index.html           # Main entry point
│   ├── css/                 # Stylesheets
│   ├── js/                  # Client-side scripts
│   └── assets/              # Images, fonts, media
├── Dockerfile               # Container build configuration
└── README.md                # Project documentation
```


## 🐳 Dockerfile
```dockerfile
FROM nginx:alpine
COPY ./sample-website /usr/share/nginx/html
EXPOSE 80
```

## 🚀 Deployment Workflow (Terminal Commands)
Follow these steps to build, run, and deploy the project:

### 1️⃣ Setup & Build
```bash
pwd
vim Dockerfile
cat Dockerfile
docker build -t website .
docker images
```

### 2️⃣ Run & Test Locally
```bash
docker run -it --rm -d -p 3000:80 --name web website
docker ps
```
✅ **Access your full website:** `http://localhost:3000`

### 3️⃣ Commit & Push to Docker Hub
```bash
docker commit web oziii/full-web-app
docker images
docker push oziii/full-web-app:latest
```

### 4️⃣ Cleanup & Audit
```bash
docker rmi -f website:latest 
docker rm -f 77f0
docker ps
docker images
history
```

## 🔧 Troubleshooting & Notes
| Issue | Solution |
|-------|----------|
| `port 3000 already in use` | Change host port: `docker run -it --rm -d -p 3001:80 --name web website` |
| `COPY failed: no such file or directory` | Ensure `./sample-website/` folder exists and contains all website files |
| `docker push` rejected | Run `docker login` first and verify repository name matches your Docker Hub account |
| Website not loading or assets broken | Check container logs: `docker logs web` and verify relative paths in HTML/CSS/JS |

> 💡 **Note:** The `COPY ./sample-website /usr/share/nginx/html` directive copies your entire website into Nginx's default serving directory. Ensure all internal links and asset paths are relative to work seamlessly inside the container.

## 🤝 Connect With Me
🔗 **LinkedIn:** [linkedin.com/in/eng--ahmed-kamel](https://www.linkedin.com/in/eng--ahmed-kamel/)

## 📜 License
MIT © 2026 Ahmed Kamel
```
