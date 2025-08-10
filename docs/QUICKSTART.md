# 🚀 DevControl - Schnellstart-Anleitung

## 📋 Voraussetzungen

Stelle sicher, dass folgende Tools installiert sind:

- **Node.js 20+** (für Angular Frontend)
- **Java 17+** (für Spring Boot Backend)  
- **Docker Desktop** (für PostgreSQL und Container)
- **Git** (für Versionierung)

## ⚡ Schnellstart

### 1. **Repository klonen**
```bash
git clone <repository-url>
cd DevControl
```

### 2. **Docker starten**
Stelle sicher, dass Docker Desktop läuft.

### 3. **Development Setup ausführen**
```powershell
# Windows
PowerShell -ExecutionPolicy Bypass -File scripts\setup-dev-clean.ps1

# Linux/Mac
chmod +x scripts/setup-dev.sh
./scripts/setup-dev.sh
```

### 4. **Anwendung starten**

#### Backend starten:
```powershell
cd Backend\devcontrol-backend
.\mvnw.cmd spring-boot:run
```

#### Frontend starten (neues Terminal):
```powershell
cd Frontend\devcontrol-frontend
npm start
```

## 🌐 Zugriff

- **Frontend**: http://localhost:4200
- **Backend API**: http://localhost:8080/api
- **API Dokumentation**: http://localhost:8080/api/swagger-ui.html
- **PostgreSQL**: localhost:5432

## 🐛 Problembehebung

### Maven Wrapper Probleme
Falls `./mvnw.cmd` nicht funktioniert:
```powershell
# Maven direkt installieren
winget install Apache.Maven

# Dann verwenden:
cd Backend\devcontrol-backend
mvn spring-boot:run
```

### Docker Probleme
```powershell
# Container Status prüfen
docker ps

# Logs anzeigen
docker-compose -f docker/docker-compose.yml logs postgres

# Container neu starten
docker-compose -f docker/docker-compose.yml restart postgres
```

### Port-Konflikte
Falls Ports bereits belegt sind:
- Frontend: Ändere Port in `Frontend/devcontrol-frontend/angular.json`
- Backend: Ändere `server.port` in `Backend/devcontrol-backend/src/main/resources/application.properties`

## 📂 Projektstruktur

```
DevControl/
├── Frontend/devcontrol-frontend/    # Angular 18 Frontend
├── Backend/devcontrol-backend/      # Spring Boot Backend
├── docker/                          # Docker Compose Setup
├── docs/                           # Dokumentation
├── scripts/                        # Setup Scripts
└── .gitlab-ci.yml                  # CI/CD Pipeline
```

## 🧪 Tests ausführen

```powershell
# Frontend Tests
cd Frontend\devcontrol-frontend
npm test

# Backend Tests  
cd Backend\devcontrol-backend
.\mvnw.cmd test
```

## 🐳 Docker Deployment

```powershell
# Alle Services starten
cd docker
docker-compose up -d

# Logs verfolgen
docker-compose logs -f
```

---

📌 **Hinweis**: Erste Startup kann länger dauern, da Dependencies heruntergeladen werden.
