#!/bin/bash

# Download and extract part 

echo "Download the fonts..."
wget -P ~/fonts/ https://raw.githubusercontent.com/mdzaif/My_Setup/main/manual/solution/font_back.zip

sleep 2
echo "File download complete" 
echo "Extract the files..."
sleep 2
unzip ~/fonts/font_back.zip 
echo "Extract complete"
sleep 2

# Setup part

echo "Start Setup..."
sleep 2

# Create TTF folder
sudo mkdir /usr/share/fonts/TTF

# Copy the fonts directory
sudo cp ~/fonts/font_back/* /usr/share/fonts/TTF/


# Save the changes
fc-cache -f -v

echo "--------------------"
echo "remove unnecessary files..."
rm -rf ~/fonts/
echo "Your done!"