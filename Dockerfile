FROM luluisco/covid:latest
COPY ./work2 /home/mlds/work
RUN chmod -R a+rwx /home/mlds/work
CMD ["mlds.sh"]