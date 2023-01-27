#!/bin/bash

echo "Tell me what you want to do:
A - search give package
B - install given package
C - remove given package "

read instruction

echo "Enter your package"

read package

search () {
echo "Searching for  package: $package "
yum search $package
}

install () {
echo "Installing package: $package "
yum search $package && yum install $package -y

}

remove () {
echo "Removing package: $package "
yum search $package && yum remove $package -y
}

if [[ $instruction == "A" ]]; then
search

elif [[ $instruction == "B" ]]; then
install

elif [[ $instruction == "C" ]]; then
remove

else
echo - "Please select valid method:\nsearch or install or remove"

fi
