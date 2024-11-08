# See LICENSE for license details.

#*****************************************************************************
# func_mul.S
#-----------------------------------------------------------------------------
#
# Test func_{add|mul}.d instructions simultaneously.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UF
RVTEST_CODE_BEGIN

TEST_FP_OP2_D( 1,  fmul.d, 0,                2.5,        2.5,        1.0 );
TEST_FP_OP2_D( 2,  fmul.d, 1,            1358.61,    -1235.1,       -1.1 );
TEST_FP_OP2_D( 3,  fmul.d, 1,      3.14159265e-8, 3.14159265, 0.00000001 );

TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END