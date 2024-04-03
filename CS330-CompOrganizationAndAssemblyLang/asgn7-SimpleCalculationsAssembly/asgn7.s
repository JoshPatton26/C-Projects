.data               # start of data section
# put any global or static variables here

.section .rodata    # start of read-only data section
# constants here, such as strings
# modifying these during runtime causes a segmentation fault, so be cautious!

func1: .string "\n %d * 5 = %d" # print string for A * 5
func2: .string "\n (A + B) - (A / B) = %d" # print string for (A + B) - (A / B)
func3: .string "\n (A - B) + (A * B) = %d \n" # pring string for (A - B) + (A * B)

.text           # start of text /code
# everything inside .text is read-only, which includes your code!
.global main  # required, tells gcc where to begin execution

# === functions here ===

main:           # start of main() function
# preamble
pushq %rbp
movq %rsp, %rbp

# === code here ===
# Initialize A and B and save to register
movq $5, %rax # initalize A with 5
movq $4, %rbx # initalize B with 4
movq %rax, %r12 # saves A in rax
movq %rbx, %r13 # saves B in rbx

# Calculate A * 5 
imulq $5, %rax # multiplies A by 5

# Call func1
movq $func1, %rdi # copy func1 in 1st arg
movq %r12, %rsi # copy A in 2st arg
movq %rax, %rdx # copy rax(A * 5) in 3rd arg
movq $0, %rax # zero out rax
call printf # call func1
xorq %rsi, %rsi # zero out rsi

# Reset rax and rbx w/ A and B, and save in new registers for further use
movq %r12, %rax # copy A to rax
movq %r13, %rbx # copy B to rbx
movq %r12, %r14 # copy A to r14 to save
movq %r13, %r15 # copy B to r15 to save

# Calculate ((A + B) - (A / B))
addq %rbx, %r12 # add (A + B) stores in r12
cqto # sign extension for rax to rdx
movq %rbx, %rdi
idivq %rdi # divides rax(A) by rdi(B)
subq %rax, %r12 # subtracts r12(A + B) from rax(A / B)

# Call func2 
movq $func2, %rdi # copy func2 in 1st arg
movq %r12, %rsi # copy r12((A + B) - (A / B)) in 2st arg
movq $0, %rax # zero out rax
call printf # call func2
xorq %rsi, %rsi # zero out rsi

# Reset rax and rbx w/ A and B
movq %r14, %rax # copy A to rax
movq %r15, %rbx # copy B to rbx

# Calculate ((A - B) + (A * B))
subq %rbx, %rax # subtracts (A - B) stores in rax
imul %r14, %r15 # A * B in r15
addq %rax, %r15 # adds ((A - B) + (A * B)) stores in r15

# Call func3
movq $func3, %rdi # copy func3 in 1st arg
movq %r15, %rsi # copy r15((A - B) + (A * B)) in 2st arg
movq $0, %rax # zero out rax
call printf # call func3

# return
movq $0, %rax   # place return value in rax
leave           # undo preamble, clean up the stack
ret             # return