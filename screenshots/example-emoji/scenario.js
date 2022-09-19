var NAME = 'Alison',
    RELATION = 'Friend',
    SCENARIO = [
    // thinking_ms, typing_ms, their_text, continue
    [0, 0, '', false],
    // let me show you something. name an emoji
    [1500, 1500, 'u mean like mango?', false],
    // :mango:
    [1000, 1000, '?', false],
    // another one!
    [1000, 0, '', true],
    [1000, 1000, 'peacock', false],
    // :chicken:
    [0, 0, '', false],
    // aaaaaaand?
    [3000, 3000, "i dont find u funny, kyle", false],
];
