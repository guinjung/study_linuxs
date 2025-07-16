0. 실습환경 준비
[guinjung@localhost ~]$ mkdir -p ~/practice/project/{src,docs,tests,config}
mkdir -p ~/practice/project/src/{main,utils}
mkdir -p ~/practice/project/docs/{user,dev}
mkdir -p ~/practice/project/tests/unit
touch ~/practice/project/README.md
touch ~/practice/project/src/main/app.py
touch ~/practice/project/src/utils/helper.py
touch ~/practice/project/docs/user/manual.txt
touch ~/practice/project/docs/dev/api.md
touch ~/practice/project/tests/test_main.py
[guinjung@localhost ~]$ touch ~/practice/project/config/settings.conf

실습환경 구조확인
[guinjung@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
│   ├── project
│   │   ├── docs
│   │   ├── src
│   │   └── tests
│   └── sibling-project
│       ├── app
│       ├── config
│       └── lib
├── Music
├── Pictures
├── practice
│   └── project
│       ├── config
│       │   └── settings.conf
│       ├── docs
│       │   ├── dev
│       │   │   └── api.md
│       │   └── user
│       │       └── manual.txt
│       ├── README.md
│       ├── src
│       │   ├── main
│       │   │   └── app.py
│       │   └── utils
│       │       └── helper.py
│       └── tests
│           ├── test_main.py
│           └── unit
├── Public
├── Templates
└── Videos

27 directories, 7 files

연습문제 1: 기본 상대 주소 이해
[guinjung@localhost ~]$ tree ./practice
./practice
└── project
    ├── config
    │   └── settings.conf
    ├── docs
    │   ├── dev
    │   │   └── api.md
    │   └── user
    │       └── manual.txt
    ├── README.md
    ├── src
    │   ├── main
    │   │   └── app.py
    │   └── utils
    │       └── helper.py
    └── tests
        ├── test_main.py
        └── unit

10 directories, 7 files

1-1. 현재 위치에서 상대 주소 작성
현재 위치가 ~/practice/project/src/main/일 때, 다음 파일들로 이동하는 상대 주소를 작성하시오:
파일들(helper.py, README.md, manual.txt, settings.conf) 이미 존재
[guinjung@localhost ~]$ cd ~/practice/project/src/main/
[guinjung@localhost main]$ ls -al ../utils/helper.py
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../utils/helper.py
[guinjung@localhost main]$ 
[guinjung@localhost main]$ pwd
/home/guinjung/practice/project/src/main
[guinjung@localhost main]$ ls -l ../../README.md
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../README.md
[guinjung@localhost main]$ ls -l ../../docs/user/manual.txt
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../docs/user/manual.txt
[guinjung@localhost main]$ ls -l ../../config/settings.conf
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:23 ../../config/settings.conf

연습문제 2: 다양한 시작점에서의 상대 주소
2-1. 시작점 변경 실습
현재 위치가 ~/practice/project/docs/user/일 때:
[guinjung@localhost main]$ cd ~/practice/project/docs/user/
[guinjung@localhost user]$ pwd
/home/guinjung/practice/project/docs/user

app.py 파일로 이동하는 상대 주소를 작성하시오.
[guinjung@localhost user]$ cd ../../src/main
[guinjung@localhost main]$ ls -l app.py
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 app.py
[guinjung@localhost main]$ pwd
/home/guinjung/practice/project/src/main

test_main.py 파일을 상대 주소를 작성하시오.
[guinjung@localhost main]$ cd ~/practice/project/docs/user/
[guinjung@localhost user]$ ls -l ../../tests/test_main.py
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../tests/test_main.py

src/utils/ 디렉토리로 이동하는 상대 주소를 작성하시오.
[guinjung@localhost user]$ pwd
/home/guinjung/practice/project/docs/user
[guinjung@localhost user]$ cd ../../src/utils
[guinjung@localhost utils]$ ls -l 
total 0
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 helper.py
[guinjung@localhost utils]$ pwd
/home/guinjung/practice/project/src/utils

2-2. 역방향 상대 주소
현재 위치가 ~/practice/project/tests/unit/일 때:
[guinjung@localhost utils]$ cd ~/practice/project/tests/unit/
[guinjung@localhost unit]$ pwd
/home/guinjung/practice/project/tests/unit

[guinjung@localhost unit]$ tree /home/guinjung/practice
/home/guinjung/practice
└── project
    ├── config
    │   └── settings.conf
    ├── docs
    │   ├── dev
    │   │   └── api.md
    │   └── user
    │       └── manual.txt
    ├── README.md
    ├── src
    │   ├── main
    │   │   └── app.py
    │   └── utils
    │       └── helper.py
    └── tests
        ├── test_main.py
        └── unit

10 directories, 7 files

[guinjung@localhost unit]$ pwd
/home/guinjung/practice/project/tests/unit

프로젝트 루트(~/practice/project/)로 이동하는 상대 주소를 작성하시오
[guinjung@localhost unit]$ cd ~/practice/project/
[guinjung@localhost project]$ pwd
/home/guinjung/practice/project

api.md 파일로 이동하는 상대 주소를 작성하시오.
[guinjung@localhost project]$ cd ./docs/dev
[guinjung@localhost dev]$ ls
api.md

helper.py 파일을 상대 주소를 작성하시오.
[guinjung@localhost dev]$ cd ../../src/utils
[guinjung@localhost utils]$ ls
helper.py

연습문제 3: 파일 내용 확인 및 조작

3-1. 상대 주소를 이용한 파일 내용 출력
현재 위치가 ~/practice/project/src/utils/일 때:
[guinjung@localhost utils]$ cd ~/practice/project/src/utils/

프로젝트 루트의 README.md 파일 내용을 출력하시오.
[guinjung@localhost utils]$ cat ../../README.md
[guinjung@localhost utils]$ ls -l ../../README.md
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../README.md

docs/user/manual.txt 파일 정보 자세히 출력하시오.
[guinjung@localhost utils]$ cat ../../docs/user/manual.txt
[guinjung@localhost utils]$ ls -l ../../docs/user/manual.txt
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../docs/user/manual.txt

config/settings.conf 파일 정보 자세히 출력하시오.
[guinjung@localhost utils]$ cat ../../config/settings.conf
[guinjung@localhost utils]$ ls -l ../../config/settings.conf
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:23 ../../config/settings.conf


3-2. 상대 주소를 이용한 파일 생성
현재 위치가 ~/practice/project/src/main/일 때: 
[guinjung@localhost utils]$ cd ~/practice/project/src/main/
[guinjung@localhost main]$ pwd
/home/guinjung/practice/project/src/main
[guinjung@localhost main]$ ls
app.py

현재 디렉토리에 config.py 파일을 생성하고 "# Configuration module"이라는 내용을 작성하시오.
[guinjung@localhost main]$ echo "# Configuration module" > config.py
[guinjung@localhost main]$ ls -al
total 4
drwxr-xr-x. 2 guinjung guinjung 37 Jul 16 16:40 .
drwxr-xr-x. 4 guinjung guinjung 31 Jul 16 16:22 ..
-rw-r--r--. 1 guinjung guinjung  0 Jul 16 16:22 app.py
-rw-r--r--. 1 guinjung guinjung 23 Jul 16 16:40 config.py

tests/ 디렉토리에 test_app.py 파일을 생성하고 "# App test file"이라는 내용을 작성하시오.
[guinjung@localhost main]$ echo  "# App test file" >  ../../tests/test_app.py
[guinjung@localhost main]$ cat ../../tests/test_app.py
# App test file


연습문제 4: 파일 복사 및 이동
4-1. 상대 주소를 이용한 파일 복사
현재 위치가 ~/practice/project/docs/dev/일 때:
[guinjung@localhost main]$ cd ~/practice/project/docs/dev/
[guinjung@localhost dev]$ ls
api.md

api.md 파일을 docs/user/ 디렉토리에 api_copy.md로 복사하시오.
[guinjung@localhost dev]$ cp ./api.md ../user/api_copy.md
[guinjung@localhost dev]$ ls -l ../user/
total 0
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:43 api_copy.md
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 manual.txt

src/utils/helper.py 파일을 현재 디렉토리에 복사하시오.
[guinjung@localhost dev]$ cp ../../src/utils/helper.py ./
[guinjung@localhost dev]$ ls -l
total 0
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 api.md
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:44 helper.py

config/settings.conf 파일을 tests/unit/ 디렉토리에 복사하시오.
[guinjung@localhost dev]$ cp ../../config/settings.conf ../../tests/unit/
[guinjung@localhost dev]$ ls -l ../../tests/unit/
total 0
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:45 settings.conf


4-2. 상대 주소를 이용한 파일 이동
현재 위치가 ~/practice/project/tests/일 때:
[guinjung@localhost dev]$ cd ~/practice/project/tests/
[guinjung@localhost tests]$ tree /home/guinjung/practice
/home/guinjung/practice
└── project
    ├── config
    │   └── settings.conf
    ├── docs
    │   ├── dev
    │   │   ├── api.md
    │   │   └── helper.py
    │   └── user
    │       ├── api_copy.md
    │       └── manual.txt
    ├── README.md
    ├── src
    │   ├── main
    │   │   ├── app.py
    │   │   └── config.py
    │   └── utils
    │       └── helper.py
    └── tests
        ├── test_app.py
        ├── test_main.py
        └── unit
            └── settings.conf

10 directories, 12 files

test_main.py 파일을 tests/unit/ 디렉토리로 이동하시오.
[guinjung@localhost tests]$ mv ./test_main.py ./unit/

src/main/config.py 파일을 config/ 디렉토리로 이동하시오.
[guinjung@localhost tests]$ mv ../src/main/config.py ../config/

연습문제 5: 복합 상대 주소 활용
5-1. 다중 파일 조작
현재 위치가 ~/practice/project/일 때:
[guinjung@localhost tests]$ cd ~/practice/project/
src/main/ 디렉토리의 모든 파일을 docs/dev/ 디렉토리에 복사하시오.
[guinjung@localhost project]$ cp ./src/main/* ./docs/dev/

docs/user/ 디렉토리의 모든 파일을 tests/unit/ 디렉토리로 이동하시오.
[guinjung@localhost project]$ mv ./docs/user/* ./tests/unit/
config/ 디렉토리 전체를 backup_config/로 복사하시오.
[guinjung@localhost project]$ cp -r ./config ./backup_config


연습문제 6: 에러 찾기 및 수정
6-1. 잘못된 상대 주소 찾기
현재 위치가 ~/practice/project/docs/user/일 때, 다음 명령어들 중 에러가 있는 것을 찾고 올바른 명령어로 수정하시오:
[guinjung@localhost project]$ cd ~/practice/project/docs/user/
[guinjung@localhost user]$ pwd
/home/guinjung/practice/project/docs/user
[guinjung@localhost user]$ ls ../../../project/src/main/
app.py
[guinjung@localhost user]$ cat ../../src/utils/helper.py
[guinjung@localhost user]$ ls -l ../../src/utils/helper.py
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../src/utils/helper.py
[guinjung@localhost user]$ 
[guinjung@localhost user]$ 
[guinjung@localhost user]$ cd ../dev/../../config/
[guinjung@localhost config]$ pwd
/home/guinjung/practice/project/config

[guinjung@localhost user]$ cp ../../tests/unit/manual.txt ../../tests/unit/backup.txt

[guinjung@localhost user]$ mv ../../tests/unit/api_copy.md ../../src/main/


6-2. 경로 최적화
다음 상대 주소를 더 간단하게 경로를 최적화하시오: (cat 명령어 사용)
현재 위치: ~/practice/project/tests/unit/
[guinjung@localhost user]$ cd ~/practice/project/tests/unit/
[guinjung@localhost unit]$ pwd
/home/guinjung/practice/project/tests/unit
[guinjung@localhost unit]$ cat ../../src/utils/helper.py
[guinjung@localhost unit]$ ls -l  ../../src/utils/helper.py
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../src/utils/helper.py
[guinjung@localhost unit]$ cat ../../docs/dev/api.md
[guinjung@localhost unit]$ ls -l ../../README.md
-rw-r--r--. 1 guinjung guinjung 0 Jul 16 16:22 ../../README.md


연습문제 7: 종합 실습
7-1. 프로젝트 구조 재정리
현재 위치가 ~/practice/project/일 때, 다음 작업을 수행하시오:
[guinjung@localhost unit]$ cd ~/practice/project/
[guinjung@localhost project]$ pwd
/home/guinjung/practice/project
[guinjung@localhost project]$ tree /home/guinjung/practice
/home/guinjung/practice
└── project
    ├── backup_config
    │   ├── config.py
    │   └── settings.conf
    ├── config
    │   ├── config.py
    │   └── settings.conf
    ├── docs
    │   ├── dev
    │   │   ├── api.md
    │   │   ├── app.py
    │   │   └── helper.py
    │   └── user
    ├── README.md
    ├── src
    │   ├── main
    │   │   ├── api_copy.md
    │   │   └── app.py
    │   └── utils
    │       └── helper.py
    └── tests
        ├── test_app.py
        └── unit
            ├── backup.txt
            ├── manual.txt
            ├── settings.conf
            └── test_main.py

11 directories, 16 files
[guinjung@localhost project]$ pwd
/home/guinjung/practice/project

src/main/ 디렉토리에 models/ 하위 디렉토리를 생성하시오.
[guinjung@localhost project]$ mkdir -p ./src/main/models

docs/ 디렉토리에 README.md 파일을 생성하고 "# Project Documentation"이라는 내용을 작성하시오.
[guinjung@localhost project]$ echo "# Project Documentation" > ./docs/README.md

tests/unit/ 디렉토리의 모든 파일을 tests/ 디렉토리로 이동하시오.
[guinjung@localhost project]$ mv ./tests/unit/* ../

config/ 디렉토리의 모든 파일을 src/ 디렉토리에 복사하시오.
[guinjung@localhost project]$ cp ./config/* ./src/


7-2. 백업 및 정리
현재 위치가 ~/practice/project/src/main/일 때:
[guinjung@localhost project]$ cd  ~/practice/project/src/main/
[guinjung@localhost main]$ 
[guinjung@localhost main]$ pwd
/home/guinjung/practice/project/src/main

전체 프로젝트를 ../../project_backup/으로 복사하시오.
[guinjung@localhost main]$ cp -r ../../../project ../../project_backup
cp: cannot copy a directory, '../../../project', into itself, '../../project_backup'

[guinjung@localhost main]$ tree /home/guinjung/practice
/home/guinjung/practice
├── backup.txt
├── manual.txt
├── project
│   ├── backup_config
│   │   ├── config.py
│   │   └── settings.conf
│   ├── config
│   │   ├── config.py
│   │   └── settings.conf
│   ├── docs
│   │   ├── dev
│   │   │   ├── api.md
│   │   │   ├── app.py
│   │   │   └── helper.py
│   │   ├── README.md
│   │   └── user
│   ├── project_backup
│   │   ├── backup_config
│   │   │   ├── config.py
│   │   │   └── settings.conf
│   │   ├── config
│   │   │   ├── config.py
│   │   │   └── settings.conf
│   │   ├── docs
│   │   │   ├── dev
│   │   │   │   ├── api.md
│   │   │   │   ├── app.py
│   │   │   │   └── helper.py
│   │   │   ├── README.md
│   │   │   └── user
│   │   ├── README.md
│   │   └── tests
│   │       ├── test_app.py
│   │       └── unit
│   ├── README.md
│   ├── src
│   │   ├── config.py
│   │   ├── main
│   │   │   ├── api_copy.md
│   │   │   ├── app.py
│   │   │   └── models
│   │   ├── settings.conf
│   │   └── utils
│   │       └── helper.py
│   └── tests
│       ├── test_app.py
│       └── unit
├── settings.conf
└── test_main.py

20 directories, 29 files
[guinjung@localhost main]$ pwd
/home/guinjung/practice/project/src/main
[guinjung@localhost main]$ ls
api_copy.md  app.py  models

utils/ 디렉토리의 모든 .py 파일을 현재 디렉토리의 models/ 디렉토리로 복사하시오.
[guinjung@localhost main]$ cp ../utils/*.py ./models/

프로젝트 루트의 README.md 파일을 현재 디렉토리에 PROJECT_INFO.md로 복사하시오.
[guinjung@localhost main]$ cp ../../README.md ./PROJECT_INFO.md
