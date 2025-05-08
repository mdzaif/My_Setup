#!/bin/bash

# Download and extract part 

echo "Download the fonts..."
wget -P ~/fonts/ https://raw.githubusercontent.com/mdzaif/My_Setup/main/manual/solution/font_back.zip

sleep 2
echo "File download complete"
echo "Extract the files..."
sleep 2
unzip ~/fonts/font_back.zip -d ~/fonts/
echo "Extract complete"
sleep 2

# Setup part

echo "Start Setup..."
sleep 2

# Create TTF folder
if [[ -d /usr/share/fonts/TTF ]];then
  echo "Directory /usr/share/fonts/TTF exists"
else
  echo "Directory /usr/share/fonts/TTF not exists"
  echo "Directory creating...."
  sudo mkdir /usr/share/fonts/TTF
  echo "Directory created at /usr/share/fonts/TTF"
fi

# Copy the fonts directory
sudo cp ~/fonts/fonts_back/* /usr/share/fonts/TTF/


# Save the changes
fc-cache -f -v

echo "--------------------"
#echo "remove unnecessary files..."
rm -rf ~/fonts/
echo "Your done!"
