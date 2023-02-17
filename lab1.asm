#                                           ICS 51, Lab #1
# 
#                                          IMPORTATNT NOTES:
# 
#                       Write your assembly code only in the marked blocks.
# 
#                       DO NOT change anything outside the marked blocks.
# 
#

###############################################################
#                           Text Section
.text

###############################################################
###############################################################
###############################################################
#                            PART 1 (Swap Bits)
# 
# You are given an 32-bits integer stored in $a0. You need swap the bits
# at odd and even positions. i.e. b31 <-> b30, b29 <-> b28, ... , b1 <-> b0
# 
# Implementation details:
# The integer is stored in register $a0. You need to store the answer 
# into register $v0 in order to be returned by the function to the caller.
swap_bits:
############################## Part 1: your code begins here ###
li $t1, 0x55555555
and $t1, $a0, $t1
sll $t1, $t1, 1
li $t0, 0xAAAAAAAA
and $t0, $a0, $t0
srl $t0, $t0, 1
or $v0, $t0, $t1


############################## Part 1: your code ends here ###
jr $ra

###############################################################
###############################################################
###############################################################
#                           PART 2 (Triple Range)
# 
# You are given three integers. You need to find the smallest 
# one and the largest one and multiply their sum by three and return it.
# 
# Implementation details:
# The three integers are stored in registers $a0, $a1, and $a2. You 
# need to store the answer into register $v0 in order to be returned by 
# the function to the caller.
triple_range:
############################### Part 2: your code begins here ##
# find min val:
ble $a0, $a1, if_a0_less_a1
j if_a1_less_a0

if_a0_less_a1:
ble $a0, $a2, store_a0_min
j store_a2_min

if_a1_less_a0:
ble $a1, $a2, store_a1_min
j store_a2_min

store_a0_min:
move $t0, $a0
j find_max

store_a1_min:
move $t0, $a1
j find_max

store_a2_min:
move $t0, $a2
j find_max

# find max val:
find_max:
bge $a0, $a1, if_a0_greater_a1
j if_a1_greater_a0

if_a0_greater_a1:
bge $a0, $a2, store_a0_max
j store_a2_max

if_a1_greater_a0:
bge $a1, $a2, store_a1_max
j store_a2_max

store_a0_max:
move $t1, $a0
j part2end

store_a1_max:
move $t1, $a1
j part2end

store_a2_max:
move $t1, $a2
j part2end

part2end:
add $t2, $t0, $t1
li $t3, 3
mul $v0, $t2, $t3

############################### Part 2: your code ends here  ##
jr $ra

###############################################################
###############################################################
###############################################################
#                            PART 3 (Determinant)
# 
# You are given a 2x2 matrix and each element is a 16-bit 
# signed integer. Calculate its determinant.
# 
# Implementation details:
# The four 16-bit integers are stored in registers $a0, $a1. 
# You need to store the answer into register $v0 in order to 
# be returned by the function to the caller.
determinant:
############################## Part 3: your code begins here ###
blt $a0, $zero, if_a0_less_0
j if_a0_greater_0

if_a0_less_0:
sll $t0, $a0, 16
sra $t0, $t0, 16
sra $t1, $a0, 16
blt $a1, $zero, if_a1_less_0
j if_a1_greater_0

if_a0_greater_0:
sll $t0, $a0, 16
sra $t0, $t0, 16
sra $t1, $a0, 16
blt $a1, $zero, if_a1_less_0
j if_a1_greater_0

if_a1_less_0:
sll $t2, $a1, 16
sra $t2, $t2, 16
sra $t3, $a1, 16
j part3end

if_a1_greater_0:
sll $t2, $a1, 16
sra $t2, $t2, 16
sra $t3, $a1, 16
j part3end

part3end:
mul $t4, $t1, $t2
mul $t5, $t0, $t3
sub $v0, $t4, $t5


############################## Part 3: your code ends here ###
jr $ra

