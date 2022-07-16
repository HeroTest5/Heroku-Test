wget https://raw.githubusercontent.com/thereisnothinginhere/heroleechbot0sdaf/master/tobrot/helper_funcs/rclone.conf
ls
mkdir drive
rclone mount Shared: drive --vfs-cache-mode writes --daemon --config=rclone.conf
cd drive
pwd
ls -al

