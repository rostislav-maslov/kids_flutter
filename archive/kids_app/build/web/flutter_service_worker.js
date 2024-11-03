'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "2febdf971933f2a4d8735719177d9bc8",
"version.json": "95728ef5ad8a2ca1998284e20831436b",
"splash/img/light-2x.png": "8f35984da2114b7d368e0da912c3a18f",
"splash/img/dark-4x.png": "e8e271300d81d3780eb480475855bc3d",
"splash/img/light-3x.png": "91d0e6b491b8a8e19a0824a4d2682f9c",
"splash/img/dark-3x.png": "91d0e6b491b8a8e19a0824a4d2682f9c",
"splash/img/light-4x.png": "e8e271300d81d3780eb480475855bc3d",
"splash/img/dark-2x.png": "8f35984da2114b7d368e0da912c3a18f",
"splash/img/dark-1x.png": "f0710ae77ad3c81adf371c93bfa70c47",
"splash/img/light-1x.png": "f0710ae77ad3c81adf371c93bfa70c47",
"index.html": "f53a864b7abca083abc2f70a1720c823",
"/": "f53a864b7abca083abc2f70a1720c823",
"main.dart.js": "35206fe58ce46657b32ab294fbd6b909",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "e9c989d9c81ff95225fa0b0dbc0cf722",
"icons/Icon-192.png": "5676cf5f0233f8289da4135a547431dc",
"icons/Icon-maskable-192.png": "5676cf5f0233f8289da4135a547431dc",
"icons/Icon-maskable-512.png": "672ba844b24a03926090eca077589ac0",
"icons/Icon-512.png": "672ba844b24a03926090eca077589ac0",
"manifest.json": "764ade201f00b72a7ac669167211723d",
"assets/AssetManifest.json": "73a8075b468f1c41d72330619e9930f4",
"assets/NOTICES": "78545d7512d53b8e7ad55b25185fd878",
"assets/FontManifest.json": "6470ed4c388fcc7b2078428bda7a505a",
"assets/AssetManifest.bin.json": "4f3b693ecaeedca25c732d0f5e9f346e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/ftl_flutter_assets/assets/svg/mini_apps/ic_mini_app_logistics_40.svg": "9e687099c83b0976914413ec6d729ddc",
"assets/packages/ftl_flutter_assets/assets/svg/mini_apps/ic_mini_app_franchises_40.svg": "6d97dc5b5de650e2c6d118c6f8fbaf37",
"assets/packages/ftl_flutter_assets/assets/svg/mini_apps/ic_mini_app_business_setup_40.svg": "41ed7f58723dafd828418511e3936c0b",
"assets/packages/ftl_flutter_assets/assets/svg/mini_apps/ic_mini_app_employees_40.svg": "63377aeda5b31715c42fbac9c8dc3b73",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_logistics_101.svg": "3c65d5a4cbac6e05a47acf2c6b3c2af6",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_business_setup_101.svg": "59b2568ad2899326bb81915621322ce5",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/desktop/echo.svg": "a616560b636bdca1ea52bda22bdea643",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/desktop/pillars.svg": "3faa70e46671295fedfb130533668699",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/desktop/bubbles.svg": "4c5d44404b10a358f12d33125563a207",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/desktop/stairs.svg": "d04a7b9535747a5a39a58ae46ef51b92",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/desktop/waves.svg": "e434b3017d604570ce806d5595dbc287",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/mobile/echo.svg": "388fc1ee88df3a0b8ab40eac4d46c106",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/mobile/pillars.svg": "fd1d8e8a85a6939e3221ec14447e131d",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/mobile/bubbles.svg": "ad9f7b9645737e94621c6e41bf4f3be2",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/mobile/stairs.svg": "012d905c95a308ec9144e7cb90bad19a",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/horizontal/mobile/waves.svg": "e2dcef3881c01f02fc8e89cc70f0118b",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_employees_101.svg": "d797482dd1e50caa77dd077d380212c5",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_reports_101.svg": "d0e2b2c738fb4c7d3c03b7a297354563",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_franchises_101.svg": "8ec041de1b207efdae25434a572fc108",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/vertical/echo.svg": "b72e5e5c8f010689813e7f8de776e2da",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/vertical/pillars.svg": "5601dc450e74e648b07e14d99861ddcb",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/vertical/bubbles.svg": "51e0cc594ac9e69bb920105ead5fcd2c",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/vertical/stairs.svg": "9245eeb763f67d683caebe3bbe0daccd",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/vertical/waves.svg": "235842cd08416e801e3c1943d00af0f6",
"assets/packages/ftl_flutter_assets/assets/svg/patterns/pt_widget_marketing_101.svg": "29758255032aa005b9acfc3ead308514",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_star_24.svg": "e6e9f499cfa4d0d82050340271be6fa5",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_action_24.svg": "61837cb20a1240b71ba6935b62cc0a91",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_area_24.svg": "e24a3c498b58ceef65d3791e7354c4c3",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_car_24.svg": "430951dee5f4c159114e00e0930096ce",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_folder_24.svg": "3e0adc5f617774437d88c73ed01489fb",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_pin_24.svg": "b3664a32cb0feb5caaa3a075e35acf6b",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_double_arrow_left_24.svg": "ec9be2eb22c3b16e9536c072dadf9413",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_restaurant_24.svg": "c58e90e4e1b8a1130126efb6752daa54",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_search_24.svg": "9b91c83bd79b6fb7695d52d4c68b2f05",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_info_24.svg": "e2e8a5dc80fa939f3987c4b4b89f491c",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_camera_24.svg": "d913e63c17fe5fb6167ebe112d0d5a3f",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_arrow_left_24.svg": "40e56c65cb1d244bf3f8c197494c691e",
"assets/packages/ftl_flutter_assets/assets/svg/icons/foodtech_logo_24.svg": "d0ea3af55168e7bc8f02733e4411ec7a",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_brand_24.svg": "f157e7259ade9a38f0dede656e01b7d8",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_arrow_right_24.svg": "41793d7bf94b7232e1c43d215db2d300",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_show_pass_24.svg": "772439adcf9201ddd60e4d7ad02d7b62",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_edit_24.svg": "2049d4c62457ea95d88f0511fa027001",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_fastfood_24.svg": "bdc7cf20dc8c5efca2658c94bd30170a",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_courier_24.svg": "f936274f9a23c4610844e6bab711790e",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_squeeze_24.svg": "baf98a0b8eb31ee7aa0656578cf795e7",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_cash_24.svg": "f9f12f4e762f44af21e1ce22f00ef97f",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_employees_and_roles_24.svg": "ed4f5f6340864e2d06b795805434e14d",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_graph_legend_16.svg": "e64cc07c8b7a004801cabc85a97dcfc1",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_add_24.svg": "49c12a93b5bb3c875eff029a8a438cf6",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_settings_24.svg": "31f7d96bbfd249e75815afe344cb2041",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_back_24.svg": "7ae95ee2fa29884152ac36875e7194d7",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_done_line_24.svg": "f0e5d7f974548b6bb4bf5472ec6d9783",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_expand_more_24.svg": "7a2a8dec22fdd3523a64b19d025ee50d",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_hide_pass_24.svg": "6ce7080cf3d2243b82c88e2785b2a9f5",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_filter_list_24px.svg": "9447ba9de5f50f1dd5a2fec054ffa020",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_sms_24.svg": "ccd08665fe7dfb71b8430ef7af794d0d",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_person_cards_24.svg": "7a41b7f9bbb64948bd57a5ed0de46a86",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_done_fill_24.svg": "b1aaf6db6e4da332b8766c745c0090fa",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_order_service_24.svg": "4a577aa40af3579be48c0b9c9d939d19",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_users_24.svg": "d7efe1197379754d27c243a56e7dcfef",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_rating_24.svg": "056cc4df3ec60285424f724cb2c85dd5",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_city_24.svg": "46ad6e3311d8d61a210f2a715a3d7054",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_notifications_20.svg": "f7a416ca43cc8829b221a7a56e000303",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_double_arrow_right_24.svg": "565058c1d7d3ce497159612c840cad53",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_avatar_24.svg": "06769077b4c52e2a6cab8df777c8cf27",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_open_in_new_24.svg": "9c15a293300be99557ca57bf59c7e22c",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_order_24.svg": "bdf99d06dda9f2d2d65ff53445426f49",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_more_vert_24px.svg": "2c7b982abd1a12108bff1d2b0bf2fac3",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_menu_24.svg": "38d6ea28ee8a703316a058de021ef1a6",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_fact_check_24.svg": "827574de2604b24cd723d31e0ec51e2c",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_manager_24.svg": "61de7665478693cf1db1b14fe7c0cbab",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_news_24.svg": "574f49c2acc41df843ce1297006ff7a2",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_warning_24.svg": "dcc85279f554dfd23f01cc6f27c804cb",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_delete_24.svg": "bb89dfaea35d48299ff1c4342e735743",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_exit_24.svg": "e47f1e2468974d7dd6bccb237ccec659",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_archive_24.svg": "35cf76449eba08b84a308b02c0944712",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_country_24.svg": "5f242331a77c8946268ebd891b716a43",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_close_24px.svg": "1af466348c57497ad35d07d314155c37",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_apps_24.svg": "cb3c89df7c02ef4e62b7ccc009cc3137",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_documents_24.svg": "44d35d2608d7cc8888e73e153b10b153",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_save_24.svg": "2c4cca23c3d825725ecfc066b971b5df",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_reports_24.svg": "a19665aacbac0163dc68df22fade43d7",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_file_24.svg": "fea560077c1b4599adc8bb60f2a7bc05",
"assets/packages/ftl_flutter_assets/assets/svg/icons/ic_subtract_24.svg": "a643cc7823ab8aa88ff1888607a56633",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_franchises.png": "00cf61ae03e1c13b96fc09777171f231",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_marketing.png": "44d5152f3bcaecc86fb92f29e4dee9f1",
"assets/packages/ftl_flutter_assets/assets/img/banner_background_black.png": "89ecc5632f9d78ef71c74e3876b8e40a",
"assets/packages/ftl_flutter_assets/assets/img/img_checker.png": "ac40332e294c9500e45753029da5ceb9",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_logistics.png": "709132baf523198f1cd2fe603b7e944e",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_employees.png": "cc362cc81c8e416199a36cc21e0e13a1",
"assets/packages/ftl_flutter_assets/assets/img/banner_background_light.png": "91efead5f88b7e3c84970b5139e07173",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_3.png": "911699631d3b78023f748c4a7f6700a7",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_22.png": "bc1ee40a731f110e2844972a8f4e2dbd",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_23.png": "29117978b441071ad9888575bdb51b98",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_2.png": "a246a7485295aadde08c30662e0a1308",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_21.png": "435deb2e960a6578acb7363278f12841",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_20.png": "d7e2e32694c181c30154d3151c028e69",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_1.png": "ba727c42acd0994c3fe839e5b7ddfe3a",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_5.png": "f5177b148d3b152a84daa634ccdfde1d",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_18.png": "74ad13f099300c20d09b19dc1948bd31",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_24.png": "87d3aabc0feb1affdb8d77c05670460f",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_30.png": "60d34dd034e22c7c5ce75218568ace88",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_25.png": "4f9bd90223be48cd8478f3b8e15ebd24",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_19.png": "5356818ac9cbe1edc74da3d059dc8008",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_4.png": "831b083aefb0c146b93de805572997b4",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_6.png": "e10b9414fe4f452645666eee08028ec6",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_27.png": "69c8e8c1aa7bd23677f3da2ac5326742",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_26.png": "66c4dfa450e30c9508dcfc17dbdbeca8",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_7.png": "ae1deb451700df690384b60b8e8db232",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_17.png": "48645a7e5948b12b42f753973097c8a1",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_16.png": "312f706911d779e2b35929c5561226f2",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_9.png": "04706ae4f7396f82dc328d83c5491ac2",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_14.png": "dcebe69cdfe7e80b520f1927667816a9",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_28.png": "047cde7a60458ab579d359a0fb94196b",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_29.png": "a74d2fcefb5ac8ee8bbb13b397b79d44",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_15.png": "299d3dd369d168d78292333d1a884a57",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_8.png": "bafe27c49bb275e19a846c793549bff8",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_11.png": "88ec6c9a8a8d03867316c30e2235364d",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_10.png": "e024811792e0182770d47463c3d776b4",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_12.png": "7b7d3efc39236ef25b53f96a99e67895",
"assets/packages/ftl_flutter_assets/assets/img/avatars/avatar_13.png": "529b12ecf0697f22b46d351baf341e2e",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_business_setup.png": "f85ac988db8494584fb60420596e5c30",
"assets/packages/ftl_flutter_assets/assets/img/pt_widget_reports.png": "6af7c2c983bb7c5b7445646abb62e69e",
"assets/packages/ftl_flutter_assets/assets/fonts/Inter-Medium.ttf": "ed533866b5c83114c7dddbcbc2288b19",
"assets/packages/ftl_flutter_assets/assets/fonts/Inter-Bold.ttf": "275bfea5dc74c33f51916fee80feae67",
"assets/packages/ftl_flutter_assets/assets/fonts/Inter-Regular.ttf": "079af0e2936ccb99b391ddc0bbb73dcb",
"assets/packages/timezone/data/latest_all.tzf": "a3a6cb5d912b5375926e5b027f91cb00",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "974619e8251fe9149089edab5cba36b3",
"assets/fonts/MaterialIcons-Regular.otf": "6209e70bdf52787a81d05b26cc2398b1",
"assets/assets/splash/logo_splash.png": "b27ec38b88698dd0987ae5216003ecd5",
"assets/assets/logo/logo_rounded.png": "31cd8420cc21f919e563c8d60d4d30b2",
"assets/assets/logo/logo_ios.png": "82ad4011428b2d6811475c95a9a9a60a",
"assets/assets/logo/logo.png": "23fce25ed012cee883ff1532b3ba8340",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
