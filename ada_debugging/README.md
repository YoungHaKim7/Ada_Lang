# gdb 간단한 사용법 

- gdb 기본 사용방법 변수 확인 방법
  - https://jayy-h.tistory.com/m/11

- gdb(2) - 실제 환경에서의 디버깅(코어파일, 실행중 프로세스 )
  - https://jayy-h.tistory.com/m/12

<hr>

# help vim and ada language coc


https://www.reddit.com/r/vim/comments/kyjx67/help_vim_and_ada_language_coc/

<br>


# ada vim setting

https://vimhelp.org/ft_ada.txt.html#ada.vim


# Result

https://www.geeksforgeeks.org/gdb-step-by-step-introduction/

- ```alr build```

- ```gdb myproj_debug_gdb2```

```
$ alr build
 
$ gdb myproj_debug_gdb2

GNU gdb (Ubuntu 12.1-0ubuntu1~22.04) 12.1
Copyright (C) 2022 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<https://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from myproj_debug_gdb2...
(gdb) r
Starting program: /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/bin/myproj_debug_gdb2
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
Enter an integer value: 3
          3 is a positive number
[Inferior 1 (process 68543) exited normally]

(gdb) b main
Breakpoint 1 at 0x403b84: file b__myproj_debug_gdb2.adb, line 235.

(gdb) b 3
Breakpoint 2 at 0x403726: file /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb, line 4.

(gdb) b 6
Breakpoint 3 at 0x40372a: file /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb, line 8.

(gdb) b 7
Note: breakpoint 3 also set at pc 0x40372a.
Breakpoint 4 at 0x40372a: file /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb, line 8.

(gdb) b 9
Breakpoint 5 at 0x403739: file /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb, line 11.

(gdb) r

Starting program: /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/bin/myproj_debug_gdb2
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd278, envp=0x7fffffffd288) at b__myproj_debug_gdb2.adb:235
235	   function main

(gdb) bt
#0  main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd278, envp=0x7fffffffd288) at b__myproj_debug_gdb2.adb:235
#1  0x00007ffff7da4d90 in __libc_start_call_main (main=main@entry=0x403b84 <main>, argc=argc@entry=1,
    argv=argv@entry=0x7fffffffd278) at ../sysdeps/nptl/libc_start_call_main.h:58
#2  0x00007ffff7da4e40 in __libc_start_main_impl (main=0x403b84 <main>, argc=1, argv=0x7fffffffd278, init=<optimized out>,
    fini=<optimized out>, rtld_fini=<optimized out>, stack_end=0x7fffffffd268) at ../csu/libc-start.c:392
#3  0x0000000000403665 in _start ()

(gdb) l
230	   end adainit;
231	
232	   procedure Ada_Main_Program;
233	   pragma Import (Ada, Ada_Main_Program, "_ada_myproj_debug_gdb2");
234	
235	   function main
236	     (argc : Integer;
237	      argv : System.Address;
238	      envp : System.Address)
239	      return Integer
(gdb) c
Continuing.

Breakpoint 2, myproj_debug_gdb2 () at /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb:4
4	procedure Myproj_Debug_Gdb2 is
(gdb) l
1	with Ada.Text_IO;         use Ada.Text_IO;
2	with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
3	
4	procedure Myproj_Debug_Gdb2 is
5	  N : Integer;
6	begin
7	  -- Put a String
8	  Put ("Enter an integer value: ");
9	
10	  -- Read in an integer value

(gdb) watch N

Watchpoint 6: N
(gdb) c
Continuing.
Error evaluating expression for watchpoint 6
value has been optimized out
Watchpoint 6 deleted.

Breakpoint 3, myproj_debug_gdb2 () at /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb:8
8	  Put ("Enter an integer value: ");
(gdb) c
Continuing.
Enter an integer value:
Breakpoint 5, myproj_debug_gdb2 () at /home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/src/myproj_debug_gdb2.adb:11
11	  Get (N);
(gdb) c
Continuing.
c

raised ADA.IO_EXCEPTIONS.DATA_ERROR : a-tiinio.adb:104 instantiated at a-inteio.ads:18
[/home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/bin/myproj_debug_gdb2]
0x402dab Ada.Integer_Text_Io.Get.2.Cold at a-tiinio.adb:104
0x403741 Myproj_Debug_Gdb2 at myproj_debug_gdb2.adb:11
0x403bc0 Main at b__myproj_debug_gdb2.adb:260
[/lib/x86_64-linux-gnu/libc.so.6]
0x7ffff7da4d8e
0x7ffff7da4e3e
[/home/gy/my_project/ada_lang/Ada_Lang/ada_debugging/myproj_debug_gdb2/bin/myproj_debug_gdb2]
0x403663 _start at ???
0xfffffffffffffffe

[Inferior 1 (process 68643) exited with code 01]

(gdb) quit



(gdb) r
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /home/gy/my_project/ada_lang/Ada_Lang/ada_tutorial/01_Advanced_Journey_With_Ada/1_Types/1_1_Scalar_Types/a02_show_succ_pred_discrete/bin/a02_show_succ_pred_discrete
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd298, envp=0x7fffffffd2a8) at b__a02_show_succ_pred_discrete.adb:229
229	   function main
(gdb) info args
argc = 1
argv = 0x7fffffffd298
envp = 0x7fffffffd2a8
(gdb) info locals
seh = (4207792, 0)
ensure_reference = (system.address) 0x1000
(gdb) info listsize
Undefined info command: "listsize".  Try "help info".
(gdb) info variable_name
Undefined info command: "variable_name".  Try "help info".
(gdb) r
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /home/gy/my_project/ada_lang/Ada_Lang/ada_tutorial/01_Advanced_Journey_With_Ada/1_Types/1_1_Scalar_Types/a02_show_succ_pred_discrete/bin/a02_show_succ_pred_discrete
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd298, envp=0x7fffffffd2a8) at b__a02_show_succ_pred_discrete.adb:229
229	   function main
(gdb) info variable_name
Undefined info command: "variable_name".  Try "help info".
(gdb) info threads
  Id   Target Id                                           Frame
* 1    Thread 0x7ffff7d78740 (LWP 14946) "a02_show_succ_p" main (
    argc=argc@entry=1, argv=argv@entry=0x7fffffffd298,
    envp=0x7fffffffd2a8) at b__a02_show_succ_pred_discrete.adb:229
(gdb) disassemble
Dump of assembler code for function main:
=> 0x0000000000403bd4 <+0>:	sub    $0x18,%rsp
   0x0000000000403bd8 <+4>:	movq   $0x42ef40,(%rsp)
   0x0000000000403be0 <+12>:	mov    0x44b82(%rip),%eax        # 0x448768 <gnat_argc>
   0x0000000000403be6 <+18>:	test   %eax,%eax
   0x0000000000403be8 <+20>:	jne    0x403bf7 <main+35>
   0x0000000000403bea <+22>:	mov    %edi,0x44b78(%rip)        # 0x448768 <gnat_argc>
   0x0000000000403bf0 <+28>:	mov    %rsi,0x44b69(%rip)        # 0x448760 <gnat_argv>
   0x0000000000403bf7 <+35>:	mov    %rdx,0x44b5a(%rip)        # 0x448758 <gnat_envp>
   0x0000000000403bfe <+42>:	lea    0x8(%rsp),%rdi
   0x0000000000403c03 <+47>:	call   0x425030 <__gnat_initialize>
   0x0000000000403c08 <+52>:	call   0x40388e <adainit>
   0x0000000000403c0d <+57>:	call   0x403596 <_ada_a02_show_succ_pred_discrete>
   0x0000000000403c12 <+62>:	call   0x40386a <adafinal>
   0x0000000000403c17 <+67>:	call   0x424db0 <__gnat_finalize>
   0x0000000000403c1c <+72>:	mov    0x44b52(%rip),%eax        # 0x448774 <gnat_exit_status>
   0x0000000000403c22 <+78>:	add    $0x18,%rsp
   0x0000000000403c26 <+82>:	ret
End of assembler dump.
(gdb) info display
There are no auto-display expressions now.
(gdb) c
Continuing.

Breakpoint 2, a02_show_succ_pred_discrete () at /home/gy/my_project/ada_lang/Ada_Lang/ada_tutorial/01_Advanced_Journey_With_Ada/1_Types/1_1_Scalar_Types/a02_show_succ_pred_discrete/src/a02_show_succ_pred_discrete.adb:3
3	procedure A02_Show_Succ_Pred_Discrete is
(gdb) info locals
idle = idle
started = started
processing = processing
stopped = stopped
machin_state = started
i = 2
(gdb) c
Continuing.

Breakpoint 3, a02_show_succ_pred_discrete () at /home/gy/my_project/ada_lang/Ada_Lang/ada_tutorial/01_Advanced_Journey_With_Ada/1_Types/1_1_Scalar_Types/a02_show_succ_pred_discrete/src/a02_show_succ_pred_discrete.adb:9
9	  Put_Line (" State                    : " & Machin_State'Image);
(gdb) info locals
idle = idle
started = started
processing = processing
stopped = stopped
machin_state = started
i = 2
(gdb) info args
No arguments.
(gdb) c
Continuing.
 State                    : STARTED
 State'Pred (Machin_State): IDLE
 State'Succ (Machin_State): PROCESSING
----------------------------------
I                :  2
Interget'Pred (I):  1
Integer'Succ (I) :  3
[Inferior 1 (process 14946) exited normally]
(gdb) info args
No frame selected.
(gdb) info locals
No frame selected.
(gdb) bt
No stack.
(gdb) s
The program is not being run.
(gdb) r
Starting program: /home/gy/my_project/ada_lang/Ada_Lang/ada_tutorial/01_Advanced_Journey_With_Ada/1_Types/1_1_Scalar_Types/a02_show_succ_pred_discrete/bin/a02_show_succ_pred_discrete
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Breakpoint 1, main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd298, envp=0x7fffffffd2a8) at b__a02_show_succ_pred_discrete.adb:229
229	   function main
(gdb) s
242	      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
(gdb) s
246	      if gnat_argc = 0 then
(gdb) s
247	         gnat_argc := argc;
(gdb) p args
No definition of "args" in current context.
(gdb) p argc
$1 = 1
(gdb) s
248	         gnat_argv := argv;
(gdb) p argc
$2 = 1
(gdb) s
250	      gnat_envp := envp;
(gdb) bt
#0  main (argc=argc@entry=1, argv=argv@entry=0x7fffffffd298,
    envp=0x7fffffffd2a8) at b__a02_show_succ_pred_discrete.adb:250
#1  0x00007ffff7da4d90 in __libc_start_call_main (
    main=main@entry=0x403bd4 <main>, argc=argc@entry=1,
    argv=argv@entry=0x7fffffffd298)
    at ../sysdeps/nptl/libc_start_call_main.h:58
#2  0x00007ffff7da4e40 in __libc_start_main_impl (main=0x403bd4 <main>,
    argc=1, argv=0x7fffffffd298, init=<optimized out>,
    fini=<optimized out>, rtld_fini=<optimized out>,
    stack_end=0x7fffffffd288) at ../csu/libc-start.c:392
#3  0x00000000004034d5 in _start ()
(gdb) p 0x7fffffffd288
$3 = 140737488343688
(gdb) p argc
$4 = 1
(gdb) p/x argc
$5 = 0x1
(gdb) en dis
(gdb) q
A debugging session is active.
```

https://dining-developer.tistory.com/13
