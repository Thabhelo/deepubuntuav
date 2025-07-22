#!/bin/bash

# DeepUbuntuAV Development Environment Setup Script
set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

main() {
    echo "🚀 DeepUbuntuAV Development Environment Setup"
    echo "============================================="
    echo
    
    log_info "Creating necessary directories..."
    mkdir -p storage/{minio,uploads,processed}
    mkdir -p databases/{postgresql,mongodb,redis}
    mkdir -p logs/{services,infrastructure}
    mkdir -p ml-models/weights
    
    log_info "Installing dependencies..."
    npm install
    
    log_info "Starting infrastructure services..."
    docker-compose up -d
    
    log_success "Setup completed! 🎉"
    echo
    echo "📋 Available Services:"
    echo "  • PostgreSQL Database: localhost:5432"
    echo "  • MongoDB Database: localhost:27017"
    echo "  • Redis Cache: localhost:6379"
    echo "  • Database Admin: http://localhost:8081"
    echo
    echo "🚀 Next Steps:"
    echo "  1. Run 'npm run dev' to start all services"
    echo "  2. Check 'docker-compose ps' for service status"
    echo
}

main "$@"
