# Ada Compiler Web

[coding_ground_online_Ada_Compiler](https://www.tutorialspoint.com/compile_ada_online.php)

<br>

# Learn Ada core

[Introduction to Ada](https://learn.adacore.com/courses/intro-to-ada/index.html)

<br>

<br>

# WindowsOS touch 랑 비슷한 기능

```
$ echo $null >> hello.adb
```

<br>

# Ada_Lang Compile

주의할 점 intel CPU에서만 되는것 같다. ㅠㅠ 
intel이 아닌 컴퓨터에서는 위에 있는 Ada Compiler Web을 이용해 연습하자
!!

<br>

```
gcc -c hello.adb
gnatbind -x hello.ali
gnatlink hello.ali -o hello
./hello.exe
```


hello.adb 예시 코드

```
with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
begin
    -- Print "Hello, World! Ada Lang" to the screen
    Ada.Text_IO.Put_Line ("Hello, World ! Ada Lang");
end Greet;

```

