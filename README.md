# setenv
Just set some stuff...
* * *
Using `gsettings list-recursively` command can be pretty handy if you want to check which exact settings are changed after clicking in "Settings" in GNOME.

```
gsettings list-recursively > sett_before
#change some settings using gui 
gsettings list-recursively > sett_after

diff settings_before settings_after --color

```
