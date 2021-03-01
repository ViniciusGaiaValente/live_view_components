FROM bitwalker/alpine-elixir-phoenix:latest

WORKDIR /app

COPY mix.exs .
COPY mix.lock .

RUN mkdir assets

COPY assets/package.json assets
COPY assets/package-lock.json assets

RUN cd assets && npm install --legacy-peer-deps --pure-lockfile
RUN mix deps.get && mix ecto.create

CMD mix deps.get && mix ecto.migrate && mix phx.server
# CMD mix deps.get && mix ecto.reset && mix phx.server