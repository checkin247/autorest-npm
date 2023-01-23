FROM node:lts-alpine
RUN npm install -g autorest

# no need to install dedicated repositories
# autorest will install the latest packages at runrime
# RUN npm install -g @autorest/typescript
# RUN npm install -g @autorest/modelerfour

WORKDIR /tmp

ENTRYPOINT ["autorest"]