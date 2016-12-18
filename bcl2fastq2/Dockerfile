### bcl2fastq image for Illumina data
### Author: Mladen Kolovic <mkolovic@uwaterloo.ca>

FROM centos:7

RUN yum install -y glibc-static libarchive unzip

### Install bcl2fastqv2.17

RUN curl 'ftp://webdata2:webdata2@ussd-ftp.illumina.com/downloads/software/bcl2fastq/bcl2fastq2-v2.17.1.14-Linux-x86_64.zip' \
         -o /root/bcl2fastqv2.17.1.14.zip && \
    unzip /root/bcl2fastqv2.17.1.14.zip && \
    rpm -ivh /bcl2fastq2-v2.17.1.14-Linux-x86_64.rpm
