# 🚀 Project Name: DevControl – Fullstack Web Platform for Self-Hosted DevOps Tools

> 📌 Hinweis: Dieses Repository ist **öffentlich einsehbar**, aber **nicht Open Source**.  
> Eine **Nutzung, Veränderung oder Weitergabe ist ausschließlich mit schriftlicher Genehmigung** des Eigentümers erlaubt.
> Der Inhalt dieses README ist **nicht final** und wird regelmäßig erweitert.
---

## 🧠 Was ist DevControl?

**DevControl** ist eine produktive Fullstack-Webanwendung, die als zentrales Control-Panel für selbstgehostete DevOps-Tools dient.  
Ziel ist es, die täglichen Aufgaben eines Entwicklers oder DevOps Engineers durch eine integrierte Plattform zu vereinfachen.

**Funktionen:**
- Tool-Verwaltung (z. B. Jenkins, GitLab, Docker, Postgres)
- Zugriff auf Containerlogs, Deployments und Pipelines
- Benutzerdefinierte API-Verbindungen via Postman-ähnlichem Interface
- Integration externer APIs
- Authentifizierung mit Role-Based Access
- Eigenes Dashboard für KPIs

---

## ⚙️ Tech-Stack

| Bereich         | Technologie              |
|----------------|--------------------------|
| Frontend       | [Angular](https://angular.io/) (TypeScript) |
| Backend        | [Spring Boot](https://spring.io/projects/spring-boot) (Java) |
| Datenbank      | [PostgreSQL](https://www.postgresql.org/) |
| CI/CD          | [GitLab CI](https://docs.gitlab.com/ee/ci/) |
| Containerisierung | [Docker](https://www.docker.com/) |
| API Doku       | [Postman](https://www.postman.com/) / ggf. Swagger |
| Hosting        | Lokal oder über Oracle Cloud (optional) |
| Codequalität   | Linter, Prettier, Unit-/Integration-/E2E-Tests |
| Versionierung  | Git (über GitLab & GitHub gespiegelt) |

---

## 🗂️ Projektstruktur

```plaintext
devcontrol/
├── frontend/                # Angular-Projekt (TypeScript)
├── backend/                 # Spring Boot Projekt (Java)
├── .gitlab-ci.yml           # GitLab CI/CD Pipeline
├── docker/                  # Container-Konfigurationen
├── docs/                    # Architektur & API-Dokumentation
├── scripts/                 # Hilfsskripte (z. B. Init, Backup, Deployment)
└── README.md                # Projektübersicht
```
---
## ☁️ Deployment Setup

- Lokales Deployment mit Docker Compose
- Optionaler Deployment-Pfad via Oracle Cloud oder eigener VPS
- Secrets werden via GitLab CI Variables verwaltet
- Reverse Proxy empfohlen (z. B. Nginx oder Traefik)

---

## 🧪 Testing
| Typ                   | Tool / Framework      |
| --------------------- | --------------------- |
| Unit Tests (Frontend) | Jasmine + Karma       |
| Unit Tests (Backend)  | JUnit                 |
| Integration Tests     | Spring Test + MockMVC |
| End-to-End Tests      | Cypress               |

---

## 📚 API-Dokumentation

- Swagger/OpenAPI im Backend integriert
- Postman-Collection verfügbar im Ordner /docs/postman/
- Authentifizierungsfluss dokumentiert via JWT

---

## 📝 Lizenz

Dieses Projekt unterliegt einer benutzerdefinierten Lizenz.  
Details findest du in der Datei [LICENSE.md](./LICENSE.md).  
**Eine Nutzung oder Verbreitung ist nur mit ausdrücklicher Genehmigung erlaubt.**

---

⏳ Dieses Dokument wird regelmäßig überarbeitet.
Letzte Bearbeitung: 01.08.2025
