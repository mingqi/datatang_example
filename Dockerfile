FROM index.alauda.cn/library/ubuntu:14.04

ADD ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install  -y python


ADD . /datatang_example
WORKdir /datatang_example

RUN chmod a+x /datatang_example/entrypoint.sh
RUN chmod a+x /datatang_example/spider.py


ENTRYPOINT ["/datatang_example/entrypoint.sh"]
CMD ["/usr/sbin/cron", "-f", "-L", "15"]
