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
let attr = document.getElementsByClassName('attribution')[0];
console.log(attr.innerHTML);
attr.innerHTML = attr.innerHTML.replace('<span>NV</span>', '<span>N<i>ina</i></span> <span>V<i>rbinc</i></span>');
console.log(attr.innerHTML);
});
function open_target_details() {
let hash = window.location.hash;
if (!hash) return;
document.querySelector(hash).open = true;
window.location.hash = hash;
}
window.addEventListener('load', open_target_details);
window.addEventListener('hashchange', open_target_details);




















