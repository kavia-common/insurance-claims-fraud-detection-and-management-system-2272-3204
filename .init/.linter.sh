#!/bin/bash
cd /home/kavia/workspace/code-generation/insurance-claims-fraud-detection-and-management-system-2272-3204/nextjs_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

