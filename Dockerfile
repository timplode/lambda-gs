FROM amazonlinux

RUN yum install -y gcc make tar gzip 
RUN curl -L "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs927/ghostscript-9.27.tar.gz" > ghostscript-9.27.tar.gz && \
gunzip ghostscript-9.27.tar.gz && \
tar -xf ghostscript-9.27.tar 
RUN cd ghostscript-9.27 && \
./configure && \
make && \
make install
