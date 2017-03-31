circos, provided via a singularity container.

- CentOS 6
- Circos installed in /opt (http://circos.ca) 
- include Examples, Tutorials
- XV graphics viewer for .png files (note this is shareware)


Building the container:

Singularity=/usr/local/bin/singularity
sudo $Singularity create --size 1200 circos.img
sudo $Singularity bootstrap circos.img Singularity

  
Ref:

- https://github.com/tin6150/singhub/centos6_circos.def
- https://singularity-hub.org/collections/98/

