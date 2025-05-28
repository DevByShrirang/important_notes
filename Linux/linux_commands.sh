echo how are you > file1 --- create the file if it doent exist or overwrites it if it does
echo i am good >> file1  --   create the file if it doent exist or appends to the end if it does

absolute path and relative path -
absolute path  - path starts from root
relative path   - paath starts from current directory.
remove file-
rm filename 
remove directrory recursilvely
rm -r [directory name]
recursilvely remove directrory without requiring confirmation.
rm -rf [directory_name]

move file to different location
mv shri.txt /tmp/

symbolic link to a file- 
 this command will create shortcut path.
 ln -s /root/shrirang/tmp


 head and tail
 head -n 3 file.txt --- showing first 3 line of file
 tail -n 3 file.txt ----showing last 3 lines of file.

 gpg - gpg command stand for GNU privacy guard- its used to encrypt, decrypt, sign and verify files. used for secure communication
 gpg -c - symmetric encryption- encrypt file using passphrase . for personal file protection.
 gpg -e - assymetric encryption - encrypt file using reciepient public key-- recipient decrypt it using their private key.used
          for secure communication.

***************
search the directory in particular location if the directory is not available then create a directory
[ ! -d /root/shrirang ] && mkdir -p /root/shrirang

list all the files list in working directory with the types
ls -l



