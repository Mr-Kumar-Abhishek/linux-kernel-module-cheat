/* https://github.com/cirosantilli/linux-kernel-module-cheat#arm-ldrh-instruction-and-ldrb */

#include "common.h"

ENTRY
    ldr r0, =myvar
    mov r1, 0x0
    ldrb r1, [r0]
    ASSERT_EQ(r1, 0x00000078)
EXIT
myvar:
    .word 0x12345678
