## scritp agregar evento mouseover mouseout click

window.addEventListener("load", function () {
  var couponcodes = document.getElementsByClassName("toolTip");
  for (var i = 0; i < couponcodes.length; i++) {
      couponcodes[i].addEventListener("mouseover", function () {
          var coupontooltip = this.getElementsByClassName("coupontooltip")[0];
          coupontooltip.removeAttribute("style");
      });
      couponcodes[i].addEventListener("mouseout", function () {
          var coupontooltip = this.getElementsByClassName("coupontooltip")[0];
          coupontooltip.style.display = "none";
      });
  }
});