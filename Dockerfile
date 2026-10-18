FROM node:24-bookworm-slim AS build
WORKDIR /app
COPY apps/admin/package*.json ./
RUN npm ci
COPY apps/admin/ .
ENV NEXT_TELEMETRY_DISABLED=1 NEXT_PUBLIC_DEPLOYED=true
RUN npm run build
FROM node:24-bookworm-slim
ENV NODE_ENV=production NEXT_TELEMETRY_DISABLED=1 PORT=3000 HOSTNAME=0.0.0.0
WORKDIR /app
COPY --from=build --chown=node:node /app/.next/standalone ./
COPY --from=build --chown=node:node /app/.next/static ./.next/static
USER node
EXPOSE 3000
CMD ["node","server.js"]
