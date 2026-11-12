#!/bin/bash
echo "Installing new dependencies..."
pnpm install

echo "Building Next.js for static export..."
pnpm run build

echo "Initializing and adding Android platform..."
npx cap add android
npx cap sync android

echo "Opening Android Studio to build the APK..."
echo "In Android Studio, go to Build > Build Bundle(s) / APK(s) > Build APK(s)"
npx cap open android
