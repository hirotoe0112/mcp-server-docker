FROM node:22

WORKDIR /usr/src

COPY . .

RUN npm install

RUN npm run build && \
    if [ -d "build" ]; then \
        chmod 755 build/*.js || true; \
    else \
        echo "Error: build directory was not created" && exit 1; \
    fi

CMD ["node", "build/index.js"]