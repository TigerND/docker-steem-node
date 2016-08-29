# -*- coding: utf-8 -*-

FROM teego/steem-wallet:0.13.0-Ubuntu-xenial

MAINTAINER Aleksandr Zykov <tiger@mano.email>

ADD config.ini /r/files/config.ini.sample

ADD docker-entrypoint.sh /

EXPOSE 2001 8090

VOLUME ["/steem"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["steemd"]
