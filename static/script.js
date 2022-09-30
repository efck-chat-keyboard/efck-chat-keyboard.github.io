"use strict";
window.addEventListener('copy', ev => {
ev.clipboardData.setData('text/plain', document.getSelection().toString() + '\n \n—from: ' + window.location);
ev.preventDefault();
});
window.addEventListener('load', () => {
document.querySelectorAll('a[href]').forEach(a => {
if (a.hostname !== window.location.hostname) {
a.setAttribute('rel', 'external');
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
open_target_details();
window.addEventListener('hashchange', open_target_details);




















