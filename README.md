# Matrimony Platform - Frontend

This is the Next.js frontend for the Matrimony platform, built with React, Tailwind CSS, and TypeScript. It is designed to cleanly interface with the Go backend, utilizing a modular file structure and multi-stage Docker builds for optimized production deployments.

## Tech Stack

* **Framework:** [Next.js](https://nextjs.org/) (App Router)
* **Styling:** [Tailwind CSS](https://tailwindcss.com/)
* **Language:** [TypeScript](https://www.typescriptlang.org/)
* **Containerization:** Docker & Docker Compose
* **Workflow:** Make

## Project Structure

The project follows a separation of concerns pattern inside the `src/` directory, mirroring the domain-driven design of the backend services:

```text
matrimony-frontend/
├── src/
│   ├── app/              # Next.js App Router (Pages, Layouts, API routes)
│   ├── components/       # Reusable UI components (Buttons, Inputs, Modals)
│   ├── lib/              # Utility functions and shared helpers
│   ├── services/         # API integration layer (fetch calls to the Go backend)
│   ├── types/            # TypeScript interfaces and type definitions
│   └── store/            # Global state management
├── public/               # Static assets (images, fonts, icons)
├── Dockerfile            # Multi-stage build instructions
├── docker-compose.yml    # Local container orchestration
└── Makefile              # Command shortcuts

Prerequisites
Before you begin, ensure you have the following installed:

Node.js (v18 or higher recommended)

Docker Desktop

Make (Standard on Linux/Mac, available via WSL or MinGW on Windows)


