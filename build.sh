# This is a part of the QNU Project.

__QNU_UNIQUE_BUILD_SYSTEM_COMPILATOR="gcc"
__QNU_UNIQUE_BUILD_SYSTEM_INSTALLPATH="/usr/local/bin"

if command -v $__QNU_UNIQUE_BUILD_SYSTEM_COMPILATOR >/dev/null 2>&1; then
  echo Building...
  $__QNU_UNIQUE_BUILD_SYSTEM_COMPILATOR main.c -o osnaschator || exit 1
  echo Successfully built!
  echo Do you want to install the utility? [y/n]
  read -r otvet
  if [ "$otvet" = "y" ]; then
    mv osnaschator $__QNU_UNIQUE_BUILD_SYSTEM_INSTALLPATH/osnaschator
  else
    echo ERROR && exit 2
  fi
else
  echo ERROR && exit 3
fi
