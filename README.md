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


Getting StartedLocal Development (Node)To run the development server natively on your machine:Install dependencies:Bashnpm install
Start the development server:Bashnpm run dev
Open http://localhost:3000 with your browser to see the result.Docker DevelopmentTo run the frontend within a Docker container (attached to the matrimony_net network so it can communicate directly with the backend containers):Build and start the container:Bashmake up-build
The application will be accessible at http://localhost:3000.Available Commands (Makefile)We use a Makefile to simplify common development tasks. Run these commands from the root directory:CommandDescriptionmake devStarts the local Next.js development server.make buildBuilds the Docker image.make upStarts the Docker container in the background.make up-buildRebuilds the Docker image and starts the container.make downStops and removes the Docker container.make logsTails the logs for the frontend Docker container.make cleanStops the container, removes volumes/images, and deletes local build folders (.next, node_modules).



***

### How to push this to your new repository:

Once you've saved the `README.md` file in Kiro, run these commands in the terminal to upload it:

```bash
git add README.md
git commit -m "docs: add project README"
git push