#!/bin/sh

echo "Please enter the password";
read -s password;

cp AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.original

openssl aes-128-cbc -d -salt -in AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.aes -out AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java -k $password
