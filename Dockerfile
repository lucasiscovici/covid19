FROM luluisco/covid:latest
COPY ./work2 /home/mlds/work
CMD ["mlds.sh"]