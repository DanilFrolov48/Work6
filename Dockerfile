FROM postgres:latest
ENV POSTGRES_PASSWORD=486820
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=Test
COPY init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME /d_data:/var/lib/postgresql/data
