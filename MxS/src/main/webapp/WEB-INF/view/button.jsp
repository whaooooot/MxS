<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>button - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>

<!DOCTYPE html><html class=''>
<head><script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/simonbusborg/pen/cyxad?depth=everything&order=popularity&page=62&q=box&show_forks=false" />

<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'>
<style class="cp-pen-styles">html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

body {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  box-sizing: border-box;
  min-height: 100vh;
  background: whitesmoke;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
  font-size: 16px;
  font-weight: 700;
  line-height: 1;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}
@media (min-width: 992px) {
  body {
    border-width: 30px;
  }
}

body.linked .button, body.linked h1 {
  opacity: .3;
}
body.linked p {
  color: rgba(22, 22, 22, 0.3);
}

h1 {
  text-align: center;
  -webkit-transition: opacity 180ms ease;
  transition: opacity 180ms ease;
  color: #161616;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
  font-size: 32px;
  font-weight: 700;
}
h1 span {
  font-weight: 400;
}

p {
  max-width: 460px;
  margin: 0 auto;
  -webkit-transition: color 180ms ease;
  transition: color 180ms ease;
  text-align: center;
  color: rgba(22, 22, 22, 0.6);
  font-weight: 400;
  line-height: 1.5;
}

a, a:visited {
  text-decoration: none;
  color: #416dea;
  font-weight: 500;
}
a:hover, a:visited:hover {
  text-decoration: underline;
  color: #2a5be7;
}

.container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  width: 100%;
  padding: 20px;
}

.button-container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  margin: 60px auto;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.button {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  overflow: hidden;
  margin: 10px;
  padding: 12px 12px;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  -webkit-transition: all 60ms ease-in-out;
  transition: all 60ms ease-in-out;
  text-align: center;
  white-space: nowrap;
  text-decoration: none !important;
  text-transform: none;
  text-transform: capitalize;
  color: #fff;
  border: 0 none;
  border-radius: 4px;
  font-size: 13px;
  font-weight: 500;
  line-height: 1.3;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-flex: 0;
      -ms-flex: 0 0 160px;
          flex: 0 0 160px;
  box-shadow: 2px 5px 10px rgba(22, 22, 22, 0.1);
}
.button:hover {
  -webkit-transition: all 60ms ease;
  transition: all 60ms ease;
  opacity: .85;
}
.button:active {
  -webkit-transition: all 60ms ease;
  transition: all 60ms ease;
  opacity: .75;
}
.button:focus {
  outline: 1px dotted #959595;
  outline-offset: -4px;
}

.button.-regular {
  color: #202129;
  background-color: #f2f2f2;
}
.button.-regular:hover {
  color: #202129;
  background-color: #e1e2e2;
  opacity: 1;
}
.button.-regular:active {
  background-color: #d5d6d6;
  opacity: 1;
}

.button.-dark {
  color: #FFFFFF;
  background: #161616;
}
.button.-dark:focus {
  outline: 1px dotted white;
  outline-offset: -4px;
}

.button.-green {
  color: #FFFFFF;
  background: #3dd28d;
}

.button.-blue {
  color: #FFFFFF;
  background: #416dea;
}

.button.-salmon {
  color: #FFFFFF;
  background: #F32C52;
}

.button.-sun {
  color: #f15c5c;
  background: #feee7d;
}

.button.-alge {
  color: #e7ff20;
  background: #7999a9;
}

.button.-flower {
  color: #FE8CDF;
  background: #353866;
}
</style></head><body>
<div class='container'>
  <h1>
    Buttons
  </h1>
  <p>
    Random selection of button styles. May change over time as I get alot of stupid ideas. Feel free to follow me on  <a href="https://twitter.com/simonbusborg" target="_blank" class="twitter">twitter</a>
  </p>
  <div class="button-container">
    <div class='button -regular center'>Let's start</div>
    
    <div class='button -dark center'>Touch me</div>
    
    <div class='button -green center'>Just like that</div>
    
    <div class='button -blue center'>And that, oh, yeah</div>
        
    <div class='button -salmon center'>Now that I like</div>
    
    <div class='button -sun center'>God, that's so nice</div>
    
    <div class='button -alge center'>Now lower down</div>
    
    <div class='button -flower center'>Where the figs lie</div>
    
  </div>
</div>
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script >let	body = document.querySelector('body')
let twitter = document.querySelector('.twitter')

twitter.addEventListener("mouseover", function () {
    body.classList.add('linked')
},false);

twitter.addEventListener("mouseout", function () {
    body.classList.remove('linked')
}, false);
//# sourceURL=pen.js
</script>
</body></html>
<script type="text/javascript">

</script>
</body>
</html>
