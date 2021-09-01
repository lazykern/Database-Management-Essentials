import psycopg2
conn = psycopg2.connect("dbname=dme_m03 user=postgres password=RKhM7ewvU7quDC")
cur = conn.cursor()

with open('M03/Assignment/CreateTable/PostgreSQL.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()

with open('M03/Assignment/Insert/PostgreSQL.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()