if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/suryanshvikramsingh/autofiltershortnerbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofiltershortnerbot
fi
cd /ben-url-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
