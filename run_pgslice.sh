#!/bin/bash
PGSLICE_URL=postgres://postgres@localhost/demo_db_pg_slice
TABLE=parti_pg_slice
COLUMN=c1
PERIOD=day

# docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
#     pgslice prep $TABLE $COLUMN $PERIOD


# docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
#     pgslice add_partitions $TABLE --intermediate --past 3 --future 3


docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
    pgslice fill $TABLE



# docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
#     pgslice analyze $TABLE


# docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
#     pgslice swap $TABLE


# docker run --network host --rm -e PGSLICE_URL=$PGSLICE_URL \
#     pgslice fill $TABLE --swapped


