# this is a test definition file for singularity container build up
# at least back in version 2.2, there was a length limit on this .def file
# and this was a test to where it stopped.


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
    echo "This is what happens when you run the container..."


%post
    echo "Hello from inside the container"
    yum -y install vim-minimal

    # adding a number of rather useful packages
    yum -y install bash
    yum -y install zsh

    # bootstrap will terminate on first error, so be careful!
    test -d /var/singularity || mkdir /var/singularity
    touch                          /var/singularity/singularity_bootstart.log
    date                        >> /var/singularity/singularity_bootstart.log


        echo hello world.  testing 0 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 1 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 2 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 3 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 4 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 5 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 6 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 7 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 8 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 9 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 10 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 11 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 12 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 13 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 14 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 15 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 16 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 17 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 18 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 19 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 20 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 21 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 22 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 23 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 24 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 25 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 26 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 27 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 28 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 29 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 30 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 31 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 32 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 33 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 34 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 35 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 36 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 37 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 38 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 39 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 40 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 41 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 42 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 43 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 44 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 45 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 46 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 47 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 48 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 49 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 50 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 51 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 52 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 53 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 54 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 55 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 56 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 57 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 58 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 59 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 60 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 61 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 62 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 63 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 64 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 65 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 66 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 67 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 68 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 69 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 70 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 71 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 72 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 73 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 74 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 75 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 76 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 77 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 78 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 79 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 80 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 81 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 82 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 83 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 84 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 85 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 86 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 87 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 88 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 89 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 90 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 91 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 92 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 93 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 94 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 95 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 96 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 97 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 98 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 99 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 100 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 101 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 102 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 103 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 104 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 105 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 106 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 107 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 108 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 109 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 110 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 111 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 112 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 113 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 114 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 115 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 116 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 117 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 118 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 119 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 120 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 121 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 122 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 123 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 124 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 125 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 126 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 127 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 128 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 129 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 130 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 131 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 132 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 133 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 134 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 135 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 136 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 137 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 138 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 139 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 140 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 141 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 142 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 143 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 144 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 145 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 146 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 147 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 148 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 149 ... >> /var/singularity/singularity_bootstart.log
        echo hello world.  testing 150 ... >> /var/singularity/singularity_bootstart.log
        echo done >> /var/singularity/singularity_bootstart.log

