/* https://github.com/cirosantilli/linux-kernel-module-cheat#data-processing-instructions
 *
 * Reverse byte order.
 */

#include "common.h"

ENTRY
    /* All bytes in register. */
    ldr r0, =0x11223344
    rev r1, r0
    ASSERT_EQ(r1, 0x44332211)

    /* Groups of 16-bits. */
    ldr r0, =0x11223344
    rev16 r1, r0
    ASSERT_EQ(r1, 0x22114433)
EXIT
