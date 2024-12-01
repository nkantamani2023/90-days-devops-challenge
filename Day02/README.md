#Basic Linux Commands

### Linux Fundamentals

# History Of Linux
Linux is a Unix family, Linux is a open source software operating system which is developed by Linus Torvalds in the year of 1991 september

##Linux File system hierarchy

It is a Tree strucutre everything is represented as a file including hardware program

```
/ : is the base of the linux directory is the root 
```
```
/root : home directory
```
```
/bin : user binaries (contains binary executables)
```
```
/sbin : system binaries
```
```
/dev : Device files
```
```
/var : varibale files 
```
```
/mnt : mount directories 
```
```
/media : removable media devices 
```
```
/usr : user binaries 
```
```
/etc : configuration files 
```
```
/boot loader files 
```
```
/opt : optional applications
```
```
/home : home directories 
```
```
/tmp : temporary files 
```

SOME OF THE BASIC COMMANDS 

#### ls : it shows all available files and directories 
#### pwd : present working directory 
#### cd : change directory 
#### whoami shows currently login user name
#### history : shows list of all previously used commands
#### touch : is used to create empty files 
#### cp : used to copy and paste file or directory 

Installing NGINX server 


NGINX is a reverse proxy server we can host our web pages / redirect the urls etc 
``` 
AWS account -- launch an ec2 instance ubuntu flavour
```
```
then click on connect --> terminal 
```
```
created a folder here i.e mkdir devops 
```
```
cd devops 
```
```
sudo apt install nginx
```
```
now copy the public ip and paste it in another tab  (nginx is installed on your machine)
```
```
now you will get a nginx-web-page like  
```
```
now go to cd/var/www/html
```
```
sudo vim index.nginx-debian.html
```

file will open. here you can edit the content and can refresh the tab now you will get the updated page.
