import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';

import { env } from './config/env.js';
import { router } from './routes/index.js';
import { notFound } from './middlewares/notFound.middleware.js';
import { errorHandler } from './middlewares/error.middleware.js';

export function createApp() {
  const app = express();

  // Security & basics
  app.use(helmet());
  app.use(express.json({ limit: '1mb' }));

  // CORS
  app.use(cors({ origin: env.corsOrigin, credentials: true }));

  // Logs
  app.use(morgan(env.nodeEnv === 'production' ? 'combined' : 'dev'));

  // Root (friendly)
  app.get('/', (req, res) => {
    res.json({
      ok: true,
      name: 'Starter Kit Node/API Template',
      version: 'v0.3',
      endpoints: {
        health: '/api/v1/health',
      },
    });
  });

  // Routes
  app.use('/api', router);

  // 404 + errors
  app.use(notFound);
  app.use(errorHandler);

  return app;
}
