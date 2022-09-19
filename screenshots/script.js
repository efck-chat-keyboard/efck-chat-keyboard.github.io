var $messages = $('.messages-content'),
    d, h, m,
    i = 0;


$(window).load(function() {
  console.log(SCENARIO);
  setTimeout(() => fakeMessage(), SCENARIO[i][0]);
});


function updateScrollbar() {
  let messages = document.querySelector('.messages-content');
  messages.scrollTo({top: messages.scrollHeight, behavior: 'smooth'});
}


function setDate(){
  d = new Date()
  if (m != d.getMinutes()) {
    m = d.getMinutes();
    let time = /(?<=T)\d+\:\d+/.exec(new Date().toISOString())[0];
    $(`<div class="timestamp">${time}</div>`).appendTo($('.message:last'));
  }
}


function _maybe_large(msg) {
  console.log(msg, msg.length);
  return ! /[\w.?!]+/.exec(msg) ? 'message-font-large' : '';
}


function insertMessage() {
  msg = $('.message-input').val();
  if ($.trim(msg) == '') {
    return false;
  }
  $(`<div class="message message-personal ${_maybe_large(msg)}">${msg}</div>`).appendTo($messages).addClass('new');
  setDate();
  $('.message-input').val(null);
  updateScrollbar();


  // if (! SCENARIO[i][3])  // Don't fire if it will auto-continue


  setTimeout(fakeMessage, SCENARIO[i][0]);
}


$('.message-submit').click(function() {
  insertMessage();
});


$('form').on('submit', function (e) {
  insertMessage();
  set_textarea_height();
  return false;
});
$("textarea").keypress(function (e) {
    if(e.which === 13 && !e.ctrlKey) {
        e.preventDefault();
        $('form').submit();
    }
});



function fakeMessage() {
  let avatar = i - 1 >= 0 && SCENARIO[i-1][3] && SCENARIO[i-1][2] ? '' : `<img class="avatar" src="_scenario/avatar.png" />`;
  $(`<div class="message theirs loading new">${avatar}<span></span></div>`).appendTo($messages);
  updateScrollbar();

  let [_, typing_delay, text, should_continue] = SCENARIO[i];

  setTimeout(function() {
    $('.message.loading').remove();
    if (text.length)
      $(`<div class="message theirs new ${_maybe_large(text)}">${avatar}${text}</div>`).appendTo($messages).addClass('new');
    setDate();
    updateScrollbar();
    i++;
    if (should_continue)
      setTimeout(fakeMessage, SCENARIO[i][0])
  }, typing_delay);

}


// Auto-size textarea height. From:
// https://stackoverflow.com/questions/454202/creating-a-textarea-with-auto-resize
const tx = document.getElementsByTagName("textarea")[0];
function set_textarea_height() {
  tx.style.height = 0;
  tx.style.height = (tx.scrollHeight) + "px";
}
// tx.setAttribute("style", `height:${tx.scrollHeight}px; overflow-y:hidden;`);
tx.addEventListener("input", set_textarea_height, false);