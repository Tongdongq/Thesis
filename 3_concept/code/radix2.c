int64 MASK = 2^B-1

sort_thread(int t, int bit, int N, int64 *src, int64 *trg, int *bucket, int *next)
{
	for i = t*N to (t+1)*N-1 do
	{
		c = src[i]
		b = c >> bit
		x = bucket[b & MASK] += 1
		trg[x] = c
		next[x/N][(b >> B) & MASK] += 1
	}
}

int64 *radix_sort(int T, int N, int hbit, int64 src[0..N-1], int64 trg[0..N-1])
{
	int bucket[0..T-1][0..2^B-1], next[0..T-1][0..T-1][0..2^B-1]
	part = (N-1)/T + 1
	for l = 0 to hbit-1 in steps of B do
	{
		if (l != lbit)
			bucket[t,b] = Sum_t next[u,t,b]
		else
			bucket[t,b] = |{i : i/part == t and src[i] & MASK == b}|
		bucket[t,b] = Sum_u,(c<b) bucket[u,c] + Sum_(u<t) bucket[u,b]
		next[u,t,b] = 0
		in parallel: sort_thread(t,l,part,src,trg,bucket[t],next[t]])
		(src,trg) = (trg,src)
	}
	return src
}