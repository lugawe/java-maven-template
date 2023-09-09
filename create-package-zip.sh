#!/bin/sh

set -e

package_dir="package"
package_zip="package.zip"

echo "Building package..."
./mvnw --batch-mode clean package >/dev/null

echo "Prepare package..."
if [ -d $package_dir ]; then
  rm $package_dir/*.jar
else
  mkdir $package_dir
fi

cp target/*.jar $package_dir
if [ -f $package_zip ]; then
  rm $package_zip
fi

zip $package_zip -j -r $package_dir >/dev/null
