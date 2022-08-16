FROM tpdock/freeradius:latest
RUN apt-get update && apt-get install -y \
         libconfig-file-perl \
         libencode-locale-perl \
         libfile-listing-perl \
         libfont-afm-perl \
         libhtml-form-perl \
         libhtml-format-perl \
         libhtml-parser-perl \
         libhtml-tagset-perl \
         libwww-perl \
         libtry-tiny-perl
RUN mkdir /usr/lib/linotp && chmod +x /usr/lib/linotp/ && mkdir /etc/linotp2 && chmod +x /etc/linotp2/
RUN rm /etc/freeradius/users
COPY radius_linotp.pm /usr/lib/linotp/
RUN chmod o-w /usr/lib/linotp/radius_linotp.pm
COPY users /etc/freeradius/
RUN chmod o-w /etc/freeradius/users
COPY perl /etc/freeradius/modules/
RUN chmod o-w /etc/freeradius/modules/perl
COPY rlm_perl.ini /etc/linotp2/
RUN chmod o-w /etc/linotp2/rlm_perl.ini
COPY linotp /etc/freeradius/sites-available/
RUN chmod o-w /etc/freeradius/sites-available/linotp
RUN ln -s ../sites-available/linotp /etc/freeradius/sites-enabled
RUN rm /etc/freeradius/sites-enabled/default && rm /etc/freeradius/sites-enabled/inner-tunnel
