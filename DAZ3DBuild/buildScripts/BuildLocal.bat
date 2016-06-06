@REM cd src\buildScripts\Common
@REM assumes this bat file is in the common folder...

@rem using DSDEV nant : 
@rem set nant=...

@rem using local nant
@rem @set nant=..\..\tools\NAnt\bin\NAnt.exe
@set nant=tools\NAnt\bin\NAnt.exe

@set buildfile=-buildfile:buildScripts\protobuf.build
set localopts=-D:"version.build.inc=0" -D:"debug.publish.local=true"
@rem -D:"debug.skip.compile=true"
@rem -D:"debug.local.cp=true"
@rem -D:"debug.skip.bitrock=true"
set nbopts=

@echo.
@echo nant.exe : %nant%
@echo build    : %buildfile%
@echo local    : %localopts%
@echo NB       : %nbopts%
@echo params   : %*
@pause
@echo.

%nant% %buildfile% %nbopts% %localopts% %*
