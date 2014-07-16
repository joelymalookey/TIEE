<?php
	$searchquery = $_POST["search"]; 
	$con=mysqli_connect("localhost","root","","TIEPSchema");
	// Check connection
	if (mysqli_connect_errno()) {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$fileName = array();
	$fileRef = array();
	
	$result = mysqli_query($con,"SELECT * FROM product_rundown  JOIN manufacture_info ON product_rundown.MGUID=manufacture_info.MGUID WHERE `META` LIKE '%{$searchquery}%'");


	while($row = mysqli_fetch_array($result)) {
	  $fileName[]=$row['NAME'];
	  "<br>";
	  $fileRef[]=$row['STLFILEREF'];
	  "<br>";
	  $mInfo[]=$row['MANUFACTURERSITE'];
	  "<br>";
	  $colInfo[]=$row['STLCOLLECTION'];
	  "<br>";
	  $assInfo[]=$row['COLLECTIONREF'];
	  "<br>";
	  $startInfo[]=$row ['START'];
	  "<br>";
	  $stopInfo[]=$row ['STOP'];
	  "<br>";
	}
	mysqli_close($con);

?>

<script type="text/javascript">
		
		var fN = <?php echo json_encode($fileName)?>;
		var fR = <?php echo json_encode($fileRef)?>;
		var manInfo = <?php echo json_encode($mInfo)?>;
		var colInfo = <?php echo json_encode($colInfo)?>;
		var assInfo = <?php echo json_encode($assInfo)?>;
		var startInfo = <?php echo json_encode($startInfo)?>;
		var stopInfo = <?php echo json_encode($stopInfo)?>;
		
		var divId=0;
		var resDiv = [];
		var fRefs = [];
		

		indSTLCol=[];
		fSizeX=150;
		fSizeY=100;
		
		manInfoSplit = stripNSplit(manInfo);
		fNSplit = stripNSplit(fN);
		fRSplit =stripNSplit(fR);
		colSplit = stripNSplit(colInfo);
		assSplit= stripNSplit(assInfo);
		startSplit = stripNSplit(startInfo);
		stopSplit = stripNSplit(stopInfo);
		meshArr=new Array();
		
		function stripNSplit(stringToSplit){
			Split = JSON.stringify(stringToSplit);
			Split=Split.replace(/[\[\]\"']/g, '');
			Split=Split.replace(/\\\\/g,"\\");
			Split=Split.split(",");
			return Split;
		}
		

		for (var res in fNSplit){
			resDiv[res] = document.createElement("div");
			resDiv[res].id = res;
			resDiv[res].className="resultsType";
			resDiv[res].innerHTML= "<table><tr><td><a href=http://www.google.com>"+fNSplit[res]+"</a></td>"+"<td><a href=" + manInfoSplit[res] +">Info</a></td>"+"<td><a href=http://www.google.com>Sponsors</a></td></tr></table>";
			document.getElementById('result').appendChild(resDiv[res]);	
			
			document.getElementById(resDiv[res].id).onmouseover = function changeVar(){
			
			removeMesh();
			indSTLCol = colSplit[parseInt(this.id)].split(" ");
					
			if (indSTLCol.length>1 ){
				for (item in indSTLCol){
						getTheName="3dfiles\\"+fRSplit[parseInt(this.id)];
						getTheName = getTheName.substring(0,getTheName.length-7);
						getTheName=getTheName+indSTLCol[item]+".stl";
						createMesh(getTheName, startSplit[item], function (mesh){
						scene.add(mesh)});
					}
			}
			else{
				getTheName="3dfiles\\"+fRSplit[parseInt(this.id)];
				createMesh(getTheName, startSplit[parseInt(this.id)],function (mesh){
				scene.add(mesh)});
			 }
			
			
			console.log("BREAK");
			divId=this.id;
			
			fSizeX=700;
			fSizeY=500;
		}
				
			document.getElementById(resDiv[res].id).onmouseout = function changeFrame(){
						removeMesh();
						fSizeX=150;
						fSizeY=100;
				}
			}
	
</script>
