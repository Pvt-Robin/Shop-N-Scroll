<div class="col-md-12"><br><h4  style="color:rgba(0,0,0,0.5);font-size:16px;text-align:right;"><font>shopNscroll &reg; &nbsp&nbsp&nbsp</font></h4>
</div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/angular.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/image-scale.js" ></script>
<script type="text/javascript" src="resources/js/main-query.js" ></script>


<!-- IMAGE BEST FIT SCALING -->
<script>
// $(function() 
// 	{
// 	  $("img.product-grid-img").imageScale();
// 	});
</script>
<!-- IMAGE BEST FIT SCALING ENDS HERE -->

<!-- PAGE LOAD ANIMATION -->

<script>
$(window).on('load', function() {
		$("#load-animation").fadeOut("1500");;
	});
</script>

<!-- PAGE LOAD ANIMATION ENDS -->

<!-- AJS APP -->
<script>
var siteApp = angular.module("SiteAppAJS",[]);
</script>

<!-- UNIVERSAL CONTROLLERS -->

<script>
siteApp.controller("headerControllerAJS", function($scope) 
{
	$scope.userData = ${userData};
});
</script>

<script>
siteApp.controller("universalProductControllerAJS", function($scope, $location) 
{
	$scope.productData = ${productDataJSON};
});
</script>

<!-- UNIVERSAL CONTROLLERS ENDS -->


<!-- PAGE SPECIFIC CONTROLLERS -->
<script>
siteApp.controller("categoryControllerAJS", function($scope) 
{
	$scope.clist = ${categoryListJSON};
});
</script>

<script>
siteApp.controller("productControllerAJS", function($scope) 
{
	$scope.plist = ${productListJSON};
});
</script>

<script>
siteApp.controller("viewProductControllerAJS", function($scope) 
{
	$scope.thisproduct = ${viewProductJSON};
	$scope.quantity = 1;
	$scope.amount = ${viewProductAmount};
});
</script>

<script>
siteApp.controller("brandControllerAJS", function($scope) 
{
	$scope.blist = ${brandListJSON};
});
</script>

<script>
siteApp.controller("subCategoryControllerAJS", function($scope) 
{
	$scope.sclist = ${subCategoryListJSON};
});
</script>

<script>
siteApp.controller("supplierControllerAJS", function($scope) 
{
	$scope.slist = ${supplierListJSON};
});
</script>

<script>
siteApp.controller("userControllerAJS", function($scope) 
{
	$scope.ulist = ${userListJSON};
});
</script>

<script>
siteApp.controller("cartControllerAJS", function($scope) 
{
	$scope.cartlist = ${cartItemsListJSON};
});
</script>

<script>
siteApp.controller("wishControllerAJS", function($scope) 
{
	$scope.wlist = ${wishListJSON};
});
</script>

<script>
siteApp.controller("orderControllerAJS", function($scope) 
{
	$scope.olist = ${orderListJSON};
});
</script>

<!-- PAGE SPECIFIC CONTROLLERS ENDS -->

<!-- FUNCTIONALITY FUNCTIONS -->

<script>
$(document).ready(function(){
	$(".product-grid").hover(
		    function() {
		        $(this).stop().animate({opacity: "1"});
		    },
		    function() {
		        $(this).stop().animate({opacity: "0.8"});
	});
});
</script>



<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>

<script>
$(document).ready(function(){
	$( ".admin-expand-btn" ).click(function() {
	  $( ".admin-tool-form" ).slideToggle( "1000", function() {
	    // Animation
	  });
	});
	});
</script>

<script>
$(document).ready(function(){
	$( "#header-login-button" ).click(function() {
	  $( "#header-login-form" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });
	});
	});
</script>

<script>
$(document).ready(function(){
	$( "#admin-profile-button" ).click(function() {
	  $( "#admin-profile" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });
	});
	});
</script>

<script>
$(document).ready(function(){
	$( "#buyer-profile-button" ).click(function() {
	  $( "#buyer-profile" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });
	});
	});
</script>


<script>
$(document).ready(function(){
	$( "#main-header" ).mouseenter(function() {
	  $( "#header-navbar" ).show( {direction: 'left'}, "fast", function() {
	    // Animation
	  })
	  .mouseleave(function() {
	  $( "#header-navbar" ).hide( {direction: 'left'}, "fast", function() {
	    // Animation
	  });
	});
	});
</script>


<script>
$(document)
.ready(function(){
    $("#main-head-srctxt")
    .blur(function()
    	{	
        if($(this).val().length > 0)
        {
            $(this).css("background-image", "none");
            $(this).css("background-color", "rgba(0,0,0,0.2)");
        }
        else
        	{
        	$(this).css("background-image", "url(resources/img/logo.png)");
            $(this).css("background-color", "rgba(0,0,0,0.2)");
        	}
    })
    .focus(function(){
        $(this).css("background-image", "none");
        $(this).css("background-color", "rgba(0,0,0,0.2)");
	})
	.mouseenter(function(){
        $(this).css("background-color", "rgba(255,165,0,0.5)");
	})
	.mouseleave(function(){
        $(this).css("background-color", "rgba(0,0,0,0.2)");
	});
});
</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>

<script>
function callNoImg(obj)
{
       var defaultimg = "resources/img/default-picture.png";
       obj.src=defaultimg;
};

function callNoAvatar(obj)
{
       var defaultavatar = "resources/img/default-avatar.png";
       obj.src=defaultavatar;
};
</script>

<!-- FUNCTIONALITY FUNCTIONS ENDS -->

</body>

<!-- PAGE LOADING ANIMATION -->
<div id="load-animation"></div>
<!-- PAGE LOADING ANIMATION END -->

</html>