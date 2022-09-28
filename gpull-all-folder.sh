#!/bin/bash
for file in */ ; do 
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "--------------------------------------------------------------------------"
    echo "📥 Pulling $file"
    cd $file
    git pull --verbose
    cd ..
    echo "--------------------------------------------------------------------------"
    echo
  fi; 
done
echo "🏁 Done"
