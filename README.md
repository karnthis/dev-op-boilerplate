# DevOps Traefik Boilerplate

## Why?
This project came out of my desire to understand how to correctly use Traefik as my reverse proxy. I had tried to do the same first with nginx, but it felt like nginx really wasnt built with that use in mind. Once I decoded the Traefik syntax, everything became a breeze.

So here we are, a basic setup showing configuration options I used to get up and running. When in doubt, reference [the docs](https://docs.traefik.io).

## How?

The ideal process to start using and experimenting with this boilerplate is to clone it!

```git clone https://github.com/karnthis/dev-op-boilerplate.git```

Once you have a local copy, you will need to update the placeholders:
- `MYDOMAIN` and `SUB` in the nginx config
- `MYDOMAIN` in the traefik.toml

Additionally, you will need to copy `sample.env` to `.env` and populate it with your values. This boilerplate uses Digitial Ocean, but many others are supported. To use Digital Ocean, you can create a free account and move your DNS configuration to them. It should be a similar process for [other providers](https://docs.traefik.io/configuration/acme/#provider) as well.
