# How to publish

```bash
nvm use

git checkout master

git pull

npm i

npm run test:all
```

- Bump the version in the package.json file

- Create a branch with the name of the new version number e.g.: `git checkout -b 1.0.0-beta.4`

```bash
git add .

git commit -m 'bump version'

git push
```

- Once the PR is merged then `git checkout master` and `git pull`

- Uncomment the first line of the `.npmrc` file and comment the second line

- Then publish the package using the following command: `NPM_TOKEN=${NPM_TOKEN} npm publish`

> N.B.: you need to replace `${NPM_TOKEN}` with a valid npm token