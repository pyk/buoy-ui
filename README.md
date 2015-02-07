# buoy-ui

## Development

    docker run --name buoy-ui-builder -v $PWD:/x_data bayu/nodejs:0 /bin/bash -c 'cd x_data && npm install && npm install bower -g && bower install'
    docker commit -m "buoy builder" buoy-ui-builder bayu/buoy-ui:builder
    docker run -v $PWD:/x_data -d -p 8080:8080 bayu/buoy-ui:builder /bin/bash -c 'cd x_data && /x_data/node_modules/.bin/gulp start'

build `DOCKER_NODE_JS_IMG` from this [repo][docker-nodejs].

[docker-nodejs]: https://github.com/pyk/docker-nodejs

## Nginx service

    docker build -t bayu/buoy-ui:service .
    docker run -P -d bayu/buoy-ui:service

Explanation about how to maintain configuration file available on this [post][nginx-docker].

[nginx-docker]: http://nginx.com/blog/deploying-nginx-nginx-plus-docker/