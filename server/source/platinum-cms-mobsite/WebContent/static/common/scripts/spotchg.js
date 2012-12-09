var currentspot = 1;

function changespot(dir) {
	var newspot = currentspot + dir;
	if (newspot<=0) newspot=maxspot;
	else if (newspot>maxspot) newspot=1; 
	for(i=1; i<=maxspot; i++) {
		if (i==newspot) {
			document.getElementById("spot"+i).style.display = "";
			document.getElementById("dot"+i).src = img1;
		} else {
			document.getElementById("spot"+i).style.display = "none";
			document.getElementById("dot"+i).src = img2;
		}
	}
	document.getElementById("spotimg").src = imgs[newspot];
	currentspot = newspot;
}

function chgimgwidth() {
	var imgs = document.getElementsByTagName("img");
	for(i=0;i<imgs.length;i++) {
		if(imgs[i].id=='spotimg') continue;
		var url = imgs[i].src;
		regex = /^(http:\/\/(.+?))*?(\/publish\/th\/\d+\/)(.+)$/;
		var r = regex.exec(url);
		if (r == null) continue;
		var w = imgs[i].width;
		var h = imgs[i].height;
		var nw = 268;
		var nh = parseInt(nw*h/w);
		imgs[i].width = nw;
		imgs[i].height = nh;
	}
}

function clearwhiteline() {
  var divs = document.getElementsByTagName("div");
  for(i=0;i<divs.length;i++) {
    if (divs[i].innerHTML == "&nbsp;") {
      divs[i].style["line-height"] = "0px";
      divs[i].style["height"] = "0px";
      divs[i].innerHTML = "";
    }
  }
}

window.onload = function() {
	chgimgwidth();
	clearwhiteline();
  // spotlight touch event handlers
	document.getElementById("spotimg").src = imgs[currentspot];
  var obj = document.getElementById("spotimg");
  if (obj.addEventListener) {
	  obj.addEventListener("touchstart", function(event) {
	  	event.preventDefault();
	  	if (!event.touches.length) return;
	  	var touch = event.touches[0];
	  	var img = document.getElementById("spotimg");
	  	img.setAttribute("TouchStartX", touch.pageX);
	  	img.setAttribute("TouchMoveX", 0);
	  }, false);
	  obj.addEventListener("touchmove", function(event) {
	  	event.preventDefault();
	  	if (!event.touches.length) return;
	  	var touch = event.touches[0];
	  	var img = document.getElementById("spotimg");
	  	var startX = img.getAttribute("TouchStartX");
	  	var moveX = touch.pageX - startX;
	  	img.style["left"] = moveX + "px";
	  	img.setAttribute("TouchMoveX", moveX);
	  }, false);
	  obj.addEventListener("touchend", function(event) {
	  	event.preventDefault();
	  	var img = document.getElementById("spotimg");
	  	var moveX = img.getAttribute("TouchMoveX");
	  	img.style["left"] = "0px";
	  	img.removeAttribute("TouchStartX");
	  	img.removeAttribute("TouchMoveX");
	  	if (moveX > 100) changespot(-1);
	  	else if (moveX < -100) changespot(1);
	  }, false);
	}
};
