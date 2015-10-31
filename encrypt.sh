#!/bin/sh

while true
do
	read -s -p "Password: " password
	echo
	read -s -p "Password (again): " password2
	echo
	[ "$password" = "$password2" ] && break
	echo "Please try again"
done

# Assignement 2

#openssl aes-128-cbc -salt -in TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityOne.java  -out TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityOne.java.aes -k $password

#cp TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityOne.java.original TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityOne.java

#openssl aes-128-cbc -salt -in TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityTwo.java -out TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityTwo.java.aes -k $password

#cp TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityTwo.java.original TheActivityClass/Lab2_ActivityLab/app/src/main/java/course/labs/activitylab/ActivityTwo.java

# Assignement 5
#openssl aes-128-cbc -salt -in AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java -out AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.aes -k $password 

#cp AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java.original AsyncTask/Lab5-AsyncTaskLab/app/src/main/java/course/labs/asynctasklab/DownloaderTaskFragment.java

# Assignement 6
#openssl aes-128-cbc -salt -in Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/DownloaderTaskFragment.java -out Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/DownloaderTaskFragment.java.aes -k $password 

#cp Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/DownloaderTaskFragment.java.original Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/DownloaderTaskFragment.java

#openssl aes-128-cbc -salt -in Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/MainActivity.java -out Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/MainActivity.java.aes -k $password 

#cp Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/MainActivity.java.original Notifications/Lab6_NotificationsLab/app/src/main/java/course/labs/notificationslab/MainActivity.java

# Assignement 3

openssl aes-128-cbc -salt -in Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ActivityLoaderActivity.java -out Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ActivityLoaderActivity.java.aes -k $password 

git checkout -- Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ActivityLoaderActivity.java

openssl aes-128-cbc -salt -in Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ExplicitlyLoadedActivity.java -out Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ExplicitlyLoadedActivity.java.aes -k $password 

git checkout -- Intents/Lab3a_IntentsLab/app/src/main/java/course/labs/intentslab/ExplicitlyLoadedActivity.java

openssl aes-128-cbc -salt -in Intents/Lab3a_MyBrowser/app/src/main/AndroidManifest.xml -out Intents/Lab3a_MyBrowser/app/src/main/AndroidManifest.xml.aes -k $password 

rm Intents/Lab3a_MyBrowser/app/src/main/AndroidManifest.xml
