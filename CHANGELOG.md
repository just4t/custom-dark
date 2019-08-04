CHANGELOG
=========

v0.42b stable (August 04, 2019)
---------------------------

Tested/ applied 'Master' over Mail-in-a-Box **v0.42b (August 03, 2019)** and no additional changes have been needed. Just works, too!

v0.42 stable (July 05, 2019)
---------------------------

Tested/ applied 'Master' over Mail-in-a-Box **v0.42 (July 4, 2019)** and no additional changes have been needed. Just works, too!

v0.41 beta (March 09, 2019)
---------------------------

## Custom-Dark theme:

* First release of **custom-dark** theme as a **Stand-alone** add-on for the latest official **Mail-in-a-Box** release (doesn't mean you can't try to apply it over a nearly earlier version, just test/ try it on a development/ test server first or right after you have created a server 'snapshot' to have available a point where to return if goes wrong).

**Setup:**

* To download and config. the **custom-dark** theme as **root**, run:

```
cd && git clone -b master https://github.com/just4t/custom-dark.git
cd custom-dark
/bin/bash ./config.sh && cd
```

* Then, to apply the **custom-dark** theme run:

```
/bin/bash /root/miab-themes/custom-dark/custom-dark.sh
```
* To apply/ restore the **default-light** theme run:

```
/bin/bash /root/miab-themes/custom-dark/default-light.sh
```

[**EDIT 190310-19:00 CET**] Following some client(s) request(s) decided to change the setup scripts to delete useless directories & files accordingly to the theme liked to have installed. Then, knowing all the directories & files created/ used to apply the desired theme will be deleted automatically by de setup itself, **If you wish to apply a different theme at anytime run setup again.**


**Screenshot:**

Watch a screen recording (gif): http://bit.ly/2SIiioL

<p align="center">
<img  align="center" width="95%" alt="Custom-Dark theme" src="https://5moqlg.dm.files.1drv.com/y4mKr_LGNHQUYWYNka8ez5swI2Vt6-JlZyLxAs7x9TG5F4s4XP9wKET3seNDCjLHXLWngK66J9SKIhHWYWSpLun6qjbBhus-y5lCb-pJ_FELrBoyfXIan9_yMETFjxpNkdl4IRD8N9wr0BRpXJ5KCNEadLhHKmG0F58K6kXLIsGzBXGCZKgz7PrIllaMywjhH92Iyn7a2MU1_8hLkibJzRxBA/001-custom-dark.png?psid=1">
</p>
