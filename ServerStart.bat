@echo off
set JAVA_EXE=C:\Program Files\Java\jdk-25.0.3\bin\java.exe
set MIN_RAM=8G
set MAX_RAM=8G

"%JAVA_EXE%" ^
-Xms%MIN_RAM% ^
-Xmx%MAX_RAM% ^
-XX:+UseG1GC ^
-XX:+AlwaysPreTouch ^
-XX:+ParallelRefProcEnabled ^
-XX:+HeapDumpOnOutOfMemoryError ^
-Dfile.encoding=UTF-8 ^
-Dfml.readTimeout=180 ^
-Dfml.queryResult=confirm ^
-jar cleanroom-0.6.12-alpha.jar nogui

pause