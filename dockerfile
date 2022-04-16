from node:10-alpine

workdir /usr/app
copy package.json yarn.lock ./

run yarn

copy . .

expose 3000
cmd ["yarn", "start"]