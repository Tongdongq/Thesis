tb_left = []
(i_curr, j_curr) = (i_seed, j_seed)
t = 1
while ((i_curr > 0) and (j_curr > 0)) do
	(i_start, j_start) = (max(0, i_curr - T), max(0, j_curr - T))
	(R_tile, Q_tile) = (R[i_start : i_curr], Q[i_start : i_curr])
	(TS, i_off, j_off, i_max, j_max, tb) = Align(R_tile, Q_tile, t, T-O)
	tb_left.prepend(tb)
	if (t == 1) then
		(i_curr, j_curr) = (i_max, j_max)
		t = 0
	if ((i_off == 0) and (j_off == 0)) then
		break;
	else
		(i_curr, j_curr) = (i_curr - i_off, j_curr - j_off)
return (i_max, j_max, tb_left)
