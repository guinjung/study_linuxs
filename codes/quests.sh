PS C:\Develops\quests> pwd

Path
----
C:\Develops\quests


PS C:\Develops\quests> mkdir powershell_practice


    디렉터리: C:\Develops\quests


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:36                powershell_practice


PS C:\Develops\quests> cd p*
PS C:\Develops\quests\powershell_practice> mkdir documents


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:36                documents


PS C:\Develops\quests\powershell_practice> mkdir images


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:36                images


PS C:\Develops\quests\powershell_practice> mkdir backup


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:37                backup


PS C:\Develops\quests\powershell_practice> mkdir temp


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:37                temp


PS C:\Develops\quests\powershell_practice> cd ..
PS C:\Develops\quests> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
└─powershell_practice
    ├─backup
    ├─documents
    ├─images
    └─temp
PS C:\Develops\quests>
PS C:\Develops\quests> cd p*/documents
PS C:\Develops\quests\powershell_practice\documents> ls
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents>
PS C:\Develops\quests\powershell_practice\documents> "Hello PowerShell!" > hello.txt
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt


PS C:\Develops\quests\powershell_practice\documents> cd ../images
PS C:\Develops\quests\powershell_practice\images> echo " " > photo1.jpg
PS C:\Develops\quests\powershell_practice\images> echo " " > photo2.jpg
PS C:\Develops\quests\powershell_practice\images>
PS C:\Develops\quests\powershell_practice\images> cd ../do*
PS C:\Develops\quests\powershell_practice\documents> cat hello.txt
Hello PowerShell!
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt


PS C:\Develops\quests\powershell_practice\documents> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.

에 하위 폴더가 없습니다.
PS C:\Develops\quests\powershell_practice\documents> cp hello.txt ../backup/
PS C:\Develops\quests\powershell_practice\documents> cp ../images/* ../backup/
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─backup
├─documents
├─images
└─temp
PS C:\Develops\quests\powershell_practice> ls


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:39                backup
d-----      2025-07-15   오후 3:38                documents
d-----      2025-07-15   오후 3:38                images
d-----      2025-07-15   오후 3:37                temp


PS C:\Develops\quests\powershell_practice> cd backup
PS C:\Develops\quests\powershell_practice\backup> ls


    디렉터리: C:\Develops\quests\powershell_practice\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt
-a----      2025-07-15   오후 3:38              8 photo1.jpg
-a----      2025-07-15   오후 3:38              8 photo2.jpg


PS C:\Develops\quests\powershell_practice\backup> cd ..
PS C:\Develops\quests\powershell_practice> ls


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:39                backup
d-----      2025-07-15   오후 3:38                documents
d-----      2025-07-15   오후 3:38                images
d-----      2025-07-15   오후 3:37                temp


PS C:\Develops\quests\powershell_practice> cd temp
PS C:\Develops\quests\powershell_practice\temp> echo " "> test.txt
PS C:\Develops\quests\powershell_practice\temp> mv test.txt ../documents/
PS C:\Develops\quests\powershell_practice\temp>
PS C:\Develops\quests\powershell_practice\temp> cd ../docu*
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt
-a----      2025-07-15   오후 3:40              8 test.txt


PS C:\Develops\quests\powershell_practice\documents> mv test.txt moved_file.txt
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt
-a----      2025-07-15   오후 3:40              8 moved_file.txt


PS C:\Develops\quests\powershell_practice\documents> cd ../images
PS C:\Develops\quests\powershell_practice\images> ls


    디렉터리: C:\Develops\quests\powershell_practice\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38              8 photo1.jpg
-a----      2025-07-15   오후 3:38              8 photo2.jpg


PS C:\Develops\quests\powershell_practice\images> mv photo1.jpg picture1.jpg
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> mv temp temporary
PS C:\Develops\quests\powershell_practice>
PS C:\Develops\quests\powershell_practice> cd docu*
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38             40 hello.txt
-a----      2025-07-15   오후 3:40              8 moved_file.txt


PS C:\Develops\quests\powershell_practice\documents>
PS C:\Develops\quests\powershell_practice\documents> rm moved_file.txt
PS C:\Develops\quests\powershell_practice\documents> cd ..i*
cd : '..i*' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd ..i*
+ ~~~~~~~
    + CategoryInfo          : ObjectNotFound: (..i*:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops\quests\powershell_practice\documents> cd ../i*
PS C:\Develops\quests\powershell_practice\images> ls


    디렉터리: C:\Develops\quests\powershell_practice\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38              8 photo2.jpg
-a----      2025-07-15   오후 3:38              8 picture1.jpg


PS C:\Develops\quests\powershell_practice\images> rm pho*2.jpg
PS C:\Develops\quests\powershell_practice\images> ls


    디렉터리: C:\Develops\quests\powershell_practice\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:38              8 picture1.jpg


PS C:\Develops\quests\powershell_practice\images>
PS C:\Develops\quests\powershell_practice\images> cd ../temporary
PS C:\Develops\quests\powershell_practice\temporary> ls
PS C:\Develops\quests\powershell_practice\temporary> cd ..
PS C:\Develops\quests\powershell_practice> rm temporary
PS C:\Develops\quests\powershell_practice> ls


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:39                backup
d-----      2025-07-15   오후 3:42                documents
d-----      2025-07-15   오후 3:42                images


PS C:\Develops\quests\powershell_practice> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─backup
├─documents
└─images
PS C:\Develops\quests\powershell_practice>
PS C:\Develops\quests\powershell_practice> rm backup

확인
C:\Develops\quests\powershell_practice\backup의 항목에는 하위 항목이 있으며 Recurse 매개 변수를 지정하지 않았습니다.
계속하면 해당 항목과 모든 하위 항목이 제거됩니다. 계속하시겠습니까?
[Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "Y"): A
PS C:\Develops\quests\powershell_practice> ls


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:42                documents
d-----      2025-07-15   오후 3:42                images


PS C:\Develops\quests\powershell_practice> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─documents
└─images
PS C:\Develops\quests\powershell_practice> mkdir my_project


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                my_project


PS C:\Develops\quests\powershell_practice> cd my*
PS C:\Develops\quests\powershell_practice\my_project> mkdir src


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                src


PS C:\Develops\quests\powershell_practice\my_project> mkdir docs


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                docs


PS C:\Develops\quests\powershell_practice\my_project> mkdir tests


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                tests


PS C:\Develops\quests\powershell_practice\my_project> mkdir build


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                build


PS C:\Develops\quests\powershell_practice\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
├─src
└─tests
PS C:\Develops\quests\powershell_practice\my_project> cd src
PS C:\Develops\quests\powershell_practice\my_project\src> echo "print('Hello World')" > main.py
PS C:\Develops\quests\powershell_practice\my_project\src> echo "This is my project" > readme.txt
PS C:\Develops\quests\powershell_practice\my_project\src> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.

에 하위 폴더가 없습니다.
PS C:\Develops\quests\powershell_practice\my_project\src> cd ..
PS C:\Develops\quests\powershell_practice\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
├─src
└─tests
PS C:\Develops\quests\powershell_practice\my_project> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                build
d-----      2025-07-15   오후 3:43                docs
d-----      2025-07-15   오후 3:44                src
d-----      2025-07-15   오후 3:43                tests


PS C:\Develops\quests\powershell_practice\my_project> cd docs
PS C:\Develops\quests\powershell_practice\my_project\docs> echo "This is my project" > readme.txt
PS C:\Develops\quests\powershell_practice\my_project\docs> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:45             42 readme.txt


PS C:\Develops\quests\powershell_practice\my_project\docs> cd ..
PS C:\Develops\quests\powershell_practice\my_project> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:43                build
d-----      2025-07-15   오후 3:45                docs
d-----      2025-07-15   오후 3:44                src
d-----      2025-07-15   오후 3:43                tests


PS C:\Develops\quests\powershell_practice\my_project> cd src
PS C:\Develops\quests\powershell_practice\my_project\src> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:44             46 main.py
-a----      2025-07-15   오후 3:44             42 readme.txt


PS C:\Develops\quests\powershell_practice\my_project\src> rm re*.txt
PS C:\Develops\quests\powershell_practice\my_project\src> cd ..
PS C:\Develops\quests\powershell_practice\my_project>
PS C:\Develops\quests\powershell_practice\my_project>
PS C:\Develops\quests\powershell_practice\my_project>
PS C:\Develops\quests\powershell_practice\my_project> cp src/main.py ./build/
PS C:\Develops\quests\powershell_practice\my_project> cp docs/readme.txt docs/project_info.txt
PS C:\Develops\quests\powershell_practice\my_project> cd docs
PS C:\Develops\quests\powershell_practice\my_project\docs> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:45             42 project_info.txt
-a----      2025-07-15   오후 3:45             42 readme.txt


PS C:\Develops\quests\powershell_practice\my_project\docs> rm pro*.txt
PS C:\Develops\quests\powershell_practice\my_project\docs> mv readme.txt project_info.txt
PS C:\Develops\quests\powershell_practice\my_project\docs> cd ..
PS C:\Develops\quests\powershell_practice\my_project> cd tests
PS C:\Develops\quests\powershell_practice\my_project\tests> cd ..
PS C:\Develops\quests\powershell_practice\my_project> rm tests
PS C:\Develops\quests\powershell_practice\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
└─src
PS C:\Develops\quests\powershell_practice\my_project> cd build
PS C:\Develops\quests\powershell_practice\my_project\build> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\build


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:44             46 main.py


PS C:\Develops\quests\powershell_practice\my_project\build> cd ../docs
PS C:\Develops\quests\powershell_practice\my_project\docs> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:45             42 project_info.txt


PS C:\Develops\quests\powershell_practice\my_project\docs> cd ../src
PS C:\Develops\quests\powershell_practice\my_project\src> ls


    디렉터리: C:\Develops\quests\powershell_practice\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:44             46 main.py


PS C:\Develops\quests\powershell_practice\my_project\src>

