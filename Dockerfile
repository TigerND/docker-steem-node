# -*- coding: utf-8 -*-

FROM teego/steem-wallet:0.13.0-Ubuntu-xenial

MAINTAINER Aleksandr Zykov <tiger@mano.email>

COPY ./docker-entrypoint.sh /

EXPOSE 2001 8090

VOLUME ["/witness_node_data_dir"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["steemd"]
