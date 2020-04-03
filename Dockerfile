FROM luluisco/covid:latest
COPY ./work2 /home/mlds/work
USER root
RUN chmod -R a+rwx /home/mlds/work
RUN jupyter trust /home/mlds/work/Covid_19.ipynb  
CMD ["mlds.sh"]