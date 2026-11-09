#!/usr/bin/env sh

mkdir -p webp_prontas

for img in *.{jpg,JPG,jpeg,JPEG,png,PNG}; do
  [ -e "$img" ] || continue
  nome="${img%.*}"
  magick "$img" -strip -resize "1200x1200>" -quality 80 "webp_prontas/${nome}.webp"
  echo "Convertida: webp_prontas/${nome}.webp"
done
