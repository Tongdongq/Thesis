for i = 0 to N-1 do
{
	b = src[i]_p
	trg[bucket[b]] = src[i]
	bucket[b] += 1
}