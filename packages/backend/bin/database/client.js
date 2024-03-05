import pg from 'pg';

const client = new pg.Client({
  user: 'postgres',
  host: 'localhost', // Assuming your PostgreSQL container is named 'postgres'
  port: 5432,       // Default PostgreSQL port


});

export default client;
