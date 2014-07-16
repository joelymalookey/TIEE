<!DOCTYPE html>

<html>
    <head>
        <title>TIEE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
		<link href="TIEE.css" rel="stylesheet" type="text/css" />
    </head>
			
    <body>
		<div id="conDiv">
			<header id="header">
				<div id = "logo">
				TIEE
				</div>
		
				<div id="horizontalnav">
			
					<ul>
						<li>
							<a href="contact.html">Contact Us</a>
						</li>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="topten.html">Top Ten</a>
						</li>
					</ul>
			
				</div>
				
			</header>
		

			<div id="input">
				<form method="post" id="form">
					<input type="text" name="search" ><br>			
					<input type="submit" id="submit">
				</form>
			</div>
			<div id ="result">
			<?php if (!empty($_POST))
				include ("Querydb.php");
				include ("viewer.php");	?>
				
			<!-- <div id = "scrollButtons">
			
				<input type="button" id="buttonUp" />
				<input type="button" id="buttonDown" />
				
			</div> -->
													
			</div>


    </body>
</html>


