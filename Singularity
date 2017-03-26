
# Singularity container definition hosting tool from circos.ca in CentOS 6 env
# Circos installed in /opt, contain examples and tutorials.  
# xv graphics viewer included to see generated .png, doesn't work for .svg
# This image need to be at least 1200 MB 
# adopted from  https://singularity-hub.org/containers/79/

BootStrap: yum
OSVersion: 6

# dont work when build from ubuntu14 :(
# releasever: 6Workstation

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
    echo "Hello from inside the container"
    yum -y install vim-minimal

    # adding a number of rather useful packages
    yum -y install bash
    yum -y install wget
    yum -y install curl
    yum -y install tar              # circos extract
    yum -y install coreutils        # for convinience, provide yes
    yum -y install which            # for debugging use only, not req
    yum -y install util-linux-ng    # u/mount, etc
    #yum -y install eog              # throws DBus error :(

    # dependencies by circos
    yum -y install gawk             # circos ./list.modules 
    yum -y install gcc              # some cpan modules need gcc (eg Clone)
    yum -y install gd
    yum -y install perl
    yum -y install perl-CPAN
    yum -y install perl-CPANPLUS
    yum -y install perl-GD          # no TTF support ??



    # bootstrap will terminate on first error, so be careful!
    test -d /etc/singularity || mkdir /etc/singularity
    touch                          /etc/singularity/singularity_bootstart.log
    echo "start"                >> /etc/singularity/singularity_bootstart.log
    date                        >> /etc/singularity/singularity_bootstart.log

    #echo '*** env ***'         >> /etc/singularity/singularity_bootstart.log
    #env                        >> /etc/singularity/singularity_bootstart.log
    #echo '*** mount ***'       >> /etc/singularity/singularity_bootstart.log
    #mount                      >> /etc/singularity/singularity_bootstart.log

    # use add-on script to install necessary CPAN modules
    # This is mostly so that this .def file fit within the singularity (2.2) length limit
    wget -nc https://raw.githubusercontent.com/tin6150/singhub/master/circos_perl_mod.sh
    bash circos_perl_mod.sh


    CIRCOS_DIR=/opt/circos
    CIRCOS_VER=0.69-4
    CIRCOS_TOOLS_VER=0.22
    CIRCOS_TUTORIAL_VER=0.67
    
    CIRCOS_SOURCE_FILE=circos-${CIRCOS_VER}
    CIRCOS_TOOLS_SOURCE_FILE=circos-tools-${CIRCOS_TOOLS_VER}
    CIRCOS_TUTORIAL_SOURCE_FILE=circos-tutorials-${CIRCOS_TUTORIAL_VER}
    test -d $CIRCOS_DIR || mkdir -p $CIRCOS_DIR
    cd $CIRCOS_DIR
    wget -nc "http://circos.ca/distribution/${CIRCOS_SOURCE_FILE}.tgz"
    wget -nc "http://circos.ca/distribution/${CIRCOS_TOOLS_SOURCE_FILE}.tgz"
    wget -nc "http://circos.ca/distribution/${CIRCOS_TUTORIAL_SOURCE_FILE}.tgz"
    tar xfz ${CIRCOS_SOURCE_FILE}.tgz
    tar xfz ${CIRCOS_TOOLS_SOURCE_FILE}.tgz
    tar xfz ${CIRCOS_TUTORIAL_SOURCE_FILE}.tgz
    echo 'PATH=$PATH:'"/opt/${CIRCOS_SOURCE_FILE};" 'export $PATH' >> /etc/profile
    echo 'PATH=$PATH:'"/opt/${CIRCOS_SOURCE_FILE};" 'export $PATH' >> /etc/bashrc
    # open up perms so tutorial work
    touch       ${CIRCOS_SOURCE_FILE}/example/run.out 
    chmod 777   ${CIRCOS_SOURCE_FILE}/example/run.out 
    chmod -R a+w ${CIRCOS_TUTORIAL_SOURCE_FILE}/* 
    # clean up
    rm ${CIRCOS_SOURCE_FILE}.tgz
    rm ${CIRCOS_TOOLS_SOURCE_FILE}.tgz
    rm ${CIRCOS_TUTORIAL_SOURCE_FILE}.tgz

    # optional XV graphics viewer
    XV_PKG_FILE=xv-3.10a-37.el6.x86_64.rpm
    cd /tmp
    wget ftp://fr2.rpmfind.net/linux/atrpms/el6-x86_64/atrpms/stable/${XV_PKG_FILE} 
    rpm -i ${XV_PKG_FILE}
    rm     ${XV_PKG_FILE}


    echo "end"                  >> /etc/singularity/singularity_bootstart.log
    date                        >> /etc/singularity/singularity_bootstart.log

