import psycopg2
conn = psycopg2.connect("dbname=university user=postgres password=RKhM7ewvU7quDC",)
cur = conn.cursor()

with open('M03/UnivDBPostgreSQLCREATETABLE.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()

with open('M03/UnivDBPostgreSQLINSERT.sql') as file:
    queries = file.read()

    cur.execute(queries)
    conn.commit()