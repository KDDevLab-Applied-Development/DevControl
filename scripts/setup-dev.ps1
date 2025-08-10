# DevControl Development Setup Script (Windows PowerShell)

Write-Host "🚀 Setting up DevControl Development Environment..." -ForegroundColor Green

# Check if Docker is running
try {
    docker info | Out-Null
} catch {
    Write-Host "❌ Docker is not running. Please start Docker Desktop first." -ForegroundColor Red
    exit 1
}

# Navigate to project root
$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

Write-Host "📦 Starting PostgreSQL database..." -ForegroundColor Yellow
Set-Location "docker"
docker-compose up -d postgres

Write-Host "⏳ Waiting for PostgreSQL to be ready..." -ForegroundColor Yellow
Start-Sleep -Seconds 10

Write-Host "🔧 Installing Frontend dependencies..." -ForegroundColor Yellow
Set-Location "../Frontend/devcontrol-frontend"
npm install

Write-Host "🔧 Installing Backend dependencies..." -ForegroundColor Yellow
Set-Location "../../Backend/devcontrol-backend"
./mvnw.cmd dependency:resolve

Write-Host "✅ Development environment setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Start Backend: cd Backend/devcontrol-backend; ./mvnw.cmd spring-boot:run" -ForegroundColor White
Write-Host "2. Start Frontend: cd Frontend/devcontrol-frontend; npm start" -ForegroundColor White
Write-Host "3. Access application at http://localhost:4200" -ForegroundColor White
Write-Host "4. Access API docs at http://localhost:8080/api/swagger-ui.html" -ForegroundColor White
