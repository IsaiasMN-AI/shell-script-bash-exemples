#!/bin/bash

pgrep -f backend.jar > /dev/null

if [ $? -eq 1 ]; then
    echo There is no backend.jar running.
    # Cria um processo falso para rodar o else na próxima execução.
    for i in {1..5}; do
        ./backend.jar & 
        ./bad_backend.jar &
    done
else
    find_process=($(pgrep -f backend.jar))

    for PID in ${find_process[*]}; do

        count=0
        kill -0 "$PID" > /dev/null 2>&1
        status_pid=$?

        while [ $status_pid -eq 0 ]; do

            if [[ $status_pid -eq 0 && $count -eq 2 ]]; then
                break
            fi

            kill -15 "$PID" > /dev/null 2>&1
            echo "Stopping PID: $PID" 
            sleep 2

            kill -0 "$PID" > /dev/null 2>&1
            status_pid=$?

            if [ $status_pid -ne 0 ]; then
                echo "$PID is dead."
                echo =========================================
            else 
                echo "$PID still runnig"
                echo "It will try again in 5 sec."
                echo =========================================
                sleep 3
            fi

            ((count+=1))
        done
    done

    pgrep -f backend.jar > /dev/null 2>&1

    if [ $? -eq 0 ]; then

        echo =========================================
        echo "Some process still running."
        echo "It will force the stopping."
        echo =========================================
        echo =========================================

        for PID in ${find_process[*]}; do

            count=0
            kill -0 "$PID" > /dev/null 2>&1
            status_pid=$?

            while [ $status_pid -eq 0 ]; do

                if [[ $status_pid -eq 0 && $count -eq 5 ]]; then
                    break
                fi

                kill -9 "$PID" > /dev/null 2>&1
                echo "Stopping PID: $PID" 
                sleep 2

                kill -0 "$PID" > /dev/null 2>&1
                status_pid=$?

                if [ $status_pid -ne 0 ]; then
                    echo "$PID is dead."
                    echo =========================================
                else 
                    echo "$PID still runnig"
                    echo "It will try again in 5 sec."
                    echo =========================================
                    sleep 3
                fi

                ((count+=1))
            done
        done
    fi
fi