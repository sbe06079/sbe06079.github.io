'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "b3b87f9153d4406c14bc11865bbe1089",
"index.html": "78de94a06cfab7b0cec734840924ec20",
"/": "78de94a06cfab7b0cec734840924ec20",
"main.dart.js": "ee490eafe5dddd59fe87fa2524175742",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "901d86fb8842ec0d66225a542131d689",
"assets/AssetManifest.json": "9369a74dd7c28dd53314cabd1747886f",
"assets/NOTICES": "eefaad4ac73cb094b93f507945d17743",
"assets/FontManifest.json": "4b5d3dbbab82580f7fbd4558c32a358d",
"assets/AssetManifest.bin.json": "6ecd9dc173954425c1b609193d67005f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0adf8a3d8bec1336440dd23858c8c434",
"assets/fonts/RobotoSlab-Medium.ttf": "c4eb1e6d706bc227e3bbccf1168f74cc",
"assets/fonts/Edensor.otf": "4e0cf0e8b1c789339e94ff5fb1dca8cb",
"assets/fonts/RobotoSlab-SemiBold.ttf": "d3e598592076a39309207b47be7818fa",
"assets/fonts/RobotoSlab-ExtraBold.ttf": "bbc8456d54515778003b51d5ac376d92",
"assets/fonts/aptos-light-italic.ttf": "e8a7505485a5ddd0182b6ad05ba8a47f",
"assets/fonts/aptos-bold.ttf": "3d058c83e9a18f85393a6372ac916726",
"assets/fonts/RobotoSlab-Thin.ttf": "97b006a1f405dc883c122688dd6b1402",
"assets/fonts/RobotoSlab-Black.ttf": "d8c3f31c5aa289f2e0cd1b2f70af39c5",
"assets/fonts/Helvetica_CE_Medium.otf": "7f29fe5a660714f1dc6ed0981a199706",
"assets/fonts/RobotoSlab-Bold.ttf": "97c9bb379a9aa527490f63615369607b",
"assets/fonts/aptos-black.ttf": "cf36dbec7d29a4853bbfdc6a30b3eafb",
"assets/fonts/PalatinoFont.ttf": "1ee3df488c48f3e9f92a3e961449c621",
"assets/fonts/aptos-extrabold-italic-2.ttf": "8a65b76af5023179ef8e7228443ec61b",
"assets/fonts/aptos.ttf": "7dd5f4bf5d38875ca1822a830b6e6fe4",
"assets/fonts/aptos-light.ttf": "ae52c0f74cf72ddf6ac966ba0e27c071",
"assets/fonts/aptos-italic.ttf": "933228bbd541aaac5ea045847586565c",
"assets/fonts/aptos-extrabold-italic.ttf": "8a65b76af5023179ef8e7228443ec61b",
"assets/fonts/RobotoSlab-Light.ttf": "cc56ca48ccfb9711b52a44e43f99d0d6",
"assets/fonts/aptos-black-italic.ttf": "5be625bc6fc407648834ba2169ff7e50",
"assets/fonts/aptos-extrabold.ttf": "b56b167b8509fa3d42fecfedf605e027",
"assets/fonts/Thonburi-Bold.ttf": "2160a66fbeecc1a768e01b3c470cb7b8",
"assets/fonts/MaterialIcons-Regular.otf": "dd0d21206e0b211d262b20fb104de0e5",
"assets/fonts/AppleSDGothicNeoB.ttf": "67680f2eb947c5cbd58b40961b4a61e9",
"assets/fonts/RobotoSlab-ExtraLight.ttf": "12dd60b73023331a48f5e3f2b34131f6",
"assets/fonts/aptos-semibold.ttf": "cfd2b2e62e2d0da33c516f3249ac6e81",
"assets/fonts/apple-sd-gothic-neo-light.otf": "65ba7287d372c67ac4715c38872adcbc",
"assets/fonts/RobotoSlab-Regular.ttf": "e7789f2202c55ee4373f072945cf6a24",
"assets/fonts/Thonburi.ttf": "62b0e8982d6bda8c45021e0cfe47658f",
"assets/fonts/AppleSDGothicNeoR.ttf": "ddf7d49e75259d7806e0b1f72bcb54e6",
"assets/assets/spotify.png": "19e0f6b1ec9fad061fb83b1ee546dd57",
"assets/assets/jade_and_evan/47.jpeg": "76ff4c1cece75455267398058be83a4a",
"assets/assets/jade_and_evan/10.jpeg": "11efeee0509ac8984c8332ada1177fa7",
"assets/assets/jade_and_evan/51.jpeg": "048485abef5f654bd278ed7113bfb373",
"assets/assets/jade_and_evan/92.jpeg": "fba5bac4d85f25b036c9705847544625",
"assets/assets/jade_and_evan/84.jpeg": "60f70869ca1b914dbdd01f1656de81c8",
"assets/assets/jade_and_evan/105.jpeg": "e60a0da7dc399335979ddf109e7a2407",
"assets/assets/jade_and_evan/26.jpeg": "eca6ff6f667637492af25bff05c5963f",
"assets/assets/jade_and_evan/71.jpeg": "af32e18ae10e66366572a139a1d0d78a",
"assets/assets/jade_and_evan/88.jpeg": "c7c16d48080f42d7a4b59328b2c3ffab",
"assets/assets/jade_and_evan/67.jpeg": "fa44e2e22b25d4d8933411893607f888",
"assets/assets/jade_and_evan/30.jpeg": "c2eac1193f7d0cb519cabf74eb3db6c1",
"assets/assets/jade_and_evan/31.jpeg": "fe729630dcd4390ae8dcf5553c4207fd",
"assets/assets/jade_and_evan/89.jpeg": "6dcc27891ab10c9388e1a11a0808aca3",
"assets/assets/jade_and_evan/66.jpeg": "b8fe52720d4169fc146cc41dbfd6d401",
"assets/assets/jade_and_evan/70.jpeg": "f139b3634d1f7681cdf942b6c9b983ba",
"assets/assets/jade_and_evan/27.jpeg": "d2a2460eb2e7fc6840d6e39cf7b55b54",
"assets/assets/jade_and_evan/104.jpeg": "22b5cff99ef420ede5446aaa54d4e92d",
"assets/assets/jade_and_evan/85.jpeg": "a6cfc22e87b28ebfbdb677bc9e485bed",
"assets/assets/jade_and_evan/1.jpeg": "b1bc6456d361d0095f95715f3bdcc234",
"assets/assets/jade_and_evan/93.jpeg": "e9a010a899046a9c0f0de27335df5fed",
"assets/assets/jade_and_evan/50.jpeg": "b46d182ccb785aca94d32f10ced9e674",
"assets/assets/jade_and_evan/11.jpeg": "33bda24e97726ce6df32fceec22d5810",
"assets/assets/jade_and_evan/46.jpeg": "8b452944fa445ddbb9db1b4523ca1a0a",
"assets/assets/jade_and_evan/103.jpeg": "bb35fd65744c81535d90977518ca474c",
"assets/assets/jade_and_evan/20.jpeg": "f96e704adaac2ee6e2b90f192067ff23",
"assets/assets/jade_and_evan/top1.jpeg": "d8a4a73923374a62fba1c26ad7e769ff",
"assets/assets/jade_and_evan/98.jpeg": "d433d27234f2d9a4d78e278b632c9941",
"assets/assets/jade_and_evan/77.jpeg": "fab68b7310be2d4a9cc11d83dd80b38b",
"assets/assets/jade_and_evan/61.jpeg": "a201806ec15b6d4a8f4e50aa430a49aa",
"assets/assets/jade_and_evan/36.jpeg": "f00b9d52cd85e7f0b931c16097b3e2ae",
"assets/assets/jade_and_evan/41.jpeg": "04e81375769c5819766902965a551671",
"assets/assets/jade_and_evan/16.jpeg": "1398c96c544f9cdf3d11cb3c3431fe80",
"assets/assets/jade_and_evan/57.jpeg": "0ace2f098c0886f99cfdafa116d34efa",
"assets/assets/jade_and_evan/94.jpeg": "d12fe0e94326be2d6c7b45ee75d75d6b",
"assets/assets/jade_and_evan/6.jpeg": "04aec9d72a3ec84e1c0d06fe5c63a541",
"assets/assets/jade_and_evan/82.jpeg": "df415f831537585058960ce8febe2e4e",
"assets/assets/jade_and_evan/83.jpeg": "296480a7ca61efca45b5e80c51862126",
"assets/assets/jade_and_evan/7.jpeg": "864420174d3286170855fa34c366d43c",
"assets/assets/jade_and_evan/95.jpeg": "cc859468472e2244772f19159fd91415",
"assets/assets/jade_and_evan/56.jpeg": "74bfdfa862002283eec10fe30bae854a",
"assets/assets/jade_and_evan/17.jpeg": "9113bef366d14e0a947ed8b95e47e370",
"assets/assets/jade_and_evan/40.jpeg": "1d873981337082df933ed85f8802e84c",
"assets/assets/jade_and_evan/37.jpeg": "f489dbfb3a859af3c3889107ed1984fc",
"assets/assets/jade_and_evan/60.jpeg": "4fdf0ddaf431f7e13b04d9121d987cad",
"assets/assets/jade_and_evan/99.jpeg": "4595537a076cbf55c7448957b6cf3603",
"assets/assets/jade_and_evan/76.jpeg": "caf384eb42e0803afb1a1d821d42baa9",
"assets/assets/jade_and_evan/21.jpeg": "9c369c22a6e6ab10a60ff72e65137655",
"assets/assets/jade_and_evan/102.jpeg": "e1d62038f926c9daccd6d96402261674",
"assets/assets/jade_and_evan/34.jpeg": "b4210783091e318b86cbe5eed4fdacb6",
"assets/assets/jade_and_evan/63.jpeg": "dbb92d5a3adc47c3847121285fe8bbc1",
"assets/assets/jade_and_evan/8.jpeg": "f6179e99929115dd1c1a45810f96f7e3",
"assets/assets/jade_and_evan/75.jpeg": "74ca02f415c02352bfc83b7aa996bf2b",
"assets/assets/jade_and_evan/22.jpeg": "314d5f323372c2866f347c69530af5bd",
"assets/assets/jade_and_evan/59.jpeg": "d8d8c3ff80e65fd3ecbf86edd643a42e",
"assets/assets/jade_and_evan/101.jpeg": "d072e5985ba8d4ec90a2a60f7f041467",
"assets/assets/jade_and_evan/18.jpeg": "f613f47f6fbf6558770f0465ccbc8591",
"assets/assets/jade_and_evan/38.jpeg": "b11811d6fd26bce3f97dda55dac3d8ac",
"assets/assets/jade_and_evan/80.jpeg": "17464a9aa7bc3891c8550cfaf6f3add7",
"assets/assets/jade_and_evan/4.jpeg": "205734f119abae1a717e7b148fb0674e",
"assets/assets/jade_and_evan/79.jpeg": "097aad5c85e31bf5aebfd4c283f5b33b",
"assets/assets/jade_and_evan/96.jpeg": "de71917fd30e20e6837f45043e1c9fe6",
"assets/assets/jade_and_evan/55.jpeg": "65b9d06793fe0dc71e743a78d32a367c",
"assets/assets/jade_and_evan/14.jpeg": "a968044f1f2e785d0a5e03f0413e056e",
"assets/assets/jade_and_evan/43.jpeg": "c418f3184c3c0a221971f103b8c0b490",
"assets/assets/jade_and_evan/42.jpeg": "33dbe969310683f91e128b65820cf054",
"assets/assets/jade_and_evan/15.jpeg": "de902d7222846655d1e86e8814028d77",
"assets/assets/jade_and_evan/54.jpeg": "0fd0f0b9acd7b01df7a728da8258821b",
"assets/assets/jade_and_evan/78.jpeg": "5dfe80cde1da1f424eea76bd0bc7ba30",
"assets/assets/jade_and_evan/97.jpeg": "1bccf1663f39bdd12f9da84a698c8f3f",
"assets/assets/jade_and_evan/5.jpeg": "d857bab3147dfffbac917c385c2042b1",
"assets/assets/jade_and_evan/81.jpeg": "8bd2038552bc36d432ece1ca71ebb96d",
"assets/assets/jade_and_evan/39.jpeg": "11d4cda7746746dc5600973ea473ac50",
"assets/assets/jade_and_evan/19.jpeg": "cb5eaab9ff816a5c567996d4ff588692",
"assets/assets/jade_and_evan/58.jpeg": "cc226f3515179750f1c2dd719b770d78",
"assets/assets/jade_and_evan/100.jpeg": "18230da2834e51d3c17390a98e66e89e",
"assets/assets/jade_and_evan/23.jpeg": "47005c01d49be1da2fabf75e5eaa9615",
"assets/assets/jade_and_evan/74.jpeg": "fce18cc5647de6221ebb1d0cdb995773",
"assets/assets/jade_and_evan/top2.jpeg": "d99845e78cce554f7868678581c045db",
"assets/assets/jade_and_evan/62.jpeg": "05bd685a731c46d5c544da08fb61ac82",
"assets/assets/jade_and_evan/9.jpeg": "e20e5cbf79d8dc05a30bc8e1c95feb9e",
"assets/assets/jade_and_evan/35.jpeg": "f01ec9bbd20b732d0222f2ac126fce2a",
"assets/assets/jade_and_evan/69.jpeg": "6bb7e7c52af0c315b9b2fa78877e68c9",
"assets/assets/jade_and_evan/86.jpeg": "66fd769e0080c86ad9dc24b075317aae",
"assets/assets/jade_and_evan/2.jpeg": "7238635e63b103e7264ae773259090e3",
"assets/assets/jade_and_evan/90.jpeg": "11f90018ed64a43fb0af01c786aff02f",
"assets/assets/jade_and_evan/28.jpeg": "13cd09ed72b49e7c07a0bd5b44f8d364",
"assets/assets/jade_and_evan/53.jpeg": "b3aa937ce4798e6a58231636c6591162",
"assets/assets/jade_and_evan/12.jpeg": "4de6e459b8a2cae9530127e6c8905e19",
"assets/assets/jade_and_evan/45.jpeg": "8d2a10f1c250d01f7a236ebe1ff5d67f",
"assets/assets/jade_and_evan/32.jpeg": "fce7a60185237b3be6c3e016ed54be19",
"assets/assets/jade_and_evan/65.jpeg": "bfc3a3455544295cb7432d85cd047c1d",
"assets/assets/jade_and_evan/73.jpeg": "3fac2648d4ebe219e276415b360c2f97",
"assets/assets/jade_and_evan/24.jpeg": "46abfc31bf1f1e9876b93204a8e5e2b3",
"assets/assets/jade_and_evan/49.jpeg": "2be60e4cd76f208e1f8f3ab3b3915743",
"assets/assets/jade_and_evan/48.jpeg": "bf87c9f70f6911e407ce1b70c86ac741",
"assets/assets/jade_and_evan/25.jpeg": "23e468447b1e9305123ecc1029b8ee14",
"assets/assets/jade_and_evan/72.jpeg": "0e7787f439c577000af8b56e078bb401",
"assets/assets/jade_and_evan/64.jpeg": "9ed9ab0f8ca002995c4f073336703ba3",
"assets/assets/jade_and_evan/33.jpeg": "aa35dcbbca15bcca4b34762595a33d11",
"assets/assets/jade_and_evan/44.jpeg": "46f8dad0b18d849b342620e7992abc75",
"assets/assets/jade_and_evan/13.jpeg": "1175e004b13bfee574dbeaea8dbf8c18",
"assets/assets/jade_and_evan/52.jpeg": "d39f20621983f4873bf79d632f5c07dc",
"assets/assets/jade_and_evan/29.jpeg": "b43e5520be743cf4f18bc7f2e2291a58",
"assets/assets/jade_and_evan/91.jpeg": "c0a79dcdf2c8acacd9e2adcb38ccb902",
"assets/assets/jade_and_evan/68.jpeg": "e954b7746afbd3100cfdc72f8b79a21e",
"assets/assets/jade_and_evan/3.jpeg": "2d10f017257af389f3bdf65bffefaa5f",
"assets/assets/jade_and_evan/87.jpeg": "6f7d561e504b53acfd2f7e716b9f693e",
"assets/assets/music_black.png": "6a55ac85f2cf03bc14eb8901c4a499dd",
"assets/assets/bareuloh_logo_black.png": "341ea390b64a5c94dffc3f166879d524",
"assets/assets/evan_kim_logo.png": "9511a9e56d0255e703cbe0373895e114",
"assets/assets/favicon.ico": "cf449164ffd60065f3b7cab77b20b4a3",
"assets/assets/instagram.png": "231cce75a2c2abc109b08f7f1e6b6e17",
"assets/assets/bareuloh_logo.png": "897f13615f85a82616d4a98ae094dfff",
"assets/assets/thoughts_black.png": "9f02e3be46bbd4c4e4c9ea972dd10150",
"assets/assets/music.png": "a2d4c8ff40733bd8be62010a446efa8d",
"assets/assets/content/armyOverall.txt": "7fadc882c8d1f1715d39bd4faa5db693",
"assets/assets/content/armyHabits.txt": "3c66b9e50ae31279c7841dfab1547ab5",
"assets/assets/content/anthosOverall.txt": "d4055f5cdabbcaa23a7da395845613f1",
"assets/assets/content/gsOverall1.txt": "10c127a14afaed9c2addd717343bb459",
"assets/assets/content/awareOverall.txt": "1571c470cfa4e28fc4f85470dc964159",
"assets/assets/content/gsElsewhere.txt": "42ef253ce9ede02fb33602cbd1bd83d7",
"assets/assets/content/gsOverall2.txt": "c53c05895672a1f38114782e60f2fc21",
"assets/assets/content/gsLessons.txt": "eee71dc87df9ffcb64b0b4228289c5bd",
"assets/assets/content/gsHabits2.txt": "71db3f2a783b901ff50df26205c267a6",
"assets/assets/content/tickleOverall.txt": "d9a658fb21b434a0bffdd4f646456f85",
"assets/assets/content/gsHabits1.txt": "ad7abff8945cfd474d17894c1ce89dc4",
"assets/assets/content/anthosLessons.txt": "22302b0679c60cf42d1dee0a72a83c25",
"assets/assets/content/awareElsewhere.txt": "165f74c254ebb9287ebc4b7a5abbc99d",
"assets/assets/content/tickleElsewhere.txt": "ee478b55e9d5f064973929e5c0acbaa5",
"assets/assets/content/armyLessons.txt": "ac577429568690f10684df4ae5a1f41b",
"assets/assets/content/anthosElsewhere.txt": "7d95e4299b0008eeb52359c40e0be99d",
"assets/assets/content/tickleLessons.txt": "d66c085bc96e51111f9ba1c7ba962b01",
"assets/assets/content/armyElsewhere.txt": "fe2f6380e80970696c9ed88c8e1c1685",
"assets/assets/content/anthosHabits.txt": "2ce6e1c5707d727ba33ca8762e8d6ba9",
"assets/assets/content/awareHabits.txt": "49f0a94f6b992291d0bb37b94ca4315c",
"assets/assets/content/tickleHabits.txt": "0b88e785170926739e9fce71b921c790",
"assets/assets/content/awareLessons.txt": "0f31dabedf2c5bff096a614d564c5b80",
"assets/assets/bean_logo.png": "49d5dba5e9118962e2bf48f694b66a43",
"assets/assets/coding_black.png": "c84add9aa661bf5cfb8dad4b07e6fecb",
"assets/assets/evan_kim_website_preview.png": "244d133844e927dc1d0aeafccbbe3135",
"assets/assets/tiktok.png": "6b22c31470c9ed6d8d28278a4fbc978b",
"assets/assets/Spotify_ShinyApp.mov": "0f4b77e6eb00914cb997110b34f628fd",
"assets/assets/linkedin_white_version.png": "93dac5a5524ce009327ca401603f1349",
"assets/assets/evanBitmoji_cutoff.png": "db717d6231b3cb3de5becee3175e053b",
"assets/assets/evanBitmoji.png": "ce71861532622bd3dde2d3473eda141a",
"assets/assets/evan_memoji.png": "13ae3f1339b32781fc6a2f6d0a7a1b5a",
"assets/assets/bareulohLogoForEvanKimWebsite.png": "fd37c6fafc77aa2d363e05e241dc9242",
"assets/assets/evanBitmoji_cutoff_with_hey.png": "9695040a15e69cd20c8d0d49359585b0",
"assets/assets/linkedin.png": "2f0ecf7ef1056ab13a397e618572327b",
"assets/assets/career_black.png": "db064697c5d24c12a90c12bf01bdeb9b",
"assets/assets/evanBitmoji_upper_body.png": "cd7c69bf444a0371af3f922b46809d27",
"assets/assets/army_logo.png": "c67d7b4bf0d6401b3e2af6d1c90aa348",
"assets/assets/aware_logo.png": "6e154e614e3d106b112071587fe717eb",
"assets/assets/youtube.png": "0c8b5910b04bf218a725af3c4808cec3",
"assets/assets/thoughts.png": "a8604c5a8f441514ea353e69458c2487",
"assets/assets/career.png": "e510bdff6a4e2c7b8537dbcfecb017e7",
"assets/assets/codelingo.mov": "90c69a6afa6462f8a2f6753b2fabf486",
"assets/assets/tickle_logo.png": "6c194ed8f7b13b66a02519e65d3c2576",
"assets/assets/anthos_logo.png": "dd739b33a5ddb69b30d5dbbb623a6553",
"assets/assets/gs_logo.png": "4e766ba966a129b2d99ce582533bb1cf",
"assets/assets/coding.png": "0527b658842b0314c4c6bfbbae66eafe",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
