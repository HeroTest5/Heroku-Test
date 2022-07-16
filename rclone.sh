curl https://rclone.org/install.sh | sudo bash
curl 'https://raw.githubusercontent.com/HeroBenHero/HeroBenHero.github.io/main/Kodi/Latest/rclone.conf' > rclone.conf
rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" Shared2:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
