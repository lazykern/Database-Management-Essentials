import psycopg2
conn = psycopg2.connect("dbname=order-entry user=postgres password=RKhM7ewvU7quDC",)
cur = conn.cursor()

with open('M05/Assignment/CreateTable/PostgreSQL.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()

with open('M05/Assignment/Insert/PostgreSQL.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()

conn.close()