# !/bin/sh

# runs correct actions based on wether or not
# the dock is connected

base=`dirname $0`

thunderbolt_status(){
    system_profiler SPThunderboltDataType 2>/dev/null | grep Elgato
    if [ $? = 0 ]; then
        return 0
    else
        return 1
    fi
}

loop() {
    while true; do
      thunderbolt_status
        if [ $? != 0 ]; then
            $base/disconnect.sh 2> $base/error-disconnect
            exit 0
        else
            echo "still connected..."
            sleep 1
        fi
    done
}



thunderbolt_status
if [ $? = 0 ]; then
    echo "Elgato dock is connected"

    # run connection script
    $base/connect.sh 2> $base/error

    # start loop
    loop
else
    echo "Elgato dock is not connected"
fi
