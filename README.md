# BYOSI
Evade EDR's the simple way, by not touching any of the API's they hook.


## Theory

Most edr's ive noticed failed to scan scripting files, as they treat them like text files. All the super flashy methods, such as residing in memory, thread injection, etc. are all very much watched. You cant even run a binary if the binary is not signed by a valid CA.

In comes BYOSI. All scripting interpeters are signed by whom ever created them, and every single one of those certs is a valid cert. Well upon testing in a live environment, the php script in this repository, which should be highly signatured was able to not only run on a system monitored by crowdstrike and trellix, but was able to establish a completely external connection WITHOUT causing any EDR detections.


## Disclaimer.

I am in no way responsible for the misuse of this. This issue is a major blind spot in EDR protection, i am only bringing it to everyones attention.
