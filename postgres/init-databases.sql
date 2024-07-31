DO
$$
BEGIN
   IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'keycloak') THEN
      CREATE DATABASE demo;
END IF;

   IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'sevenhallo') THEN
      CREATE DATABASE demo2;
END IF;
END
$$;
