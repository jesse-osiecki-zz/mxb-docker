FROM ubuntu:14.04
RUN apt-get update -y && apt-get install -y wget
RUN wget http://cdndl.maxfocus.com/maxdownloads/mxb_~linux-1_amd64.deb
RUN dpkg -i mxb_~linux-1_amd64.deb
RUN ln -s /opt/MXB/lib/libvixMntapi.so.1 /lib/x86_64-linux-gnu/
RUN ln -s /opt/MXB/lib/libvixDiskLib.so.5 /lib/x86_64-linux-gnu/
RUN ln -s /opt/MXB/lib/libfuse.so.2 /lib/x86_64-linux-gnu/
RUN rm mxb_~linux-1_amd64.deb

RUN mkdir /host_data
CMD ["/opt/MXB/bin/BackupFP"]
