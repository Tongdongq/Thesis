MASKC  = 1 << (C-1)
W[low-2] = W[hgh+2] = W[hgh+1] = y = yp = -1
for k = low-1 to hgh+1 do
{
	(ym,y,yp) = (y,yp+1,W[d+1]+1)
	if (ym = min(ym,y,yp))
		(y,m,b) = (ym,M[k-1],B[k-1])
	else if (yp = min(ym,y,yp)
		(y,m,b) = (yp,M[k+1],B[k+1])
	else
		(y,m,b) = (y,M[k],B[k])

	if (b & MASKC != 0)
		m -= 1
	b <<= 1
	while (B[y] == A[y+k])
	{
		y += 1
		if (b & MASKC == 0)
			m += 1
		b = (b << 1) | 1
	}
	(W[k],M[k],B[k]) = (y,m,b)
}