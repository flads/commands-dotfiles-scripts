# Add this script in your package.json
"typeorm": "ts-node -r tsconfig-paths/register ./node_modules/typeorm/cli.js -d ormconfig.ts"

# Create a ormconfig.ts/js file and add the following code snippet:
```js
import { DataSource } from 'typeorm';

export const connectionSource = new DataSource({
    type: 'postgres',
    host: 'localhost',
    port: 5432,
    username: 'postgres',
    password: 'postgres',
    database: 'database_name',
    entities: ['src/models/**/*.ts'],
    migrations: ['src/migrations/*.ts'],
    synchronize: false,
});

```

# Running migrations
npm run typeorm migration:run

# Generating a new migration
npm run typeorm migration:generate -n src/migrations/UpdateUploadsTable
