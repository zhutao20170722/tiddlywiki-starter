# TiddlyWiki Node.js + GitHub Actions + Cloud Mirror (Starter)

## Quickstart
```bash
git clone <your-repo-url>
cd tiddlywiki-starter
npm i -g tiddlywiki
npm run serve  # edit at http://localhost:8080
# When ready to publish single-file:
npm run build  # outputs to output/index.html
```

## GitHub Pages
- Push to `main`. Actions will build to `gh-pages` and publish.
- (Optional) Set a repository secret `RCLONE_CONF_BASE64` to also copy `output/index.html` to your OneDrive (rclone remote name `onedrive:`). See `scripts/rclone.conf.example`.

## Local Cloud Mirrors
- **macOS (iCloud)**: copy `scripts/com.user.tiddlywiki.sync.plist` to `~/Library/LaunchAgents/` and load:
  ```bash
  launchctl load ~/Library/LaunchAgents/com.user.tiddlywiki.sync.plist
  ```
- **Windows (OneDrive)**: run `scripts/mirror-to-onedrive.ps1` manually or via Task Scheduler.

## Structure
```
wiki/            # source (Node edition)
  tiddlers/      # your notes as atomic tiddlers
  tiddlywiki.info
output/          # built site (single-file index.html)
.github/workflows/build.yml
scripts/         # helper scripts
```

## Tips
- Always edit the Node source in `wiki/`. Treat cloud copies as read-only mirrors.
- Commit often with clear messages. Avoid editing the built `index.html` directly.
- Use tags and small tiddlers for flexible recomposition.