# Expo Monorepo Example
This is an example monorepo setup using **Expo** with shared packages.  
It demonstrates how to structure an Expo app (`apps/cool-app`) alongside a reusable TypeScript package (`packages/cool-package`).

## Project Structure
```
├── apps/
│ └── cool-app/        # Expo app
├── packages/
│ └── cool-package/    # shared TypeScript package
├── install.bat        # installs dependencies at root
├── build.bat          # compiles packages/cool-package into a JS only package
```

## Setup Instructions
**1. Install dependencies (root level):**
```bash
./install.bat
```
This runs npm install at the root of the monorepo.

## Running the Expo App
**2. Navigate to the app folder and run the provided script:**
```bash
./run-expo-go.bat
```

This runs `npx expo start `, launching the Expo Go developer tools.

## Adding Dependencies
In a monorepo, dependencies should be installed at the **root** so they can be shared across apps and packages.

To add a new Expo-compatible package **(root level)**:
```bash
npx expo install <package-name>
```

Installing at the root ensures proper hoisting and avoids version conflicts.

## Usage
The above simply covers the bare basics to get a monorepo with Expo up and running. Do explore the example as needed to build your own packages, apps and configurations such as alias imports.

**Optional: Build shared packages:**
```bash
./build.bat
```
This compiles `packages/cool-package` into a package with all source transformed into JS only.
