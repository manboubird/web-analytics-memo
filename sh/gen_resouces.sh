#!/bin/bash

rsc_dir=resources
img_dir=images

for f in `find ${rsc_dir} -type f -name *dot`;do
  out="${img_dir}/`basename -s .dot ${f}`.png"
  dot -Tpng ${f} > ${out}
done
