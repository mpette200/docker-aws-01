FROM public.ecr.aws/lambda/python:3.9-x86_64

RUN yum -y install libaio
RUN pip install --upgrade pip setuptools wheel
RUN pip install oracledb
