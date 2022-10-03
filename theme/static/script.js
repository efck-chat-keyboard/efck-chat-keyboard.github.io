"use strict";

window.addEventListener('copy', ev => {
    ev.clipboardData.setData('text/plain', document.getSelection().toString() + '\n \n—from: ' + window.location);
    ev.preventDefault();
});

window.addEventListener('load', () => {
    document.querySelectorAll('a[href]').forEach(a => {
        if (a.hostname !== window.location.hostname) {
            let rel = a.getAttribute('rel') || '';
            a.setAttribute('rel', `${rel} external`);
            a.setAttribute('target', '_blank');
        }
    });
});

function open_target_details() {
    let hash = window.location.hash;
    if (!hash) return;
    document.querySelector(hash).open = true;
    window.location.hash = hash;
}
window.addEventListener('load', open_target_details);
window.addEventListener('hashchange', open_target_details);


// $(document).ready(function(){
//     // function humanise(n){
//     //   var d = ',';
//     //   var s = '.';
//     //   n = n.toString().split('.');
//     //   n[0] = n[0].replace(/(\\d)(?=(\\d\\d\\d)+(?!\\d))/g, '$1' + d);
//     //   return n.join(s);
//     // }
//     $.getJSON("https://api.github.com/repos/fontforge/fontforge/releases/latest", function (json) {
//         var assetlist = json.assets;
//         total = 0;
//         $(assetlist).each(function (i, asset) {
//             total += asset.download_count;
//         });
//         $('#cnt-downloads').html(humanise(total));
//         $('.statistic').fadeIn();
//     });
//     $.getJSON("https://sfbadge.herokuapp.com/commits/fontforge/fontforge/json", function (json) {
//         $('#cnt-contributors').html(humanise(json.commits));
//     });
// });