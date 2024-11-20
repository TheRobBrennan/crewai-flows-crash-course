# Project Setup

This project requires certain dependencies to be installed for proper functioning. Follow the instructions below to set up your environment.

## Development Environment

This project uses Docker to ensure a consistent development environment.

### Quick Start

```bash
# First time setup
npm run docker:build

# Start development environment
npm start

# Stop development environment
npm stop
```

### Additional Commands

```bash
# Rebuild container (after environment changes)
npm run docker:rebuild

# Individual docker controls
npm run docker:up      # Start container
npm run docker:shell   # Open shell in running container
npm run docker:down    # Stop container
```
