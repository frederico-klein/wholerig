#!/bin/bash
# applies mirroring filter in all meshes
for value in *.STL
do
  meshlab.meshlabserver -i $value -o $value -s my_meshlabscript.mlx
done
