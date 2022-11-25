# Ada Vim Setting


https://vimhelp.org/ft_ada.txt.html#ada.vim


# LSP settings

https://github.com/thindil/vim-ada

- ident 세팅부터 맘에 드는 plugIn이 많다. ㅎ



<br>

- help vim and ada language

https://www.reddit.com/r/vim/comments/kyjx67/help_vim_and_ada_language_coc/

<br>

# Ada VIm Setting 2 여기가 잘 정리됨

https://github.com/thindil/vim-ada

<br>

<hr>

# debugger 1

https://github.com/idanarye/vim-vebugger


<br>

## vebuger screencast

https://vimeo.com/95775461

<br>

<hr>

<br>

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

<br>
- https://blog.adacore.com/adding-ada-to-rust

https://blog.adacore.com/adding-ada-to-rust

<br>

- Rust binding for gpr


https://github.com/jklmnn/gpr-rust


<br>

# 내가 공부하려고 만든 영상

- Ada한글_강의001_HelloWorld_Ada 안전한 언어 #ada

https://youtu.be/zwFgGOSQL84

<br>

<br>

<hr>

# 모든 언어를 무료로 공부할 수 있다. 

출처 : stackoverflow.com
알게 된 링크

역시 갓 스택 오버플로우

https://stackoverflow.com/questions/38683512/why-git-shallow-clone-can-have-more-commits-than-depth/38683775#38683775


- Github 주소

https://github.com/EbookFoundation/free-programming-books

- EbookFoundation  

https://ebookfoundation.github.io/free-programming-books/

<br>

<hr>
