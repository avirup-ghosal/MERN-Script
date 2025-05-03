#!/bin/bash

echo "Enter your project name:"
read project
if [ -d "$project" ]; then
       echo "Directory already exists"
else
        mkdir "$project"
fi

cd "$project"

echo "Initializing Git repository"
git init
echo "# $project" > README.md

touch .gitignore

echo -e "node_modules/\n.env\n.DS_Store" > .gitignore
echo "Git repository initialized in $project"

echo "Enter your backend directory name:"
read name
mkdir -p "$name"
cd "$name" || exit 1

echo "Initializing Node.js project..."

npm init -y


if [ $? -eq 0 ]; then
        echo "npm init successful. Installing express..."
        npm install express
else
        echo "npm init failed."
        exit 1

fi

mkdir -p config database routes utils middleware models controllers helpers

touch index.js .env
echo -e "node_modules/\n.env\n.DS_Store" > .gitignore
echo "folder structure created"
cd ..

echo "Enter your Vite project name for the frontend:"
read project_name

if [ -d "$project_name" ]; then
        echo "Directory '$project_name' already exists. Choose a different name."
        exit 1
fi

echo "Creating a Vite + React project '$project_name'..."
npm create vite@latest "$project_name" -- --template react

cd "$project_name" || exit

echo "Installing dependencies..."
npm install

echo -e "node_modules/\n.env\n.DS_Store" > .gitignore

cd ..

echo "Vite + React project '$project_name' is ready!"

echo "Adding changes to git..."
git add .
git commit -m "Initialized frontend and backend"

echo "Run your frontend with:"
echo "cd $project/$project_name && npm run dev"
echo "Run your backend with:"
echo "cd $project/$name && node index.js" 
echo "Git repository initialized at: $project/.git"