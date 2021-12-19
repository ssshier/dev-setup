# delete useless bootmgr

run CMD as administrator

```bat
Bcdedit /enum firmware
```

```bat
Bcdedit /export savebcd
Copy savebcd newbcd
```


rm.cmd
```bat
Bcdedit /store newbcd /delete {4c76ff3e-5f76-11ec-b9f0-806e6f6e6963}
Bcdedit /import newbcd /clean
```

