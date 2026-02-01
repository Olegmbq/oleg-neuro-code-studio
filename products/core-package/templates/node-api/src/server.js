import { createApp } from './app.js';
import { env } from './config/env.js';
import { logger } from './utils/logger.js';

const app = createApp();
const a = 1;

app.listen(env.port, () => {
  logger.info(`API started on http://localhost:${env.port}`);
  logger.info(`Environment: ${env.nodeEnv}`);
});
