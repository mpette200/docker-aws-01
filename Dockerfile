FROM public.ecr.aws/lambda/python:3.9-x86_64

RUN mkdir -p /usr/my-libs/oracle-client
COPY instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip /usr/my-libs/oracle-client
RUN unzip /usr/lib/oracle-client/instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip -d /usr/my-libs/oracle-client
RUN rm /usr/my-libs/oracle-client/instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip
RUN ls -al /usr/my-libs/oracle-client

RUN yum -y install libaio
RUN pip freeze
RUN pip install oracledb
RUN ls -al ${LAMBDA_RUNTIME_DIR}
RUN ls -al ${LAMBDA_TASK_ROOT}

RUN tree /usr/my-libs/oracle-client
