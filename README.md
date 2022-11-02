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

<br>

# Windows .sh build 사용하는 방법

1. choco 에서 git 설치하기

PowerShell에서 실행
```
$ choco install git
```

<br>

2. Path 설정 - 윈도우 환경변수 설정

```
C:\Program Files\Git\bin
```

3. 내가 만든 build.sh 가서

```
$ sh ./build.sh
```

<br>

build.sh 파일 예시

```
gcc -c hello.adb
gnatbind -x hello.ali
gnatlink hello.ali -o hello
./hello.exe

rm -rf *.ali
rm -rf *.o
```

<br>

# Ada to Rust

gpr-rust Gpr-Rust is a Rust binding for gpr. its goal is to provide an easy way to integrate Ada sources into the Rust build process. It allows to select and build a GNAT project file by parsing the project and providing all required information to call gprbuild and link the resulting library.

- Rust binding for gpr

https://github.com/jklmnn/gpr-rust


<br>