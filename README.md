# libftASM

Writing a lib in x86 assembly (intel flavour)

```js
;//APP (Asm Pre Processor) macros
%define MACH_SYSCALL(n)    0x2000000 | n
%define WRITE              4
%define STDOUT             1

;//data
section .data
hello:
	.string db "Hello world!", 10
	.len equ $ - hello.string

;//text symbols
section .text
	global start
	global _main

;//nasm entry point
start:
	call _main                    ;//backup instruction pointer RIP jump to _main
	ret

;//default entry point
_main:
	push rbp                      ;//backup stack frame base pointer RBP
	mov rbp, rsp                  ;//stack end pointer RSP
	sub rsp, 16                   ;//grow the stack towards lower addresses
	mov rdi, STDOUT               ;//passing parameters to the WRITE syscall...
	lea rsi, [rel hello.string]
	mov rdx, hello.len
	mov rax, MACH_SYSCALL(WRITE)  ;//RAX holds the syscall number
	syscall
	leave                         ;//set RSP to RBP, then pop RBP (pushed above)
	ret                           ;//pop RIP (pushed above in call)
```
## X86 Assembly

### General Purpose Registers

![General-Purpose Registers](./literature/registers.png)

**Some registers values are preserved across function calls !**

|**Preserved Registers**|```rbx```| ```rsp```| ```rbp```| ```r12```| ```r13```| ```r14```| ```r15```|
|-|-|-|-|-|-|-|-|-|-|
| **Scratch Registers** | ```rax```| ```rdi```| ```rsi```| ```rdx```| ```rcx```| ```r8```| ```r9```| ```r10```| ```r11```|


### Noteworthy Instructions

An instruction is a statement that is executed at runtime. An x86 instruction can have zero to three operands. See the complete [list of x86 instructions](https://c9x.me/x86/).
```
instruction destination_operand, source_operand, last_operand
```

|Instruction|Black Sheep Wall|
|-----------|---------|
|```NOP```  |The one-byte NOP instruction is commonly used to align memory to speed-up jump as it is faster to jump using powers of 2|
|```push``` |Pushes an immediate (numeric constant) or the **value** contained in a register onto the Stack and automatically decrements ```rsp``` by **sizeof(value)**|
|```pop```  |Pops **value** off the stack into a register and automatically increments ```rsp``` by **sizeof(value)**|
|```syscall``` |Does wicked Kernel Magic|
|```call``` |Pushes ```rip``` onto the stack and jumps to the ```destination_operand```|
|```leave``` |Releases the current stack frame. Moves ```rbp``` to ```rsp``` and pops ```rbp``` from the stack|
|```ret``` |Pops the ```rip``` saved by ```call``` back in ```rip```|
|```mov```|Move the value of the ```source operand``` in ```destination operand```|
|```lea```|Load Effective Address of the ```source operand``` in the ```destination operand```. The ```source operand``` is a memory address (offset part) specified with one of the processors addressing modes, the ```destination operand``` is a general-purpose register|
|```jump```|Loads the ```destination operand``` in ```rip```, the ```destination operand``` specifies the address of the instruction being jumped to. This operand can be an immediate value, a general-purpose register, or a memory location|
|```and``` |Performs the following operation: ```destination operand = destination operand & source operand``` and sets some flags|
|```test```|Is basically an ```and``` instruction that does not alter the ```destination operand```|

### Pointer Directives

There are times when we need to assist assembler in translating references to data in memory. When the instruction has no reference to operand size one must use a pointer directive.

```js
mov     BYTE  [ al], 42  ; Store 8-bit   (1 byte)  value
mov     WORD  [ ax], 42  ; Store 16-bit  (2 bytes) value
mov     DWORD [eax], 42  ; Store 32-bit  (4 bytes) value
mov     QWORD [rax], 42  ; Store 64-bit  (8 bytes) value
```

## Passing function arguments

### User space ```call```

User-level applications use as integer registers for passing the sequence ```rdi```, ```rsi```, ```rdx```, ```rcx```, ```r8``` and ```r9```.

|Destination|Source   |Data     |Counter  |R8       |R9       |
|-----------|---------|---------|---------|---------|---------|
|```rdi```  |```rsi```|```rdx```|```rcx```|```r8 ```|```r9 ```|

* An user-space call is done via the ```call``` instruction.
* If more params are passed they are **stored on the Stack in reverse order**
* The register ```rax``` contains the result of the called procedure.

### Kernel space ```syscall```

The kernel interface uses ```rdi```, ```rsi```, ```rdx```, ```r10```, ```r8``` and ```r9```.

|Destination|Source   |Data     |R10      |R8       |R9      |
|-----------|---------|---------|---------|---------|--------|
|```rdi```  |```rsi```|```rdx```|```r10```|```r8 ```|```r9```|

* A system-call is done via the ```syscall``` instruction.
* This clobbers ```rcx``` and ```r11```, as well as ```rax```, but other registers are preserved.
* The number of the syscall has to be passed in register ```rax```.
* System-calls are limited to six arguments, no argument is passed directly on the stack.
* Returning from the syscall, register ```rax``` contains the result of the system-call.
* A value in the range between ```-4095``` and ```-1``` indicates an **error**, it is ```-errno```.
* Only values of class INTEGER or class MEMORY are passed to the kernel.

## Want More ?

* About [Calling conventions](https://stackoverflow.com/questions/2535989/what-are-the-calling-conventions-for-unix-linux-system-calls-on-i386-and-x86-6)
* Or the [System V ABI](https://wiki.osdev.org/System_V_ABI)
* [List of x86 instructions](https://c9x.me/x86/)
* All the [XNU syscalls](https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master)
* More on [X86_Architecture](https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture)
* Try out the [Compiler explorer](https://godbolt.org/)
