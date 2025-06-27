# 🗨️ Express Chat App

A simple real-time chat application built with Express.js and Socket.IO, with CI/CD powered by Jenkins.

---

## 🚀 Features
- Real-time messaging with WebSockets
- Lightweight frontend using HTML/CSS/JS
- CI/CD pipeline with Jenkins (lint, test, deploy)

---

## 📸 Screenshot
![chat demo](screenshot.png) <!-- optional, add image if available -->

---

## 📦 Installation

```bash
npm install
npm start
```

Then open [http://localhost:3000](http://localhost:3000)

---

## 🧪 Lint & Test

```bash
npm run lint
npm test
```

---

## 🛠 Project Structure

```
express-chat/
│
├── app.js            # Server logic (Express + Socket.IO)
│
├── public/           # Frontend
│   ├── index.html
│   └── script.js
│
├── package.json
│
├── Jenkinsfile       # CI/CD pipeline
│
└── scripts/
    └── deploy.bat    # Windows deployment script
```

---

## ⚙️ CI/CD with Jenkins
This project uses a declarative `Jenkinsfile` with the following stages:
- Install dependencies
- Lint source code
- Run test
- Deploy to server via `deploy.bat`

---

## 📄 License
MIT
