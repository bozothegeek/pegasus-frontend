function setup_slideshow(){var e,n=new Siema({loop:!0,duration:600});function t(){window.clearInterval(e),e=window.setInterval(function(){n.next()},6e3)}document.getElementById("prev-screenshot").addEventListener("click",function(){n.prev(),t()}),document.getElementById("next-screenshot").addEventListener("click",function(){n.next(),t()}),t()}function setup_links(e,n,t,s){function o(){e.forEach(function(e){var t=document.getElementById("dl-"+e+n);"loading..."==t.innerHTML&&(t.innerHTML="Failed to query the server. See all releases <a href='https://github.com/mmatyas/pegasus-frontend/releases/"+s+"'>HERE</a>.")})}function a(e,n,t){document.getElementById("dl-"+e).innerHTML="<a href='"+t+"'>"+n+"</a>"}var r=new XMLHttpRequest;r.open("GET","https://api.github.com/repos/mmatyas/pegasus-frontend/releases/"+t,!0),r.onload=function(){200===r.status&&function(t){"assets"in t&&Array.isArray(t.assets)&&t.assets.forEach(function(t,s){if("name"in t&&"browser_download_url"in t){var o=/^pegasus-fe_([a-z0-9-]+)_([a-z0-9]+)/.exec(t.name);o&&2 in o&&-1!=e.indexOf(o[2])?a(o[2]+n,o[1],t.browser_download_url):(o=/^pegasus-frontend_([0-9\.]+)_[a-z0-9]+\.deb$/.exec(t.name))&&1 in o&&a("x11deb"+n,o[1],t.browser_download_url)}})}(JSON.parse(r.responseText));o()},r.onerror=o,r.send()}window.onload=function(){setup_slideshow();const e=["win","x11","rpi1","rpi2","rpi3","android","macos"];setup_links(e,"-stable","latest","latest"),setup_links(e,"-dev","tags/continuous","tag/continuous")};