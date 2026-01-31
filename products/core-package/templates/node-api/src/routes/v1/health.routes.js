import { Router } from "express";

export const healthRouter = Router();

healthRouter.get("/", (req, res) => {
  res.json({
    ok: true,
    name: "Starter Kit Node/API Template",
    version: "v0.3",
    timestamp: new Date().toISOString(),
  });
});
