# Demo of bug when using Vite within Docker

This project demonstrates a bug where Vite is trying to access a non-existant directory in `node_modules/` when running on Docker.

The error given is:

```
vue-docker-issue-app-1  | > frontend@0.0.0 dev
vue-docker-issue-app-1  | > vite --host
vue-docker-issue-app-1  |
vue-docker-issue-app-1  |
vue-docker-issue-app-1  |   VITE v4.0.4  ready in 199 ms
vue-docker-issue-app-1  |
vue-docker-issue-app-1  |   ➜  Local:   http://localhost:5173/
vue-docker-issue-app-1  |   ➜  Network: http://172.26.0.2:5173/
vue-docker-issue-app-1  | node:fs:1395
vue-docker-issue-app-1  |   handleErrorFromBinding(ctx);
vue-docker-issue-app-1  |   ^
vue-docker-issue-app-1  |
vue-docker-issue-app-1  | Error: EACCES: permission denied, mkdir '/frontend/node_modules/.vite/deps_temp'
vue-docker-issue-app-1  |     at Object.mkdirSync (node:fs:1395:3)
vue-docker-issue-app-1  |     at runOptimizeDeps (file:///frontend/node_modules/vite/dist/node/chunks/dep-5e7f419b.js:42704:14)
vue-docker-issue-app-1  |     at Timeout._onTimeout (file:///frontend/node_modules/vite/dist/node/chunks/dep-5e7f419b.js:42112:58)
vue-docker-issue-app-1  |     at process.processTicksAndRejections (node:internal/process/task_queues:95:5) {
vue-docker-issue-app-1  |   errno: -13,
vue-docker-issue-app-1  |   syscall: 'mkdir',
vue-docker-issue-app-1  |   code: 'EACCES',
vue-docker-issue-app-1  |   path: '/frontend/node_modules/.vite/deps_temp'
vue-docker-issue-app-1  | }
vue-docker-issue-app-1  |
vue-docker-issue-app-1  | Node.js v18.12.1
```

## Steps

To reproduce ensure you have Docker and Docker Compose then:

 1. Clone this project
 2. Run `docker-compose build`
 3. Run `docker-compose up`
