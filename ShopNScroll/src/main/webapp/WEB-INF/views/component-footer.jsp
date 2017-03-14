<div class="col-md-12"><br><h4  style="color:rgba(0,0,0,0.5);font-size:16px;text-align:right;"><font>shopNscroll &reg; &nbsp&nbsp&nbsp</font></h4>
</div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/angular.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/main-query.js" ></script>

<script>
var siteApp = angular.module("SiteAppAJS",[]);
</script>

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
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>

<script>
$(document).ready(function(){
	$( ".admin-expand-btn" ).click(function() {
	  $( ".admin-tool-form" ).slideToggle( "fast", function() {
	    // Animation complete.
	  });
	});
	});
</script>

</body>
</html>