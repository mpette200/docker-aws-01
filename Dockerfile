FROM public.ecr.aws/lambda/python:3.9-x86_64

RUN mkdir -p /usr/lib/oracle-client
COPY instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip /tmp

RUN yum -y install libaio
RUN pip freeze
RUN pip install oracledb
RUN ls -al ${LAMBDA_RUNTIME_DIR}
RUN ls -al ${LAMBDA_TASK_ROOT}
