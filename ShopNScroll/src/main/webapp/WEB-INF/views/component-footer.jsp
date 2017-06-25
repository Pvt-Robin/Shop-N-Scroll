<div class="col-md-12"><br><h4  style="color:rgba(0,0,0,0.5);font-size:16px;text-align:right;"><font>shopNscroll &reg; &nbsp&nbsp&nbsp</font></h4>
</div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/angular.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/main-query.js" ></script>

<!-- IMAGE BEST FIT SCALING ENDS HERE -->

<!-- PAGE LOAD ANIMATION -->

<script>
	$(".newpager").on('click', function() {
	$("#load-animation").fadeIn("500");;
	});
	
	$(window).on('load', function() {
		$("#load-animation").fadeOut("500");;
	});
</script>

<!-- PAGE LOAD ANIMATION ENDS -->

<!-- GOOGLE MAP -->
<script>
function initMap() {
    var myLatLng = {lat: 19.121605, lng: 72.850108};

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: myLatLng
    });

    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });
  }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyND1RL3mvnKzfWYf9kQE_3poEEYMpqEs&callback=initMap"
    async defer></script>

<!-- MEGA MENU ENDS -->

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
siteApp.controller("universalProductControllerAJS", function($scope, $location, $filter) 
{
	$scope.productData = ${productDataJSON};
	
	$scope.productDataView = $filter('orderBy')($scope.productData, 'viewCount', true);
	$scope.productDataLate = $filter('orderBy')($scope.productData, 'productId', true);
	$scope.productDataDisc = $filter('orderBy')($scope.productData, 'discount', true);	
	
	$scope.usr = ${userData};	

	var getUrlParameter = function getUrlParameter(sParam) {
	    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
	        sURLVariables = sPageURL.split('&'),
	        sParameterName,
	        i;

	    for (i = 0; i < sURLVariables.length; i++) {
	        sParameterName = sURLVariables[i].split('=');

	        if (sParameterName[0] === sParam) {
	            return sParameterName[1] === undefined ? true : sParameterName[1];
	        }
	    }
	};

	$scope.browseWord = getUrlParameter('browse');
	$scope.errorToDisplay = getUrlParameter('errormessage');
	$scope.orderkeyword = getUrlParameter('orderingkey');
	$scope.orderflag = true;
	  
	$scope.changeColor = function(person) 
	{
	    $scope.showCaption = {color: '#'+person.colour};
	};
	
	$scope.sortByFame = function() 
	{  
		  $scope.orderkeyword = 'viewCount';
		  $scope.orderflag = true;
	}
	
	$scope.sortByTime = function() 
	{  
		  $scope.orderkeyword = 'createdDate';
		  $scope.orderflag = true;
	}
	
	$scope.sortByDiscount = function() 
	{  
		  $scope.orderkeyword = 'discount';
		  $scope.orderflag = true;
	}
	
	$scope.sortByHigh = function() 
	{  
		  $scope.orderkeyword = 'productAmount';
		  $scope.orderflag = false;
	}
	
	$scope.sortByLow = function() 
	{  
		  $scope.orderkeyword = 'productAmount';
		  $scope.orderflag = true;
	}
	
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
	$scope.usr = ${userData};	
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

<script>
siteApp.controller("sliderControllerAJS", function($scope) 
{
	$scope.slidelist = ${adList};
});
</script>

<script>
siteApp.controller("adControllerAJS", function($scope) 
{
	$scope.alist = ${adListAll};
});
</script>

<!-- PAGE SPECIFIC CONTROLLERS ENDS -->

<!-- FUNCTIONALITY FUNCTIONS -->

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
      $("#usernametextbox").focus();
      $("#header-navbar").slideUp('200');
	});
	});
</script>

<script>
$(document).ready(function(){
	$( "#admin-profile-button" ).click(function() {
	  $( "#admin-profile" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });      
	  $("#header-navbar").slideUp('200');
	});
	});
</script>

<script>
$(document).ready(function(){
	$( "#buyer-profile-button" ).click(function() {
	  $( "#buyer-profile" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });      
	  $("#header-navbar").slideUp('200');
	});
	});
</script>


<script>
$(document).ready(function(){
	$( "#header-menu-button" ).click(function() {
	  $( "#header-navbar" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });
	  $("#header-login-form").slideUp('200');
	  $("#admin-profile").slideUp('200');
	  $("#buyer-profile").slideUp('200');
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
            $("#searchresults").slideUp('200');
        }
        else
        	{
        	$(this).css("background-image", "url(resources/img/logo.png)");
            $(this).css("background-color", "rgba(0,0,0,0.2)");
            $("#searchresults").slideUp('200');
        	}
    })
    .focus(function()
    		{
          $(this).css("background-image", "none");
          $(this).css("background-color", "rgba(0,0,0,0.2)");
          $("#header-login-form").slideUp('200');
          $("#admin-profile").slideUp('200');
          $("#buyer-profile").slideUp('200');
          $("#header-navbar").slideUp('200');
          $("#searchresults").slideDown( {direction: 'left'}, "fast", function() {
      	    // Animation
      	  });        
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

<script>
$(document).ready(function(){
	$( "#base-clickable" ).click(function() {
	  $( "#base-expandable" ).slideToggle( {direction: 'left'}, "fast", function() {
	    // Animation
	  });      
	});
	});
</script>

<script>

function openCity(evt, cityName) 
	{
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) 
    {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>

<script>
$("#img_01").elevateZoom();
</script>

<!-- FUNCTIONALITY FUNCTIONS ENDS -->

</body>

<!-- PAGE LOADING ANIMATION -->
<div id="load-animation"></div>
<!-- PAGE LOADING ANIMATION END -->

</html>