#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#define NEED_SvRX
#include "ppport.h"

MODULE = PPPTest  PACKAGE = PPPTest

PROTOTYPES: DISABLE

void
test()
CODE:
{
  SV* sv = newSVpvs_flags("Hello, world!", SVs_TEMP);
  SvRX(sv);
  XSRETURN(0);
}
