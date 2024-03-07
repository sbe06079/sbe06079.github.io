'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "b3b87f9153d4406c14bc11865bbe1089",
"index.html": "d9714c32cda71ba182b62306ec4a0dd0",
"/": "d9714c32cda71ba182b62306ec4a0dd0",
"main.dart.js": "75951a0ffd286f42e00f5b84afab155f",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "901d86fb8842ec0d66225a542131d689",
"assets/AssetManifest.json": "60670792a96fdc994ce70352a7c94de4",
"assets/NOTICES": "71b6932049dad427e279f189bac524f2",
"assets/FontManifest.json": "4b5d3dbbab82580f7fbd4558c32a358d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
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
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/AppleSDGothicNeoB.ttf": "67680f2eb947c5cbd58b40961b4a61e9",
"assets/fonts/RobotoSlab-ExtraLight.ttf": "12dd60b73023331a48f5e3f2b34131f6",
"assets/fonts/aptos-semibold.ttf": "cfd2b2e62e2d0da33c516f3249ac6e81",
"assets/fonts/apple-sd-gothic-neo-light.otf": "65ba7287d372c67ac4715c38872adcbc",
"assets/fonts/RobotoSlab-Regular.ttf": "e7789f2202c55ee4373f072945cf6a24",
"assets/fonts/Thonburi.ttf": "62b0e8982d6bda8c45021e0cfe47658f",
"assets/fonts/AppleSDGothicNeoR.ttf": "ddf7d49e75259d7806e0b1f72bcb54e6",
"assets/assets/spotify.png": "19e0f6b1ec9fad061fb83b1ee546dd57",
"assets/assets/evan_kim_logo.png": "9511a9e56d0255e703cbe0373895e114",
"assets/assets/favicon.ico": "b23a7f3ef6a82b8419dab6b6f39c4cfe",
"assets/assets/instagram.png": "231cce75a2c2abc109b08f7f1e6b6e17",
"assets/assets/bareuloh_logo.png": "897f13615f85a82616d4a98ae094dfff",
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
"assets/assets/evan_kim_website_preview.png": "aa5c2956c5a2dcb45ec29b14cadcad47",
"assets/assets/tiktok.png": "6b22c31470c9ed6d8d28278a4fbc978b",
"assets/assets/Spotify_ShinyApp.mov": "0f4b77e6eb00914cb997110b34f628fd",
"assets/assets/evanBitmoji_cutoff.png": "db717d6231b3cb3de5becee3175e053b",
"assets/assets/evanBitmoji.png": "ce71861532622bd3dde2d3473eda141a",
"assets/assets/bareulohLogoForEvanKimWebsite.png": "fd37c6fafc77aa2d363e05e241dc9242",
"assets/assets/evanBitmoji_cutoff_with_hey.png": "9695040a15e69cd20c8d0d49359585b0",
"assets/assets/linkedin.png": "2f0ecf7ef1056ab13a397e618572327b",
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
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
