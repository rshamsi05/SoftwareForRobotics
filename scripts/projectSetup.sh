#!/bin/bash

# This script creates a new component folder inside the src/ directory.
# Usage: ./scripts/create_component.sh <PROJECT_NAME> [language]

set -e #Exits script if command fails
set -u #Exit if using undefined vars

PROJECT_NAME=$1
LANGUAGE=${2:-cpp}  # Default to C++ file if no language is provided
PROJECT_DIR="./src/$PROJECT_NAME"


# Check if component name was provided
if [ -z "$PROJECT_NAME" ]; then
  echo "Error: Please provide a component name."
  echo "Usage: ./scripts/create_component.sh <PROJECT_NAME> [language]"
  echo "Supported languages: cpp, py, generic"
  exit 1
fi

# Check if directory already exists
if [ -d "$PROJECT_DIR" ]; then
  echo "Error: Directory $PROJECT_DIR already exists."
  exit 1
fi

echo "Creating new component: $PROJECT_NAME (Type: $LANGUAGE)"

# Create the component directory
mkdir -p $PROJECT_DIR

# Create a basic README for the component
echo "# $PROJECT_NAME" > $PROJECT_DIR/README.md
echo "## Purpose" >> $PROJECT_DIR/README.md
echo "A brief description of what this component does." >> $PROJECT_DIR/README.md
echo "" >> $PROJECT_DIR/README.md
echo "## Build Instructions" >> $PROJECT_DIR/README.md
echo "How to build and run this specific component." >> $PROJECT_DIR/README.md

# Create language-specific starter files
case $LANGUAGE in
  cpp)
    echo "#include <iostream>" > $PROJECT_DIR/main.cpp
    echo "" >> $PROJECT_DIR/main.cpp
    echo "int main() {" >> $PROJECT_DIR/main.cpp
    echo "    std::cout << \"Hello from $PROJECT_NAME!\\\\n\";" >> $PROJECT_DIR/main.cpp
    echo "    return 0;" >> $PROJECT_DIR/main.cpp
    echo "}" >> $PROJECT_DIR/main.cpp
    ;;
  py)
    echo "#!/usr/bin/env python3" > $PROJECT_DIR/main.py
    echo "" >> $PROJECT_DIR/main.py
    echo "def main():" >> $PROJECT_DIR/main.py
    echo "    print(\"Hello from $PROJECT_NAME!\")" >> $PROJECT_DIR/main.py
    echo "" >> $PROJECT_DIR/main.py
    echo "if __name__ == \"__main__\":" >> $PROJECT_DIR/main.py
    echo "    main()" >> $PROJECT_DIR/main.py
    chmod +x $PROJECT_DIR/main.py  # Make it executable
    ;;
  generic|*)
    # Just create the directory and README, no source files
    echo "Created generic component directory."
    ;;
esac

# Create a common .gitignore file to avoid pushing build artifacts
echo "build/" > $PROJECT_DIR/.gitignore
echo "*.o" >> $PROJECT_DIR/.gitignore
echo "**/__pycache__/" >> $PROJECT_DIR/.gitignore

echo "Component '$PROJECT_NAME' created successfully in src/!"