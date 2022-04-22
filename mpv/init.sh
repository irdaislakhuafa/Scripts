alias webcam='mpv /dev/video0 \
--no-cache \
--no-demuxer-thread \
--video-sync=audio \
--vd-lavc-threads=1 \
--no-audio \
--window-scale=0.5 \
--vf=hflip \
--profile=low-latency \
--untimed \
--opengl-glfinish=yes \
--fps=60 \
--framedrop=no \
--speed=1.01 \
--opengl-swapinterval=0 \
--no-correct-pts '
alias wcam='webcam'
alias npv="prime-run mpv"
alias nvpv='mpv --no-vid'
alias npvsp="npv --save-position-on-quit"
