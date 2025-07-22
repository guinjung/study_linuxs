# **Linux 권한 관리 실습 문제**

## **실습 환경 설정**

**먼저 다음 명령어들을 실행하여 실습 환경을 구성하세요:**

- \# 실습 디렉터리 생성(/root 사용)  
- mkdir permission\_practice  
- cd permission\_practice  
-   
- \# 사용자 및 그룹 생성 (관리자 권한 필요)  
- sudo useradd \-m \-s /bin/bash alice  
- sudo useradd \-m \-s /bin/bash bob  
- sudo useradd \-m \-s /bin/bash charlie  
- sudo useradd \-m \-s /bin/bash diana  
- sudo useradd \-m \-s /bin/bash eve  
-   
- \# 그룹 생성  
- sudo groupadd developers  
- sudo groupadd managers  
-   
- \# 사용자를 그룹에 추가  
- sudo usermod \-a \-G developers alice  
- sudo usermod \-a \-G developers bob  
- sudo usermod \-a \-G developers charlie  
- sudo usermod \-a \-G managers diana  
- sudo usermod \-a \-G managers alice  
- \# eve는 기타 사용자로 어떤 그룹에도 속하지 않음  
-   
- \# 복잡한 디렉터리 구조 생성  
- mkdir \-p {company/{departments/{dev,hr,finance,marketing},projects/{project\_a,project\_b,project\_c}},shared/{documents,resources,tools},private/{alice,bob,charlie,diana,eve},backup/{daily,weekly,monthly},logs/{2023/{01..12},2024/{01..12}}}  
-   
- \# 다양한 파일 생성  
- touch company/departments/dev/{main.py,test.py,config.py,README.md}  
- touch company/departments/hr/{employees.xlsx,contracts.pdf,policies.txt}  
- touch company/departments/finance/{budget.xlsx,reports.pdf,invoices.csv}  
- touch company/projects/project\_a/{spec.doc,code.zip,data.json}  
- touch company/projects/project\_b/{requirements.txt,source.tar.gz,notes.md}  
- touch shared/documents/{manual.pdf,guidelines.txt,templates.docx}  
- touch shared/resources/{images.zip,fonts.tar,icons.png}  
- touch private/alice/{personal.txt,settings.conf,backup.tar}  
- touch private/bob/{notes.md,config.json,archive.zip}  
- touch backup/daily/{backup\_$(date \+%Y%m%d).tar.gz,log\_$(date \+%Y%m%d).txt}  
- touch logs/2024/06/{access.log,error.log,debug.log,system.log}  
-   
- \# 실행 가능한 스크립트 파일 생성  
- echo '\#\!/bin/bash' \> shared/tools/deploy.sh  
- echo 'echo "Deployment script"' \>\> shared/tools/deploy.sh  
- echo '\#\!/bin/bash' \> shared/tools/backup.sh  
- echo 'echo "Backup script"' \>\> shared/tools/backup.sh  
- echo '\#\!/bin/bash' \> company/departments/dev/build.sh  
- echo 'echo "Build script"' \>\> company/departments/dev/build.sh  
-   
- \# 설정 파일 생성  
- echo "database\_host=localhost" \> company/departments/dev/database.conf  
- echo "api\_key=secret123" \> company/departments/dev/api.conf  
- echo "salary\_data=confidential" \> company/departments/hr/salaries.txt  
-   
- echo "실습 환경이 구성되었습니다\!"  
- tree permission\_practice  
    
  ---

  ## **1\. 기본 권한 설정**

  ### **1-1. 개발팀 파일 권한 설정**

개발팀(developers 그룹) 관련 파일들의 권한을 다음과 같이 설정하세요:

* `company/departments/dev/` 디렉터리: 개발팀만 접근 가능, 소유자와 그룹은 읽기/쓰기/실행 가능  
* `company/departments/dev/main.py`: 개발팀은 읽기/쓰기, 기타는 읽기만 가능  
* `company/departments/dev/build.sh`: 개발팀만 실행 가능

**명령어를 작성하세요:**

- \# 1-1 답안 작성란  
-  cd company/departments && chgrp developers ./dev
-   chmod 770 ./dev
- chown alice:developers ./dev
```
[root@localhost departments]# ls -l
total 0
drwxrwx---. 2 alice developers 123 Jul 21 16:49 dev
drwxr-xr-x. 2 root  root        64 Jul 21 16:49 finance
drwxr-xr-x. 2 root  root        89 Jul 21 16:49 hr
drwxr-xr-x. 2 root  root         6 Jul 21 16:49 marketing
```
- cd dev && chown alice:developers ./main.py && chmod 764 ./main.py
```
[root@localhost dev]# ls -altr
total 12
drwxr-xr-x. 6 root  root        59 Jul 21 16:49 ..
-rw-r--r--. 1 root  root         0 Jul 21 16:49 test.py
-rw-r--r--. 1 root  root         0 Jul 21 16:49 README.md
-rw-r--r--. 1 root  root         0 Jul 21 16:49 main.py
-rw-r--r--. 1 root  root         0 Jul 21 16:49 config.py
-rw-r--r--. 1 root  root        24 Jul 21 16:49 database.conf
-rw-r--r--. 1 root  root        32 Jul 21 16:49 build.sh
-rw-r--r--. 1 root  root        18 Jul 21 16:49 api.conf
drwxrwx---. 2 alice developers 123 Jul 21 16:49 .
[root@localhost dev]# chown alice:developers ./main.py && chmod 764 ./main.py
[root@localhost dev]# ls -l main.py
-rwxrw-r--. 1 alice developers 0 Jul 21 16:49 main.py
```
chown alice:developers ./build.sh && chmod 010 ./build.sh
```
[root@localhost dev]# ls -l ./build.sh
------x---. 1 alice developers 32 Jul 21 16:49 ./build.sh
```
  ### **1-2. 개인 디렉터리 보안 설정**

각 사용자의 개인 디렉터리와 파일을 다음과 같이 설정하세요:

* `private/alice/` 디렉터리: alice만 접근 가능  
* `private/alice/personal.txt`: alice만 읽기/쓰기 가능  
* `private/bob/config.json`: bob만 읽기/쓰기 가능

**명령어를 작성하세요:**

- \# 1-2 답안 작성란  
- chown alice:alice ./alice
- chown alice:alice ./personal.txt && chmod 600 personal.txt  
```
[root@localhost alice]# ls -l personal.txt
-rw-------. 1 alice alice 0 Jul 21 16:49 personal.txt
```
chown bob:bob ./config.json && chmod 600 ./config.json
```
[root@localhost bob]# ls -l config.json
-rw-------. 1 bob bob 0 Jul 21 16:49 config.json
```
  ---

  ## **2\. 그룹 기반 권한 관리**

  ### **2-1. 공유 리소스 접근 권한**

`shared/` 디렉터리의 권한을 다음과 같이 설정하세요:

* `shared/documents/`: developers와 managers 그룹 모두 읽기 가능, 소유자만 쓰기 가능  
* `shared/resources/`: developers 그룹만 접근 가능  
* `shared/tools/`: 모든 사용자가 읽기 가능, developers 그룹만 실행 가능

**명령어를 작성하세요:**

- \# 2-1 답안 작성란  
- groupadd dev_mng
usermod -aG dev_mng alice
usermod -aG dev_mng bob
usermod -aG dev_mng charlie
usermod -aG dev_mng diana
chown alice:dev_mng ./documents && chmod 240 ./documents
- chown charlie:developers ./resources && chmod 770 ./resources
- chown diana:developers ./tools && chmod 414 ./tools
```
[root@localhost shared]# ls -l
total 0
d-w-r-----. 2 alice   dev_mng    68 Jul 21 16:49 documents
drwxrwx---. 2 charlie developers 58 Jul 21 16:49 resources
dr----xr--. 2 diana   developers 40 Jul 21 16:49 tools
```
  ### **2-2. 프로젝트별 협업 권한**

프로젝트 디렉터리의 권한을 다음과 같이 설정하세요:

* `company/projects/project_a/`: developers 그룹 구성원들이 협업할 수 있도록 설정  
* `company/projects/project_b/`: alice와 bob만 접근 가능하도록 설정

**명령어를 작성하세요:**

- \# 2-2 답안 작성란  
- chown alice:developers project_a && chmod 770 ./project_a  
groupadd alice_bob
usermod -aG alice_bob alice
usermod -aG alice_bob bob
- chown alice:alice_bob ./project_b && chmod 770 ./project_b  
```
[root@localhost projects]# ls -l
total 0
drwxrwx---. 2 alice developers 55 Jul 21 16:49 project_a
drwxrwx---. 2 alice alice_bob  67 Jul 21 16:49 project_b
drwxr-xr-x. 2 root  root        6 Jul 21 16:49 project_c
```
  ---

  ## **3\. 고급 권한 설정**

  ### **3-1. 특수 권한 적용**

다음 파일들에 특수 권한을 설정하세요:

* `shared/tools/deploy.sh`: SetGID 설정으로 developers 그룹 권한으로 실행  
* `backup/` 디렉터리: Sticky Bit 설정으로 파일 소유자만 삭제 가능  
* `company/departments/hr/salaries.txt`: SetUID 설정 (실제 환경에서는 권장하지 않지만 실습용)

**명령어를 작성하세요:**

- \# 3-1 답안 작성란  
-   chown alice:developers ./deploy.sh && chmod g+s ./deploy.sh
```
[root@localhost tools]# ls -l
total 8
-rw-r--r--. 1 root  root       33 Jul 21 16:49 backup.sh
-rw-r-Sr--. 1 alice developers 37 Jul 21 16:49 deploy.sh
```

chmod u+s ./salaries.txt
```
[root@localhost hr]# ls -l
total 4
-rw-r--r--. 1 root  root   0 Jul 21 16:49 contracts.pdf
-rw-r--r--. 1 root  root   0 Jul 21 16:49 employees.xlsx
-rw-r--r--. 1 root  root   0 Jul 21 16:49 policies.txt
-rwSr--r--. 1 alice alice 25 Jul 21 16:49 salaries.txt
```
  ### **3-2. 숫자 표기법으로 복합 권한 설정**

다음 파일들의 권한을 숫자 표기법으로 설정하세요:

* `company/departments/finance/budget.xlsx`: 소유자(rw-), 그룹(r--), 기타(---)  
* `shared/documents/manual.pdf`: 소유자(rw-), 그룹(r--), 기타(r--)  
* `logs/2024/06/system.log`: 소유자(rw-), 그룹(r--), 기타(---)

**명령어를 작성하세요:**

- \# 3-2 답안 작성란  
-   
-   
    
  ---

  ## **4\. 소유권 및 그룹 관리**

  ### **4-1. 소유권 변경**

다음과 같이 파일과 디렉터리의 소유권을 변경하세요:

* `company/departments/dev/` 디렉터리와 모든 하위 파일: alice 소유, developers 그룹  
* `company/departments/hr/` 디렉터리와 모든 하위 파일: diana 소유, managers 그룹  
* `shared/tools/` 디렉터리와 모든 하위 파일: root 소유, developers 그룹

**명령어를 작성하세요:**

- \# 4-1 답안 작성란  
-   
- 


  ### **4-2. 그룹 전용 변경**

다음 디렉터리들의 그룹만 변경하세요:

* `company/projects/`: managers 그룹으로 변경  
* `backup/daily/`: developers 그룹으로 변경

**명령어를 작성하세요:**

- \# 4-2 답안 작성란  
-   
-   
    
  ---

  ## **5\. 실전 시나리오 해결**

  ### **5-1. 보안 감사 및 수정**

다음 보안 문제들을 찾아서 수정하세요:

1. 777 권한으로 설정된 파일이나 디렉터리를 찾아 적절한 권한으로 변경  
2. 다른 사용자가 읽을 수 있는 민감한 파일들의 권한 수정  
3. 실행 권한이 없어야 할 데이터 파일에서 실행 권한 제거

**명령어를 작성하세요:**

- \# 5-1 답안 작성란 (보안 감사 명령어)  
-   
-   
- \# 5-1 답안 작성란 (수정 명령어)  
-   
-   
    
  ---

  ## **6\. umask 및 기본 권한 관리**

  ### **6-1. umask 설정 및 테스트**

현재 시스템의 umask 값을 확인하고 다음과 같이 변경한 후 테스트하세요:

* umask 값을 027로 설정  
* 새 파일과 디렉터리를 생성하여 기본 권한 확인  
* 원래 umask 값으로 복원

**명령어를 작성하세요:**

- \# 6-1 답안 작성란  
-   
- 


  ### **6-2. 사용자별 umask 커스터마이징**

각 사용자별로 다른 umask 값을 설정하세요:

* alice: umask 022 (일반적인 개발자 설정)  
* diana: umask 077 (보안 강화 설정)  
* eve: umask 002 (그룹 협업 친화적 설정)

**명령어를 작성하세요:**

- \# 6-2 답안 작성란  
-   
-   
    
  ---

  ## **8\. 실행 권한 및 스크립트 관리**

  ### **8-1. 스크립트 실행 환경 설정**

다음 스크립트 파일들의 실행 권한을 적절히 설정하세요:

* `shared/tools/deploy.sh`: developers 그룹만 실행 가능  
* `shared/tools/backup.sh`: alice와 diana만 실행 가능 (ACL 사용)  
* `company/departments/dev/build.sh`: 소유자만 실행 가능

**명령어를 작성하세요:**

- \# 8-1 답안 작성란  
-   
- 


  ### **8-2. 시스템 스크립트 보안 설정**

시스템 관리용 스크립트를 다음과 같이 설정하세요:

* root 소유의 시스템 관리 스크립트 생성 (system\_check.sh)  
* 일반 사용자가 sudo 없이 실행할 수 있도록 SetUID 설정  
* 실행 로그를 남기도록 권한 설정

**명령어를 작성하세요:**

- \# 8-2 답안 작성란  
-   
-   
    
  ---

  ## **9\. 디렉터리별 접근 제어**

  ### **9-1. 계층적 접근 제어**

다음과 같은 계층적 접근 권한을 설정하세요:

* `company/` : 모든 직원이 읽기 가능  
* `company/departments/` : 각 부서원만 해당 부서 디렉터리 접근 가능  
* `company/departments/finance/` : managers 그룹만 접근 가능  
* `company/projects/` : 프로젝트 참여자만 해당 프로젝트 접근 가능

**명령어를 작성하세요:**

- \# 9-1 답안 작성란  
-   
- 


  ### **9-2. 임시 작업 공간 설정**

임시 작업을 위한 공간을 다음과 같이 설정하세요:

* `temp/` 디렉터리 생성 (모든 사용자가 파일 생성 가능)  
* Sticky Bit 설정으로 자신의 파일만 삭제 가능  
* 1주일 후 자동 삭제되도록 권한 설정 (cron 작업용)

**명령어를 작성하세요:**

- \# 9-2 답안 작성란  
-   
-   
    
  ---

  ## **10\. 백업 및 아카이브 권한 관리**

  ### **10-1. 백업 파일 보안**

백업 관련 파일들의 보안을 다음과 같이 설정하세요:

* `backup/daily/` : developers 그룹이 백업 생성 가능, 읽기 전용  
* `backup/weekly/` : managers만 접근 가능  
* `backup/monthly/` : root만 접근 가능  
* 모든 백업 파일은 생성 후 읽기 전용으로 자동 변경

**명령어를 작성하세요:**

- \# 10-1 답안 작성란  
-   
-   
    
  ---

  