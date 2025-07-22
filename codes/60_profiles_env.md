각 실습 후 `su - 사용자명`, `ls -R ~/Downloads`, `cat` 등을 통해 적용 여부를 확인하십시오.

---

## **🧪 환경 변수 및 초기화 스크립트 실습 문제**

### **🔹 문제 1\. 로그인 시마다 `"Welcome, USERNAME"` 메시지를 출력하시오.**

**조건:**

* 현재 로그인한 사용자명을 포함할 것 (`$USER`)

* **로그인할 때마다 자동으로 출력**되도록 설정할 것

  --- echo "Welcome,$USER"
```
[guinjung@localhost ~]$ su - guinjung
Password: 
Welcome,guinjung
```

  ### **🔹 문제 2\. 로그인 시 사용자의 `Downloads/` 폴더 내 일반 파일을 삭제하시오.**

**조건:**

* 경로: `~/Downloads/`

* **일반 파일만 삭제** (서브디렉토리, 숨김파일은 삭제하지 않음)
find ~/Downloads -maxdepth 1 -type f -exec rm {} \;
* **로그인 시 자동 실행**
```
[guinjung@localhost Downloads]$ ls -l
total 4
drwxr-xr-x. 3 guinjung guinjung 25 Jul 21 14:29 practice
drwxr-xr-x. 2 guinjung guinjung  6 Jul 21 16:38 tempdir
drwxrw-rw-. 2 guinjung guinjung  6 Jul 21 16:39 tempdir1
-rw-r--r--. 1 guinjung guinjung 13 Jul 21 16:00 temps.sh
-rw-r--r--. 1 guinjung guinjung  0 Jul 21 16:34 temp.txt
-rw-rw-rw-. 1 guinjung guinjung  0 Jul 21 16:40 test1.txt
-rw-r--r--. 1 guinjung guinjung  0 Jul 21 16:41 test3.txt
-rw-rw-rw-. 1 guinjung guinjung  0 Jul 22 11:09 third.sh

[guinjung@localhost ~]$ su - guinjung
Password: 
Welcome,guinjung
[guinjung@localhost ~]$ cd ./Downloads
[guinjung@localhost Downloads]$ ls
practice  tempdir  tempdir1
```
  ---

  ### **🔹 문제 3\. 로그인할 때마다 `~/Downloads/` 경로에 다음 구조로 디렉토리 및 파일을 자동 생성하도록 설정하시오.**

**생성 구조:**

* \~/Downloads/  
*  └── auto\_created/  
*       ├── info.txt  
*       └── logs/  
*            └── log.txt


**조건:**

* 파일에는 임의의 간단한 문자열이 들어갈 것

* **매 로그인마다 자동 생성**
  ---
  mkdir -p ~/Downloads/auto_created/logs

touch ~/Downloads/auto_created/info.txt

touch ~/Downloads/auto_created/logs/log.txt

echo "test" > ~/Downloads/auto_created/info.txt

echo "test" > ~/Downloads/auto_created/logs/log.txt

```
[guinjung@localhost Downloads]$ tree
.
├── auto_created
│   ├── info.txt
│   └── logs
│       └── log.txt
```

  ### **🔹 문제 4\. `/etc/profile`을 수정하여, 로그인 시 모든 사용자에게 공지 메시지 `/etc/login_notice.txt`를 출력하도록 설정하시오.**

**조건:**

* 출력 방식은 `cat`, `echo` 등 자유

* 시스템 전체 사용자에게 적용

* `/etc/login_notice.txt`는 임의의 내용을 사전에 작성해 둘 것

* `sudo` 권한 필요
vi /etc/login_notice.txt

vi /etc/profile

cat /etc/login_notice.txt

```
[root@localhost ~]# su - guinjung
Welcome to My Server!!
Welcome,guinjung
```
  ---

* 

