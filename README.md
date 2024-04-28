# BYOSI
Evade EDR's the simple way, by not touching any of the API's they hook.


## Theory

Most edr's ive noticed failed to scan scripting files, as they treat them like text files. All the super flashy methods, such as residing in memory, thread injection, etc. are all very much watched. You cant even run a binary if the binary is not signed by a valid CA.

In comes BYOSI(bring your own scripting interpreter). All scripting interpeters are signed by whom ever created them, and every single one of those certs is a valid cert. Well upon testing in a live environment, the php script in this repository, which should be highly signatured was able to not only run on a system monitored by crowdstrike and trellix, but was able to establish a completely external connection WITHOUT causing any EDR detections. Over the years i have noticed, every single EDR/AV is looking for binaries, because thats the popular flashy way of deliverying implants. Every single EDR is tuned to check for high entropy, suspicious sections in a binary, etc. 

But most if not all, are not configured to look into a simple PHP script.

This method of attack exploits the fact that, the steps outlined in the powershell script are exactly what a developer would be doing to some degree when first entering an environment.

The 4 lines of powershell code completely bypass the EDR and Defender AMSI is blind to it. The icing on the entire cake, is that github works as a trusted deployer.

## What this script does

The powershell script evades EDR/AV in 4 simple steps. Grabs the PHP archive for windows, extracts it to the C:\Temp\ directory in a new directory named php, grabs the implant PHP script saves it also under C:\Temp\php\ and executes the script using the whitelisted php binary, congrats, you now have a shell on a Crowdstrike monitored system, whats real funny is that, if im remembering correctly, sentinel one cant even scan php file types. So let your imaginations run wild.

## Disclaimer.

I am in no way responsible for the misuse of this. This issue is a major blind spot in EDR protection, i am only bringing it to everyones attention.

## Thanks Section

A big thanks to @im4x5yn74x for affectionately giving it the name BYOSI, and helping with the env to test in bringing this attack method to life.
