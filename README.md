# MERN Script

A Bash script which automatically sets up a full stack MERN(MongoDb, Express, React, Node.js) project complete with project structure, dependencies and Git integration.

## What it does
- Prompts for project names (main, backend, frontend)

- Initializes Git in the main directory

- Sets up the backend:

- Initializes Node.js with npm init

- Installs express

- Creates common folders: config, routes, controllers, models, etc.

- Sets up the frontend:

- Uses Vite to scaffold a React app

- Installs dependencies

- Creates .gitignore and .env files where needed

- Commits everything in a Git repo

  ## How to use
1. Clone the repo:
  ```bash
  git clone https://github.com/avirup-ghosal/MERN-Script.git
  ```
2. Make the script executable:
   ```bash
   chmod +x mernscript.sh
   ```
3. Run the script
   ```bash
   ./mernscript.sh
   ```
   
## Requirements
- Node.js & npm
- Vite CLI(auto installed via npm create vite@latest)
- Git
- Unix like shell(Linux/macOS or WSL for Windows)
    
  
  
