"C:\Program Files\Docker\Docker\Docker Desktop.exe"
timeout /t 2 /nobreak
"C:\Program Files\VcXsrv\vcxsrv.exe" -run config.launch
timeout /t 2 /nobreak
call run_docker_from_local_build.bat