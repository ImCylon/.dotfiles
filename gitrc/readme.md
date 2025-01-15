- Instalar commitizen:
sudo npm install -g commitizen
- Repositorio amigavel para commitizen:
commitizen init cz-conventional-changelog --save-dev --save-exact

- Instalar Husky:
npm install husky --save-dev
- Ativar husky:
npx husky install
- Adicionar hook
npx husky add .husky/prepare-commit-msg \
'exec < /dev/tty && /usr/bin/git-cz --hook || true'
