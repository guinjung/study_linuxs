## **✅ 문제 : 간단한 서버 관리 스크립트 작성**

### **🔧 요구사항**

* `start`: 포트 8000에서 `http.server`를 백그라운드로 실행 (`nohup`, 로그는 `server.log`)

* `stop`: 실행 중인 프로세스를 찾아 종료

* `status`: 프로세스가 실행 중인지 확인하여 출력

* `restart`: 중지 후 다시 실행

  ### **🎯 실행 예시**

  $ ./webserver.sh start  
  서버가 백그라운드에서 시작되었습니다.  
    
  $ ./webserver.sh status  
  서버 실행 중입니다. PID: 13579  
    
  $ ./webserver.sh stop  
  서버가 종료되었습니다.  
    
  $ ./[webserver.sh](http://webserver.sh) tail\_log  
  … log message 확인


문제 모두 조건에 따라:

* `if [ "$1" == "start" ]` 식으로 흐름 제어

* 변수 `PORT`, `PID`, `LOGFILE` 등을 정의해 구성 가능


'''
[guinjung@192.168.0.59 ~/Downloads/webroot]$ cat ./webserver_01.sh
PID_FILE="http.pid"
LOG_FILE="server.log"
CMD="python3 -m http.server $PORT --bind 0.0.0.0"

V_PID=$(cat http.pid)
echo $V_PID

if [ $1 = "start" ]; then
        $CMD > "$LOG_FILE" 2>&1 &
        echo $! > "$PID_FILE"
        echo "서버가 백그라운드에서 시작되었습니다."
elif [ $1 = "status" ] && [ -f "$PID_FILE" ] && ps -p $(cat $PID_FILE) ; then
        echo "서버가 실행중입니다."
        echo "PID: " && echo $V_PID
elif [ $1 = "stop" ]; then
        V_PID=$(cat http.pid)
        echo "$V_PID"
        kill -9 "$V_PID"
        echo "서버를 종료했습니다."
else
        echo "실행 중인 http서버가 없습니다."
fi

[guinjung@192.168.0.59 ~/Downloads/webroot]$ ./webserver_01.sh start
41923
서버가 백그라운드에서 시작되었습니다.


[guinjung@192.168.0.59 ~/Downloads/webroot]$ ./webserver_01.sh status
41971
    PID TTY          TIME CMD
  41971 pts/3    00:00:00 python3
서버가 실행중입니다.
PID:
41971

[guinjung@192.168.0.59 ~/Downloads/webroot]$ ./webserver_01.sh stop
41971
41971
서버를 종료했습니다.

[guinjung@192.168.0.59 ~/Downloads/webroot]$ ./webserver_01.sh status
41971
    PID TTY          TIME CMD
실행 중인 http서버가 없습니다.
'''