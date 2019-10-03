/* This is free and unencumbered software released into the public domain. */
#include <sys/types.h>

#include <errno.h>
#include <limits.h>

typedef long long vlong;

/* bsd compat */
#define reallocarray(a, b, c) __bsdcompat_reallocarray((a), (b), (c))
#define reallocf(a, b) __bsdcompat_reallocf((a), (b))
#define strtonum(a, b, c, d) __bsdcompat_strtonum((a), (b), (c), (d))

static inline void *
__bsdcompat_reallocarray(void *p, size_t n, size_t m)
{
	if (m && n > (size_t)-1/m) return NULL;
	return realloc(p, n*m);
}

static inline void *
__bsdcompat_reallocf(void *p, size_t n)
{
	void *newp;
	newp = realloc(p, n);
	if (p && !newp && n) free(p);
	return newp;
}

static inline vlong
__bsdcompat_strtonum(const char *s, vlong min, vlong max, const char **esp)
{
	vlong r;
	int sverrno = errno;
	char *ep;

	errno = 0;
	r = strtoll(s, &ep, 10);

	if (errno == EINVAL || ep == s || *ep) {
		*esp = "invalid";
		errno = EINVAL;
		return 0;
	}

	if ((r == LLONG_MIN && errno == ERANGE) || r < min) {
		*esp = "too small";
		errno = ERANGE;
		return 0;
	}

	if ((r == LLONG_MAX && errno == ERANGE) || r > max) {
		*esp = "too large";
		errno = ERANGE;
		return 0;
	}

	errno = sverrno;
	return r;
}
