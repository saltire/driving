var size = global.size;
cx = x + size / 2;
cy = y + size / 2;

matrix_n = matrix_build(x + size, y, -size, -90, 0, 180, 1, 1, 1);
matrix_s = matrix_build(x, y + size, -size, -90, 0, 0, 1, 1, 1);
matrix_w = matrix_build(x, y, -size, -90, 0, -90, 1, 1, 1);
matrix_e = matrix_build(x + size, y + size, -size, -90, 0, 90, 1, 1, 1);
matrix_t = matrix_build(x, y, -size, 0, 0, 0, 1, 1, 1);

