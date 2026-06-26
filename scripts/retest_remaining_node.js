const fs=require('fs'), path=require('path');
const {AILabClient}=require('../packages/node/dist/index.js');
const ROOT=path.resolve(__dirname,'..'); const AS=path.join(ROOT,'test-assets/source');
const c=new AILabClient({apiKey:process.env.AILAB_API_KEY, timeoutMs:120000});
const f=n=>fs.readFileSync(path.join(AS,n));
(async()=>{
 const tests=[
  ['cutoutClothingBackgroundRemoval',()=>c.cutout.cutoutClothingBackgroundRemoval({image:f('tshirt.jpg')})],
  ['portraitFaceFusion',()=>c.portrait.portraitFaceFusion({imageTarget:f('synthetic-face-1.jpg'), imageTemplate:f('synthetic-face-2.jpg')})],
  ['portraitHairstyleEditing',()=>c.portrait.portraitHairstyleEditing({imageTarget:f('synthetic-face-1.jpg'), hairType:1})],
  ['portraitLipsColorChanger',()=>c.portrait.portraitLipsColorChanger({image:f('synthetic-face-1.jpg'), lipColorInfos:JSON.stringify([{rgba:{r:246,g:27,b:91,a:80}}])})],
 ];
 const results=[];
 for (const [name,fn] of tests) {
  try{const r=await fn(); console.log('OK',name,r.error_code,Object.keys(r).join(',')); results.push({name,status:'ok',error_code:r.error_code,keys:Object.keys(r)});}
  catch(e){console.log('ERR',name,e.message); results.push({name,status:'error',message:e.message});}
 }
 fs.writeFileSync(path.join(ROOT,'test-assets/results/retest-remaining-node-results.json'), JSON.stringify(results,null,2));
})();
