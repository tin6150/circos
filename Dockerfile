# Dockerfile for creating and host circos + tools
# mostly:
# docker build -f Dockerfile .  | tee LOG.Dockerfile.txt
# where it get python from OS package, then pip to add libraries
# see DevNotes.txt for more build details


FROM rockylinux:8.9

# FROM ubuntu:21.04   
# FROM ubuntu:20.04   
# FROM ubuntu:22.04       ## invoking docker ps from inside zink has strange error, test with older version
# FROM debian:12.5-slim   ## bookworm-slim

# To set ghcr to be public, so docker pull does not get unauthorized, see
# https://www.willvelida.com/posts/pushing-container-images-to-github-container-registry/#making-our-image-publicly-accessible
LABEL org.opencontainers.image.source="https://github.com/tin6150/circos"


MAINTAINER Tin (at) BERKELEY.edu
ARG DEBIAN_FRONTEND=noninteractive
#ARG TERM=vt100
ARG TERM=dumb
ARG TZ=PST8PDT 
#https://no-color.org/
ARG NO_COLOR=1



RUN echo ''  ;\
    echo '==================================================================' ;\
    test -d /opt/gitrepo            || mkdir -p /opt/gitrepo             ;\
    test -d /opt/gitrepo/container  || mkdir -p /opt/gitrepo/container   ;\
    #cd      /opt/gitrepo/container  ;\
    # git pull ;\
    #git log --oneline --graph --decorate | tee /opt/gitrepo/container/git.lol.OUT.TXT  ;\
    cd / ;\
    echo ""

COPY .           /opt/gitrepo/container/

RUN echo ''  ;\
    echo '==================================================================' ;\
    cd    /opt/gitrepo/container/   ;\
    bash -x /opt/gitrepo/container/install.sh 2>&1 | tee /opt/gitrepo/container/install.OUT.TXT  ;\
    echo '==================================================================' ;\
    git   branch | tee /opt/gitrepo/container/git.branch.OUT.TXT  ;\
    git   log --oneline --graph --decorate | tee /opt/gitrepo/container/git.lol.OUT.TXT  ;\
    cd    /   ;\
    echo  ""

ENV DBG_APP_VER  "Dockerfile 2024.0513"
ENV DBG_DOCKERFILE Dockerfile__base

RUN  cd / \
  && touch _TOP_DIR_OF_CONTAINER_  \
  && echo  "--------" >> _TOP_DIR_OF_CONTAINER_   \
  && TZ=PST8PDT date  >> _TOP_DIR_OF_CONTAINER_   \
  && echo  "$DBG_APP_VER"   >> _TOP_DIR_OF_CONTAINER_   \
  && echo  "Grand Finale for Dockerfile"


ENV TZ America/Los_Angeles 
# ENV TZ likely changed/overwritten by container's /etc/csh.cshrc
# ENV does overwrite parent def of ENV, so can rewrite them as fit.
ENV TEST_DOCKER_ENV     this_env_will_be_avail_when_container_is_run_or_exec
ENV TEST_DOCKER_ENV_2   Can_use_ADD_to_make_ENV_avail_in_build_process
ENV TEST_DOCKER_ENV_REF https://vsupalov.com/docker-arg-env-variable-guide/#setting-env-values

ENV TEST_DOCKER_ENV_YEQ1="Dockerfile ENV assignment as foo=bar, yes use of ="
ENV TEST_DOCKER_ENV_NEQ1 "Dockerfile ENV assignment as foo bar, no  use of =, both seems to work"


# unsure how to append/add to PATH?  likely have to manually rewrite the whole ENV var
#ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/conda/bin
# above is PATH in :integrationU where R 4.1.1 on Debian 11  works on Ubuntu 16.04 path
# below PATH doesn't help resolve Rscript /main.R not finding R problem, but it should not hurt.
#-- ENV PATH=/usr/lib/R/bin/exec:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#-- unset path to ensure it didn't make Rscript behave worse cuz somehow "test" got masked/lost


ENTRYPOINT [ "/bin/bash" ]
#ENTRYPOINT [ "/bin/python3" ]
# $@ should be passed by docker run as arg when ENTRYPOINT is invoked
# ref https://stackoverflow.com/questions/32727594/how-to-pass-arguments-to-shell-script-through-docker-run


# vim: shiftwidth=4 tabstop=4 formatoptions-=cro nolist nu syntax=on
