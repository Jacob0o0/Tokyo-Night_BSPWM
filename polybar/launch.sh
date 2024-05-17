#!/usr/bin/env bash
 
# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar
 
sleep 2
 
# averiguar el numero de monitores conectados
SCREEN=$(xrandr | grep " connected " | wc -l)
# La variable SCREEN valdrá 1, 2, 3, etc dependiendo lo que detecte xrandr
 
if [[ $SCREEN -eq 1 ]]; then
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar laptop 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Bars launched..."
fi
 
if [[ $SCREEN -eq 2 ]]; then
# Lanzar las 2 barras 
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar laptop 2>&1 | tee -a /tmp/polybar1.log & disown
polybar external 2>&1 | tee -a /tmp/polybar2.log & disown
 
echo "Bars launched..."
fi