const fs=require('fs'), path=require('path');
const ROOT=path.resolve(__dirname,'..');
const {AILabClient}=require(path.join(ROOT,'packages/node/dist/index.js'));
const c=new AILabClient({apiKey:process.env.AILAB_API_KEY, timeoutMs:120000});
const AS=path.join(ROOT,'test-assets/source'); const f=n=>fs.readFileSync(path.join(AS,n));
(async()=>{
 const tests=[
  ['cutoutClothing_tshirt',()=>c.cutout.cutoutClothingBackgroundRemoval({image:f('tshirt.jpg')})],
  ['imageRemoveObjectsAdvanced_qualityM',()=>c.image.imageRemoveObjectsAdvanced({image:fs.readFileSync(path.join(ROOT,'image.jpg')), mask:f('mask.png'), steps:20, strength:0.75, scale:7, seed:1, dilateSize:15, quality:'M'})],
 ];
 const results=[];
 for (const [n,fn] of tests) try{const r=await fn(); console.log('OK',n,r.error_code,Object.keys(r).join(',')); results.push({name:n,status:'ok',keys:Object.keys(r)});}catch(e){console.log('ERR',n,e.message); results.push({name:n,status:'error',message:e.message});}
 fs.writeFileSync(path.join(ROOT,'test-assets/results/retest-more-node-results.json'), JSON.stringify(results,null,2));
})();
