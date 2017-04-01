
# Singularity container definition hosting tool from circos.ca in CentOS 6 env
# Circos installed in /opt, contain examples and tutorials.  
# xv graphics viewer included to see generated .png, doesn't work for .svg
# This image need to be at least 1200 MB 
# adopted from  https://singularity-hub.org/containers/79/

# Full version of this file work when build on a CentOS 6 machine w/ Singularity 2.2 (.1?)
# https://github.com/tin6150/circos/blob/master/Singularity
# https://singularity-hub.org/collections/98/

BootStrap: yum
OSVersion: 6

MirrorURL: http://mirror.centos.org/centos-%{OSVERSION}/%{OSVERSION}/os/$basearch/
##MirrorURL: http://mirror.centos.org/centos-6/6.8/os/x86_64
Include: yum

# If you want the updates (available at the bootstrap date) to be installed
# inside the container during the bootstrap instead of the General Availability
# point release (7.x) then uncomment the following line
# UpdateURL: http://mirror.centos.org/centos-%{OSVERSION}/%{OSVERSION}/updates/$basearch/


%runscript
    /opt/circos/circos-0.69-4/bin/circos 


%post
    yum -y install bash
    yum -y install wget
    yum -y install perl
    yum -y install perl-CPAN
    #wget -nc https://raw.githubusercontent.com/tin6150/singhub/master/circos_perl_mod.sh
    #bash circos_perl_mod.sh
    # more tba https://github.com/tin6150/circos/blob/622f6bbc6950e623dfa0d49243b28cd5dedb0118/Singularity
