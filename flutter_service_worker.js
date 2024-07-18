'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "b3b87f9153d4406c14bc11865bbe1089",
"index.html": "a9889d8c7cc9193f9d9d9c4a23ace1ea",
"/": "a9889d8c7cc9193f9d9d9c4a23ace1ea",
"main.dart.js": "75cbe4900670fc1788464e5945e5f1a5",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "901d86fb8842ec0d66225a542131d689",
"assets/AssetManifest.json": "b4d565b5b77ee130c78cd45d00c8f492",
"assets/NOTICES": "eefaad4ac73cb094b93f507945d17743",
"assets/FontManifest.json": "4b5d3dbbab82580f7fbd4558c32a358d",
"assets/AssetManifest.bin.json": "a035a876437d5856fc576274a481e43c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "60f8a8216910b0fa131a07aff2a091e3",
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
"assets/assets/jade_and_evan/63.jpg": "bbb0e2595bb54a667fb46f693423009e",
"assets/assets/jade_and_evan/77.jpg": "c716da336b6b9b25d7f0736dac25b143",
"assets/assets/jade_and_evan/88.jpg": "6ff4b018ef0ae4007807dcfafc6118f4",
"assets/assets/jade_and_evan/89.jpg": "57304058a7d19544e3a486835efab1f0",
"assets/assets/jade_and_evan/76.jpg": "dc21d91ae55b622a7026e95a05054c11",
"assets/assets/jade_and_evan/62.jpg": "a28fe11dc26a6fdfc1752aad616f613d",
"assets/assets/jade_and_evan/74.jpg": "04c6df677e78085bfa1c4e3a4bcf7fc9",
"assets/assets/jade_and_evan/60.jpg": "bd8ef1db51e5f8564acb0a65fb67fb3f",
"assets/assets/jade_and_evan/48.jpg": "b9ca38e9cd288435364127b2de85c1c1",
"assets/assets/jade_and_evan/49.jpg": "a6d34a51d3c6bc273043a3446f7c8ff1",
"assets/assets/jade_and_evan/61.jpg": "2eaba042c3e9154a66ad3c04e52ded57",
"assets/assets/jade_and_evan/75.jpg": "1b6ed27cb71e6c3ea34d98e063f06a21",
"assets/assets/jade_and_evan/59.jpg": "36e1aa7c92f1a5eb5ca23945f3bbb379",
"assets/assets/jade_and_evan/71.jpg": "3860888682b58e47c8b5a1cf4f5964c3",
"assets/assets/jade_and_evan/65.jpg": "88424791474b611bf55e0b3aca0a1d7d",
"assets/assets/jade_and_evan/64.jpg": "91fbb01fc7d1bca3f04cbb79c058f17b",
"assets/assets/jade_and_evan/70.jpg": "e481a28a671d15f9575e4b2c6461b449",
"assets/assets/jade_and_evan/58.jpg": "a7fac21e04754f186e43e3f899246ba2",
"assets/assets/jade_and_evan/8.jpg": "2fe952d564b6d647c07cf953acf742f4",
"assets/assets/jade_and_evan/66.jpg": "065e9dc6867a93f1dced4a4aca6484a1",
"assets/assets/jade_and_evan/72.jpg": "2ae02a288aaf54cb07681064e965a98b",
"assets/assets/jade_and_evan/99.jpg": "b00892cb1db526f56ecbb9d0a5b55c3d",
"assets/assets/jade_and_evan/98.jpg": "1f66dcb04d3d8d19f2cac09b25916954",
"assets/assets/jade_and_evan/73.jpg": "aaa14024319daa4fa084ffc1656e2285",
"assets/assets/jade_and_evan/67.jpg": "440ac4dedfbf0b43ccdd329d29e7a43f",
"assets/assets/jade_and_evan/9.jpg": "de1a63d5c2f7530aa7bdb8c7806acfae",
"assets/assets/jade_and_evan/14.jpg": "7d44790e5d4c282e3a0f0f66a93676a1",
"assets/assets/jade_and_evan/28.jpg": "cc1986bb636aef044a1a6a179b347e9e",
"assets/assets/jade_and_evan/101.jpg": "d2d7299a176447a26ec4f8a008a7dd77",
"assets/assets/jade_and_evan/100.jpg": "03e6ebd95bdb5dc012279048e17dfe3b",
"assets/assets/jade_and_evan/29.jpg": "c7b68e1d5472683e8df3ee304777b640",
"assets/assets/jade_and_evan/15.jpg": "33034dbd934abe28d8ec0387312d10f3",
"assets/assets/jade_and_evan/17.jpg": "91fa94b9f929c6add1d29164f1f4fb25",
"assets/assets/jade_and_evan/102.jpg": "8303fc26d1398969fb7f29229a0e9949",
"assets/assets/jade_and_evan/103.jpg": "2d82eb6c1a8767300d6e432972e5944a",
"assets/assets/jade_and_evan/16.jpg": "a5d81d9455c3ca3bf9eec11d0514bae0",
"assets/assets/jade_and_evan/12.jpg": "61cbbcac872189264a36df7c6656b8db",
"assets/assets/jade_and_evan/13.jpg": "b51f294c94c7c69634a023cb849d9056",
"assets/assets/jade_and_evan/39.jpg": "129d9266eb55527b767e645a9f84a4bd",
"assets/assets/jade_and_evan/11.jpg": "fdd5a878affd8d12c0f944e4755dd561",
"assets/assets/jade_and_evan/104.jpg": "b8027389ff32c66e1cc9faa67b1b3dc8",
"assets/assets/jade_and_evan/105.jpg": "93adf3afb0e1df5df1dd70f40de02531",
"assets/assets/jade_and_evan/10.jpg": "7b9ec32653736f974548825a1f9d7f0d",
"assets/assets/jade_and_evan/38.jpg": "5badfc99967cd6a1f0c4077b8da58b0d",
"assets/assets/jade_and_evan/21.jpg": "8f93ff1ecf5320538cf9723e7e504894",
"assets/assets/jade_and_evan/35.jpg": "3e538f7d1f1f2394ec566c92f927d804",
"assets/assets/jade_and_evan/top2.jpg": "16aec06089c49b841805a9b53a82be7b",
"assets/assets/jade_and_evan/34.jpg": "6f6358f55f5867b2e3ba966953d27ce9",
"assets/assets/jade_and_evan/20.jpg": "b03a4f185438714a6a31f105530e4b09",
"assets/assets/jade_and_evan/36.jpg": "aba2a11b6d56baa80d72d055a7164da1",
"assets/assets/jade_and_evan/22.jpg": "313b0c5efdc315bd14ce49e1abf31e5e",
"assets/assets/jade_and_evan/top1.jpg": "74b74db7156a4054a4f4d354cf92e29a",
"assets/assets/jade_and_evan/23.jpg": "fd277c324ebc0681e303c270402e1729",
"assets/assets/jade_and_evan/37.jpg": "470e30591c6fc685b6b190065f56223c",
"assets/assets/jade_and_evan/33.jpg": "97dec79abf160efa7320661c73c49583",
"assets/assets/jade_and_evan/27.jpg": "ef11295168d8b4fb68d282b8cca20ff4",
"assets/assets/jade_and_evan/26.jpg": "47876457630d48c952fe29b365ae524d",
"assets/assets/jade_and_evan/32.jpg": "2b06fafa088408644a0658299e6e3b26",
"assets/assets/jade_and_evan/18.jpg": "8f769be344e35a2c9272828c99dc7af0",
"assets/assets/jade_and_evan/24.jpg": "ae6d470508310d08e1f69443b7a1057c",
"assets/assets/jade_and_evan/30.jpg": "a90a2982c505e60074738ebfef6d574a",
"assets/assets/jade_and_evan/31.jpg": "560c7f4b9f6d02978ada8d696511a5eb",
"assets/assets/jade_and_evan/25.jpg": "b206455474ba41cde0eec0df0d8d8be5",
"assets/assets/jade_and_evan/19.jpg": "7b45ec46e49b588a14bc7c963dc8c601",
"assets/assets/jade_and_evan/42.jpg": "b47d1b7d65fbf6d1125ba826a31bc5bb",
"assets/assets/jade_and_evan/4.jpg": "551c408caac760f31f5a1788b5d781ba",
"assets/assets/jade_and_evan/56.jpg": "c51252a5d348175aa529204640cfe126",
"assets/assets/jade_and_evan/81.jpg": "2c00a2ad0e37967c7691fb87b16e88e4",
"assets/assets/jade_and_evan/95.jpg": "0b9b76a8fcbaef448b8750fdd4115ef7",
"assets/assets/jade_and_evan/94.jpg": "eb936a71dc555a0fc77bdec6dccd6dac",
"assets/assets/jade_and_evan/80.jpg": "f8c862daffeb9a7dc0ccc8e5d9b29749",
"assets/assets/jade_and_evan/5.jpg": "01588d9825a97f0767bce38c405f3e77",
"assets/assets/jade_and_evan/57.jpg": "d1d23c23e6ed2d6685058f2a24ce503b",
"assets/assets/jade_and_evan/43.jpg": "4a179823bc2aafe072a4f49a87f1f8b6",
"assets/assets/jade_and_evan/55.jpg": "d9a3e9b4125cdf6e294c696af7b276ff",
"assets/assets/jade_and_evan/7.jpg": "64c63411831317e04a936d931073ef73",
"assets/assets/jade_and_evan/41.jpg": "a766f774d63595bde3509ba29eef6def",
"assets/assets/jade_and_evan/69.jpg": "b3a728e1775d32d657c1c9725aba782e",
"assets/assets/jade_and_evan/96.jpg": "2b0bb8670cc8b18ec497d6e2c778dedd",
"assets/assets/jade_and_evan/82.jpg": "82ed93fe4b8a89795cce24928c30c78a",
"assets/assets/jade_and_evan/83.jpg": "511e44b68a6206d0298350331c7e3f56",
"assets/assets/jade_and_evan/97.jpg": "d34c173cf4ef937595bdc669bcbefdcd",
"assets/assets/jade_and_evan/68.jpg": "6b37a647bc166f54a4396412ae2991c6",
"assets/assets/jade_and_evan/40.jpg": "d94cefd7f6e535285708b76ccca05d7f",
"assets/assets/jade_and_evan/54.jpg": "3c01fd738d21c63df3981e46e2c306ed",
"assets/assets/jade_and_evan/6.jpg": "b5fc58904a1f71b4ee4115586b3051b7",
"assets/assets/jade_and_evan/78.jpg": "c40509fccd4416dd24c04e7400b94fc7",
"assets/assets/jade_and_evan/2.jpg": "76bd979e915ac22cadf58af06fe0f6aa",
"assets/assets/jade_and_evan/50.jpg": "c098032ff04bf379455d894d5b313024",
"assets/assets/jade_and_evan/44.jpg": "b9a95b7e51df9f920d4771965e96cc7a",
"assets/assets/jade_and_evan/93.jpg": "5c0e8b3a7cf26a2173996a32b3d7b48f",
"assets/assets/jade_and_evan/87.jpg": "71d0578f28bafedc929bd8a881f88ba8",
"assets/assets/jade_and_evan/86.jpg": "35d8fe16b3ae3cdcf73955871cf46e5a",
"assets/assets/jade_and_evan/92.jpg": "15400b4ea55a495172f1f72c26ea13a6",
"assets/assets/jade_and_evan/45.jpg": "8facc5f066e00bb22cadc51a38aefc75",
"assets/assets/jade_and_evan/3.jpg": "34933aa42d54cd5446506bc924cf9155",
"assets/assets/jade_and_evan/51.jpg": "ed7ff68df563698119fa05795f722602",
"assets/assets/jade_and_evan/79.jpg": "f987b46c550a1f46fbe770187dd05c88",
"assets/assets/jade_and_evan/47.jpg": "ae469c946b160378a6af3f7938b28861",
"assets/assets/jade_and_evan/53.jpg": "f3a9ace976ec0f6ca6d066c7af26ffd5",
"assets/assets/jade_and_evan/1.jpg": "79773243fb8488ca09c1783e09a0ab14",
"assets/assets/jade_and_evan/84.jpg": "f633ecf4dd77cdf7d8ac271ec3b9e711",
"assets/assets/jade_and_evan/90.jpg": "3063837a4674e88ef89cce2bc8d7b346",
"assets/assets/jade_and_evan/91.jpg": "e2a66f17fd86c58550b79980b4eb720c",
"assets/assets/jade_and_evan/85.jpg": "04b57cd055644bb4f40c9196240d2a11",
"assets/assets/jade_and_evan/52.jpg": "fdb458ad07a22cefb929efd100b23692",
"assets/assets/jade_and_evan/46.jpg": "e9027e9b5a82aaf65f8c2b9cfb9a5076",
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
