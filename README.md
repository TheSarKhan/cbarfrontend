# Kampus admin və kassa

Next.js 16, React və TypeScript. Backend: `TheSarKhan/cbarbackend`.

```sh
npm ci
npm run typecheck
npm run build
npm run dev
```

Development API-si `http://localhost:8080/api/v1`-dir. Hosted build eyni origin-dəki `/api/v1` istifadə edir; private PIN və açarlar frontend bundle-a daxil edilmir.

PR-lərdə typecheck və production build işləyir. `main` testləri keçəndə yalnız mövcud Kampus admin servisi yenilənir: https://cbar.sarkhan.az. SSH açarı yalnız frontend deploy forced-command-ına icazəlidir; server host açarı pin edilir. Deploy server kilidi ilə növbələnir və health xətasında əvvəlki image-ə qayıdır.

Workflow secret-ləri: `VPS_HOST`, `VPS_USER`, `KAMPUS_DEPLOY_KEY`, `KAMPUS_KNOWN_HOSTS`. Server gate-i backend reposunun `deploy/` qovluğundadır. Digər server layihələrinə və bazalara deploy edilmir. Telegram göndərişi yoxdur.
