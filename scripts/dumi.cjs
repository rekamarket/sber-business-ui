const path = require('path')
const fs = require('fs')

// Kill me
const dir = __dirname.slice(0, -("scripts".length + 1))

const markdownPlugin = {
  name: 'markdown',

  setup(build) {
    build.onLoad({ filter: /^.*\.md\.js$/ }, async (args) => {
      import(args.path).then(async ({ make, displayName, parentName }) => {
        if (parentName) {
          if(!fs.existsSync(`${dir}/docs/${parentName}`)){
            fs.mkdirSync(`${dir}/docs/${parentName}`)
          }
          await fs.promises.writeFile(`${dir}/docs/${parentName}/${displayName}.md`, make);
        } else {
          await fs.promises.mkdir(`${dir}/docs/${displayName}`);
          await fs.promises.writeFile(`${dir}/docs/${displayName}/${displayName}.md`, make);
        }

        return { contents: '' }
      })
    })
  },
}

const i = 23
const data = [
  "./src/containers/BannerHorizontal/Set/BannerHorizontal.md.js",                    //  0
  "./src/containers/BannerHorizontal/SubSets/section/BannerHorizontalSection.md.js", //  1
  "./src/containers/BannerVertical/Set/BannerVertical.md.js",                        //  2
  "./src/containers/BannerVertical/SubSets/section/BannerVerticalSection.md.js",     //  3

  "./src/components/Button/SubSets/button/Button.md.js",                             //  4
  "./src/components/ButtonLink/SubSets/a/ButtonLink.md.js",                          //  5
  "./src/components/ButtonSber/SubSets/button/ButtonSber.md.js",                     //  6

  "./src/components/Heading/Set/Heading.md.js",                                      //  7
  "./src/components/Heading/SubSets/h1/H1.md.js",                                    //  8
  "./src/components/Heading/SubSets/h2/H2.md.js",                                    //  9
  "./src/components/Heading/SubSets/h3/H3.md.js",                                    // 10
  "./src/components/Heading/SubSets/h4/H4.md.js",                                    // 11
  "./src/components/Heading/SubSets/h5/H5.md.js",                                    // 12
  "./src/components/Heading/SubSets/h6/H6.md.js",                                    // 13

  "./src/components/Link/SubSets/a/A.md.js",                                         // 14

  "./src/components/Text/Set/Text.md.js",                                            // 15
  "./src/components/Text/SubSets/abbr/Abbr.md.js",                                   // 16
  "./src/components/Text/SubSets/b/B.md.js",                                         // 17
  "./src/components/Text/SubSets/i/I.md.js",                                         // 18
  "./src/components/Text/SubSets/small/Small.md.js",                                 // 19
  "./src/components/Text/SubSets/span/Span.md.js",                                   // 20
  "./src/components/Text/SubSets/strong/Strong.md.js",                               // 21

  "./src/components/TextContainer/Set/TextContainer.md.js",                          // 22
  "./src/components/TextContainer/SubSets/p/P.md.js",                                // 23
];

require('esbuild').build({
  entryPoints: [data[i]],
  format: "esm",
  target: "es6",
  write: false,
  plugins: [markdownPlugin],
})
