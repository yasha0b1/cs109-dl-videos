@ECHO OFF
set idx=1
for /F "tokens=*" %%A in  ( %1) do  (
   CALL rtmpdump -r rtmp://flash.dce.harvard.edu/bounce -C B:0 -C Z: -C S:/%%A -C S:BounceAPI3.0 -C N:0.000000 -C S:mp4 -y mp4:%%A -o video%idx%.mp4  
)
PAUSE
CLS
