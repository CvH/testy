#!/bin/sh
################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

echo ""
echo "Start cleaning..."
echo ""

USER=$(whoami)

if [ -f Makefile ]; then
  make distclean
  rmdir .generated_files
  rm -f creator.pro.user
fi

rm -f lang/*.qm
rm -f log
rm -f *.dmg
rm -f local_image_file
if [ -d "dmg_osx/template.app/Contents/Resources/Scripts" ]; then
  rm -r dmg_osx/template.app/Contents/Resources/Scripts
fi

echo ""
echo "Finished."
echo ""
