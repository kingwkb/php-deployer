FROM composer

RUN composer global require deployer/deployer --dev; \
    composer global require deployer/recipes --dev

ENV PATH="/tmp/vendor/bin:${PATH}"

FROM node:10 as frontend-builder

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install yarn  cross-env -g
