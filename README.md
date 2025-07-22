# DeepUbuntuAV
## Crowdsourced Autonomous Vehicle Training Data Platform

**Build the world's most comprehensive and diverse dataset for autonomous vehicle training, focusing on real-world edge cases from challenging terrains across Africa and Asia.**

---

## 🌍 **Our Mission**

Traditional AV datasets focus on well-maintained roads in developed regions. DeepUbuntuAV captures the harsh realities of global driving:
- **Unpaved roads and irregular surfaces**
- **Mixed traffic with pedestrians, livestock, and informal vendors**
- **Extreme weather conditions affecting visibility**
- **Cultural driving patterns and local traffic norms**
- **Infrastructure variations across developing regions**

## 🏗️ **Architecture Overview**

DeepUbuntuAV is built as a **microservice architecture** with 12 specialized services:

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Web Portal    │    │   Mobile App    │    │  Dashcam API    │
│  (React/Next)   │    │   (Future)      │    │  Integration    │
└─────────┬───────┘    └─────────┬───────┘    └─────────┬───────┘
          │                      │                      │
          └──────────────────────┼──────────────────────┘
                                 │
                    ┌─────────────┴───────────────┐
                    │      API Gateway            │
                    │     (Kong/Express)          │
                    └─────────────┬───────────────┘
                                 │
        ┌────────────────────────┼────────────────────────┐
        │                       │                       │
┌───────▼───────┐    ┌──────────▼──────────┐    ┌───────▼───────┐
│ Upload Service │    │ User Mgmt Service   │    │Metadata Service│
│   (Node.js)    │    │    (Node.js)        │    │  (FastAPI)     │
└───────┬───────┘    └──────────┬──────────┘    └───────┬───────┘
        │                       │                       │
        └───────────────────────┼───────────────────────┘
                               │
     ┌─────────────────────────┼─────────────────────────┐
     │                        │                        │
┌────▼────┐    ┌──────────────▼──────────────┐    ┌────▼────┐
│ Privacy │    │   Processing Orchestrator   │    │ Quality │
│Service  │    │      (Temporal.io)          │    │Analysis │
└─────────┘    └─────────────┬───────────────┘    └─────────┘
                             │
                ┌────────────▼────────────┐
                │   Edge Case Detection   │
                │     (PyTorch/GPU)       │
                └─────────────────────────┘
```

## 🚀 **Quick Start**

### Prerequisites
- **Node.js 18+**
- **Docker & Docker Compose**
- **Git**

### Development Setup
```bash
# Clone the repository
git clone https://github.com/Thabhelo/deepubuntuav.git
cd deepubuntuav

# Setup development environment
npm run setup

# Start all services
npm run dev
```

## 📁 **Repository Structure**

```
deepubuntuav/
├── services/                    # Microservices
│   ├── api-gateway/            # Request routing & rate limiting
│   ├── web-portal/             # React/Next.js frontend
│   ├── upload-service/         # Video upload handling
│   ├── user-service/           # Authentication & user management
│   └── ...                     # 8 more specialized services
├── shared/                     # Shared libraries
├── infrastructure/            # Infrastructure as Code
├── docs/                      # Documentation
└── tests/                     # Testing suites
```

## 🔧 **Technology Stack**

| Component | Technology | Purpose |
|-----------|------------|---------|
| **Frontend** | React, Next.js, TypeScript | Web portal & dashboard |
| **API Gateway** | Express.js, Kong | Request routing & security |
| **Backend Services** | Node.js, FastAPI, Python | Core business logic |
| **Databases** | PostgreSQL, MongoDB, Redis | Data persistence & caching |
| **Infrastructure** | Docker, Kubernetes | Container orchestration |

## 🌟 **Contributing**

We welcome contributions from developers, researchers, and organizations worldwide!

1. **Fork** the repository
2. **Create** a feature branch
3. **Develop** following our coding standards
4. **Test** your changes
5. **Submit** a pull request

## 📜 **License**

This project is licensed under the **MIT License**.

---

**🌍 Building the future of autonomous vehicles, one road at a time.**
