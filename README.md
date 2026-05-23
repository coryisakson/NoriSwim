# Swim Nori

A static brochure site for Swim Nori, a luxury kids swim goggles brand designed for comfort, leak resistance, premium aesthetics, and sustainable packaging.

## Included files

- `index.html` — landing page content
- `styles.css` — responsive styles and branding
- `CNAME` — custom domain for GitHub Pages
- `docker-compose.yml` — local hosting with `nginx:alpine`

## Deploying to GitHub Pages

1. Push this repository to GitHub.
2. In the repository settings, enable GitHub Pages from the `main` branch.
3. The `CNAME` file points the site to `swimnori.com`.

## Local hosting with Docker Compose

Run the following from the project root:

```bash
docker compose up --build
```

Then open:

```text
http://localhost:8080
```

## Notes

- The site is intentionally lightweight and static for easy GitHub Pages hosting.
- Update the contact link or copy as you finalize brand messaging.
