
this is a very old branch based on singularity using CentOS 6.

~~~~

circos, provided via a singularity container.


- CentOS 6
- Circos installed in /opt (http://circos.ca) 
- include Examples, Tutorials
- XV graphics viewer for .png files (note this is shareware)


Building the container:

# 2.2 days:
#Singularity=/usr/local/bin/singularity
#sudo    $Singularity create --size 1200 circos.img
#sudo -E $Singularity bootstrap circos.img Singularity


VER=2.4.1
module load container/singularity/${VER}
Singularity=$( which singularity )
sudo    $Singularity build -w ./circos.img ./Singularity
  
Ref:

- https://github.com/tin6150/singhub/centos6_circos.def
- https://singularity-hub.org/collections/98/

