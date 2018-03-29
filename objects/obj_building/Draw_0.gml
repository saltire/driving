var size = global.size;

for (var lz = 0; lz < zcount; lz++) {
  var level_matrices = levels[lz];
  
  for (var lx = 0; lx < xcount; lx++) {
    for (var ly = 0; ly < ycount; ly++) {
      draw_cube(x + lx * size, y + ly * size, lz, level_matrices[lx, ly], textures[lz], texture_roof);
    }
  }
}