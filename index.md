---
layout: default
---

<script type="text/javascript">
  var imageList = [
	  { url: "/assets/img/220107.jpg", scale: 1 },
	  { url: "/assets/img/250708.jpg", scale: 1 },
	  { url: "/assets/img/250813.jpeg", scale: 1.2 },
  ];
	var fixedWidth = 120;
  var fixedHeight = 160;

  function getImageTag() {
    var randomIndex = Math.floor(Math.random() * imageList.length);
    var imgData = imageList[randomIndex];

    var containerStyle =
      "width:" + fixedWidth + "px;" +
      "height:" + fixedHeight + "px;" +
      "margin:20px 4px 4px 4px;" +
      "overflow:hidden;" +
      "position:relative;" +
    	"float:right;" +
      "border-radius:8px;";

    var imgStyle = 
      "width:100%; height:100%;" +
      "object-fit:cover;" +
      "position:absolute; top:50%; left:50%;" +
      "transform:translate(-50%,-50%) scale(" + imgData.scale + ");";

    var html = 
      '<div style="' + containerStyle + '">' +
      '<img src="' + imgData.url + '" style="' + imgStyle + '"/>' +
      '</div>';

    return html;
  }
  document.write(getImageTag());
</script>

# About

Hi, my name is Ikhan Choi (최익한).
My surname is pronounced officially as "Chwe (チェ)", but I prefer to be called "Choy (チョイ)".

I am from Korea and a graduate student at the University of Tokyo under the advice of [Yasuyuki Kawahigashi](https://www.ms.u-tokyo.ac.jp/~yasuyuki/index-e.html).
I am grateful to have been selected as a recipient of the Japanese Government (MEXT) scholarship and honored with the Dean's Award from the University of Tokyo for my master's program.

My research interests primarily lie in operator algebras and abstract harmonic analysis, and their applications to other areas of mathematics such as representation theory, differential geometry, and mathematical physics.
Recently, I have been particularly interested in functional analytic features of bivariant K-theory and some generalizations from the viewpoint of algebraic topology.

I am an amateur saxophonist, and also interested in computer graphics and physics simulations.


# Contact

Email: dlrgks623 [at] gmail [dot] com<br>
Room 318, Mathematical Science Building, 3-8-1 Komaba, Tokyo