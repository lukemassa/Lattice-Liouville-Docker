# Lattice-Liouville-Docker

This repo is to dockerize https://github.com/tgbudd/Lattice-Liouville

Full disclosure I don't know c++ build proccesses, so this is probably not the cleanest way

## Instructions

The original is done interactively, so you should be able to just run `docker run -it  lmassa/lattice-liouville:0.1`

Here I mount in a dir so we can grab the results afterards.
```
lmassa@lmassa-dev:~$ docker run -v /tmp/lattice-liouville-output:/output -it  lmassa/lattice-liouville:0.1
width = 512
gamma = 1.412
averaging method (0=BOX_DIVISION,1=BOX_AVERAGING,2=DISK_AVERAGING,3=DISK_DIFFUSION) = 2
delta min = .001
delta max = .0064
delta factor = 2.0
normalize volume (1=yes,0=no) = 0
measurements per delta per output = 50
output path = /output
...
```

In this example, afterwards you can pick up the results from `/tmp/lattice-liouville-output` on the host system.
