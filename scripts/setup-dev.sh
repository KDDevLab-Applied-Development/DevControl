#!/bin/bash

# DevControl Development Setup Script
echo "🚀 Setting up DevControl Development Environment..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker Desktop first."
    exit 1
fi

# Navigate to project root
cd "$(dirname "$0")/.."

echo "📦 Starting PostgreSQL database..."
cd docker
docker-compose up -d postgres

echo "⏳ Waiting for PostgreSQL to be ready..."
sleep 10

echo "🔧 Installing Frontend dependencies..."
cd ../Frontend/devcontrol-frontend
npm install

echo "🔧 Installing Backend dependencies..."
cd ../../Backend/devcontrol-backend
./mvnw dependency:resolve

echo "✅ Development environment setup complete!"
echo ""
echo "Next steps:"
echo "1. Start Backend: cd Backend/devcontrol-backend && ./mvnw spring-boot:run"
echo "2. Start Frontend: cd Frontend/devcontrol-frontend && npm start"
echo "3. Access application at http://localhost:4200"
echo "4. Access API docs at http://localhost:8080/api/swagger-ui.html"
