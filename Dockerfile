FROM ubuntu
RUN apt-get update
RUN apt-get install nginx wget -y
RUN curl https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator -o /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
