# All are free (in $$$, maybe not in personal info) to use
  - [Backend](#backend)
  - [Cheat Sheets](#cheat-sheets)
  - [CSS](#css)
  - [Deploy](#deploy)
  - [Git](#git)
  - [Performance](#performance)
  - [Quality of life](#quality-of-life)
  - [Reactjs](#reactjs)
  - [TypeScript resources](#typescript-resources)
  - [Toolboxception](#toolboxception)
  - [Zoom: did you know...](#did-you-know)
  - [Zzz: ressources fr_FR](#le-baguette-du-fromage-ressources-frfr)


## Backend
- [Strapi][3] (very cool, open source headless CMS - [Tutorial][5] for ezpz Reactjs + Strapi Blog)
- [Create a Strapi/Koa middleware][23] (nice Medium article about it)
- [Screen][4] (awesome Linux util to run server, amongst other things)
- [Node util][25] (native, easy way to say goodbye to "Error: JSON circular reference")
- [Modern/Inline API documentation][32] (Swagger-ui. For a ligher alternative (and personal favorite) check [Apidoc][33])
- [Wordpress .htaccess tricks][36]

## Cheat Sheets
- [Bash][51]
- [Bash snippets][59]
- [HTML][52]
- [CSS][53]
- [JS][50] ("vanilla")
- [React-router][54]
- [Redux][55]
- [Redux async action][48] (template)
- [SQL][49]
- [Sequelize][45] (JavaScript ORM)
- [Setup ESLint w/ React App][46] (template)
- [React Hooks][57]

## CSS
- [Flexbox main resource][17]
- [Grid main resource][26]
- ["Bootstrap" grid using only Flexbox][43] (ezpz)
- [More important than !important][16]

## Deploy
- [One-liner server list][1]
- [Deploy Strapi app on AWS (EC2, RDS & S3)][9]
- [Deploy React app on gh-pages][13]
- [Deploy React app on Netlify][14] (More depht about netlify.toml and further links [here][15])
- [Deploy a Wordpress on OVH][24]
- [Manage security of dependencies][31] (Snyk.io; free version available)

## Git
- [Replace Master by branch x][10] (One of the most elegant way to 'fix' your awful, dirty, godforsaken gitflow)
- [Delete a remote branch][11] (tl;dr : `git push origin --delete <branch_name>`)
- [Delete a local branch][12] (tl;dr: `git branch -d <branch_name>` , use -D instead to force delete w/o status check)
- [Update a forked repo with current version][21] (no tl;dr: the link is 10 lines long, straight to the point)
- [Rename "master" branch to "senpai"][56] ("In addition to being inappropriate and arcane, the master-slave metaphor is both technically and historically inaccurate." -IETF)
- [Git aliases 101][58] (`git notice-me senpai` > `git push origin master`)
- [Formating a sweet README with banners and all][30]

## Performance
- [Big O: a JavaScript introduction][19]
- [Getting started with AssemblyScript][20]

## Quality of life
- [Zapier][6] (doing webhooks & stuff in minutes - ez pz)
- [Huginn][44] (Zapier Open-Source alternative, written in Ruby)
- [Typeform][7] (Web forms, sexier than Google Forms. Pairs EXTREMELY well with [Zapier][6] web hooks. Setup: 1h first time, <15mn next times, form creation included)
- [npm i async-foreach][27] (For each forEach, this module save a lot of time (unless writing tons of `new Promise()` turns you on)
- [Password generator][37]
- [Basic Linux memory increase][47] ( `fs.inotify.max_user_watches=524288` )

## Reactjs
- [File input wrapper][28] (For more infos about client-side file access [check File API doc][29])

## TypeScript resources
- [Awesome TypeScript resources][34]
- [Type def collection][35]

## Toolboxception
- [Eating a lot of vegetables][2]
- [TDD 101: a JavaScript introduction][42]
- [ULTIMATE resource list][18]

## Zoom: did you know...
- [Yarn is Facebook and is sending your data to Facebook ?][22]
- [QuickJS][38], a small, embeddable JS engine written by 3-times IOCCC winner (genius?) [Fabrice Bellard][39]
- [Rosetta Code][40], common algos & math problems solved for *n* languages
- [JSPerf][41] (Quote: *an easy way to create & share test cases, comparing the perf of different JS snippets by running benchmarks.*)

## Zzz: le baguette du fromage (ressources fr_FR)
- [Devenir freelance][8]

[1]: https://gist.github.com/willurd/5720255
[2]: https://github.com/digitalfu/developer-reference-resources-on-github
[3]: https://strapi.io/documentation/3.0.0-beta.x/getting-started/quick-start.html
[4]: https://linuxize.com/post/how-to-use-linux-screen/
[5]: https://medium.com/@adeyinkakazeemolufemioluoje/create-a-blog-with-react-and-strapi-cc3d8f0f01e1
[6]: https://zapier.com/
[7]: https://www.typeform.com/
[8]: https://github.com/etnbrd/awesome-freelance-fr
[9]: https://github.com/61FINTECH/deploy-strapi-on-aws
[10]: https://stackoverflow.com/a/2862938/11894221
[11]: https://stackoverflow.com/a/2003515/11894221
[12]: https://stackoverflow.com/a/10999165/11894221
[13]: https://devhoot.ooo/how-to-host-react-websites-on-github.-a-comprehensive-guide!/
[14]: https://create-react-app.dev/docs/deployment/#netlify
[15]: https://hackernoon.com/netlify-continuous-deployment-github-react-lambdaschool-67f3ae658d31
[16]: https://paulbakaus.com/2017/07/27/more-important-than-important/
[17]: https://css-tricks.com/snippets/css/a-guide-to-flexbox/
[18]: https://github.com/sindresorhus/awesome
[19]: https://medium.com/cesars-tech-insights/big-o-notation-javascript-25c79f50b19b
[20]: https://www.sitepen.com/blog/getting-started-with-assemblyscript/
[21]: https://medium.com/@topspinj/how-to-git-rebase-into-a-forked-repo-c9f05e821c8a
[22]: https://engineering.fb.com/web/yarn-a-new-package-manager-for-javascript/
[23]: https://medium.com/@prakash.gangurde/how-to-create-a-middleware-for-strapi-f80a24876fc9
[24]: https://girlknowstech.com/how-to-install-wordpress-on-ovh-server/
[25]: https://stackoverflow.com/a/18354289
[26]: https://css-tricks.com/snippets/css/complete-guide-grid/
[27]: https://www.npmjs.com/package/async-foreach
[28]: https://github.com/greena13/react-simple-file-input#readme
[29]: https://developer.mozilla.org/en-US/docs/Web/API/File
[30]: https://glebbahmutov.com/blog/how-i-organize-readme/
[31]: https://snyk.io/
[32]: https://swagger.io/tools/swagger-ui/
[33]: https://apidocjs.com/
[34]: https://github.com/dzharii/awesome-typescript
[35]: https://github.com/DefinitelyTyped/DefinitelyTyped
[36]: https://perishablepress.com/stupid-htaccess-tricks/
[37]: https://passwordsgenerator.net/
[38]: https://bellard.org/quickjs/
[39]: https://en.wikipedia.org/wiki/Fabrice_Bellard
[40]: http://www.rosettacode.org/wiki/Category:Programming_Tasks
[41]: https://jsperf.com/
[42]: https://github.com/dwyl/learn-tdd
[43]: https://dev.to/drews256/ridiculously-easy-row-and-column-layouts-with-flexbox-1k01
[44]: https://github.com/huginn/huginn
[45]: https://gist.github.com/Eth3rnit3/3a83cfa8d6c391139db24aadb1b0a774
[46]: https://gist.github.com/Eth3rnit3/ef4ade2e2b5be0e0d0047522752f9923
[47]: https://gist.github.com/Eth3rnit3/46c9c9cdb8c66485e2b462645719ee4d
[48]: https://gist.github.com/Eth3rnit3/0ad5004e7970a942376bd71361671bc2
[49]: https://gist.github.com/hofmannsven/9164408
[50]: https://gist.github.com/thegitfather/9c9f1a927cd57df14a59c268f118ce86
[51]: https://www.linuxtrainingacademy.com/linux-commands-cheat-sheet/
[52]: https://htmlcheatsheet.com/
[53]: https://htmlcheatsheet.com/css/
[54]: https://devhints.io/react-router
[55]: https://devhints.io/redux
[56]: https://gist.github.com/TheRealBarenziah/434e9be111e25eda53e88c7ecb057acd
[57]: https://react-hooks-cheatsheet.com/
[58]: https://hackernoon.com/git-going-with-aliases-a9706e23fa9c
[59]: https://github.com/alexanderepstein/Bash-Snippets
