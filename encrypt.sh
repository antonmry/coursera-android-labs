#!/bin/sh

echo "Please enter the password";
read -s password;

openssl aes-128-cbc -salt -in AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java -out AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.aes -k $password 

cp AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.original AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java
