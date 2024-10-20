import { createClient } from "redis";

const REDIS_URL = "redis://redis:6379"

export const redisClient = createClient({
  url: REDIS_URL,
});

await redisClient.connect();
