# CS33_Project2
/** CS 333 Project 2 -- README
  * Name: Nicole Matamoros
  * Date: 10/04/2021
  */

  Directory Layout:
  project2/
  |
  |__/C/
  |   |
  |   |__/encode.yy
  |   |__/encodeText.c
  |   |__/task2.yy
  |   |__/task2.C
  |   |__/task3.yy
  |   |__/task3.C
  |   |__/t4.yy
  |   |__/t4.C
  |
  |__/Hello_Wolrd.cpp
  |
  |__/hello.scala

Run and build configuration for C(only):
gcc version 7.5.0(Ubuntu 7.5.0-3ubuntu1~18.04)
Run on Ubuntu 18.04.5 LTS 

C:
    Task1:
        For this task we needed to create a program called encode, using flex,
        that would take any character a-z or A-Z and shift it 13 spaces forward 
        in the alphabet, wrapping around to a when you get to z. My file encode.c
        contains an implementation of this task. The file encodeText.txt contains
        some sample data to test my implentation on. 
        Compile:
            flex encode.yy
            gcc -o encode.c lex.yy.c -ll
        Run:
            ./encode.c encodeText
        Output:
            nm
            o
            p
            r
            svc
            yd

    Task2:
        For this task I used flex to make a program that reads a text file and
        count the number of rows, characters,and of each vowel[a,e,i,o,u]. The 
        program should then print out the totals of each count. My file task2.yy
        implements this. I tested this program using the encodeText.txt test file.
        Compile:
            flex task2.yy
            gcc -o task2.c lex.yy.c -ll
        Run:
            ./task2.c encodeText
        Output:
            # if rows = 6, # of chars = 16
            # of a = 2,
            # of e = 1,
            # of i = 1,
            # of o = 1,
            # of u = 0

    Task3:
        For this task I needed to make a program that stripped an html file of 
        all comments, tags, and whitespace (except where <p> was where a newline
        should be added) which is implemented in task3.yy
        Compile:
            flex task3.yy
            gcc -o task3.c lex.yy.c -ll
        Run:
            ./task3.c t3Test
        Output:
            ThisisapagetitleHereisaheader
            Hereissomebodytextinaparagraph
            Hereisalinktocs.colby.eduinsideaparagraph.
    

    Task4:
        For the last C task we needed to implement a parser for Clite.
        It should read some code and break it down into tokens (along 
        with the value if applicable). The file task4.c contains the 
        code for this implementation. I tested it on this test file.
        Compile:
            flex t4.yy
            gcc -o t4.c lex.yy.c -ll
        Run:
            ./t4.c t4Test
        Output:
            Keyword-<int> Identifier-<main>Open-parenClose-paren Open-bracket
               Keyword-<int> Identifier-<a> Assignment Integer-<6>;
               Keyword-<int> Identifier-<b> Assignment Float-<5.0>;
               Keyword-<if>Open-paren Identifier-<a> Comparison-<<> Identifier-<b> Close-paren
               Open-bracket 
                    Identifier-<a> Assignment Identifier-<a> Operator-<+> Identifier-<b>;
                Close-bracket

            Close-bracket



Run and build configuration for C++:
gcc version 11.2.0 -- cygwin version 3.4.0(0.340/5/3)
Windows 10 Home version 20H2 OS 19042.1237

C++:
    Task4:
        Tasks 1-3 were completed on the wiki page. For task 4 I needed
        to create a simple "Hello World" type of program. For this I
        implemented a simple game between the user and computer. The 
        premise being, the user choose a direction (right, left, up, down)
        and the computer tries to "guess" what direction the user chose.
        This program is implemented in Hello_World.cpp
        Compile:
            g++ -o hello Hello_World.cpp
        Run:
            ./hello
        Output:
            Lets play a game. You will pick a direction: right, left, up, or down.
            If I correctly guess what direction you chose I win. 
             Otherwise, you win. 
            If you want to stop playing enter 'end' instead of a direction.
            Pick your direction (right, left, up, down): up

            You win... this time.
            Pick your direction (right, left, up, down): right 
            
            You win... this time.
            Pick your direction (right, left, up, down): up

            Got Ya! I win. :]
            Pick your direction (right, left, up, down): end

            The game has ended, thanks for playing. :]



Run and build configuration for Scala:
Windows 10 Home version 20H2 OS 19042.1237
java version 1.8 -- sbt version 1.5.5 -- scala version 3.0.2

Scala:
    Hello_World:
        For this extension (a solo extension), I created a similar
        resource guide and hello world program for scala like I did 
        for C++. My program this time is more simple than the other
        but still makes use of user input. This can be seen in the 
        file hello.scala.
        Compile & Run:
            sbt run 
        Output:
            Please enter your name: Nicole
            Hello Nicole

