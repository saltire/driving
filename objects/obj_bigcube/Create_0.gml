xcount = 2;
ycount = 2;
zcount = 2;

var size = global.size;

levels = [];
for (var lz = 0; lz < zcount; lz++) {
  var level_matrices = [];
  
  for (var lx = 0; lx < xcount; lx++) {
    for (var ly = 0; ly < ycount; ly++) {
      level_matrices[lx, ly] = build_cube_matrices(x + lx * size, y + ly * size, lz * -size);
    }
  }
  
  levels[lz] = level_matrices;
}