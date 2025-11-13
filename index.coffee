# Übersicht Random Quote Widget - CoffeeScript + external quotes

# 引入外部 JSON 文件
quotes = require('./quotes.json')

# 随机选择一句
command: "echo '#{quotes[Math.floor(Math.random() * quotes.length)]}'"

refreshFrequency: false

render: (output) ->
  "<div style='
    position: fixed;
    top: 10%;
    left: 50%;
    transform: translate(-50%, 0);
    max-width: 90%;
    color: rgba(255,255,255,0.97);
    font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
    font-size: 42px;
    font-weight: 300;
    text-align: center;
    line-height: 1.4;
    text-shadow:
      2px 2px 4px rgba(0,0,0,0.6),
      -2px -2px 4px rgba(0,0,0,0.6),
      2px -2px 4px rgba(0,0,0,0.6),
      -2px 2px 4px rgba(0,0,0,0.6);

    pointer-events: none;
    z-index: 9999;
    word-wrap: break-word;
  '>
    #{output}
  </div>"
