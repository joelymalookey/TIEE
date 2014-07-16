<!-- <!DOCTYPE html>

<html lang="en">
    <head>
        <title>stl viewer</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
	

    </head>
    <body>  -->
		
        <script src="three.js"></script>
        <script src="stats.js"></script>
        <script src="detector.js"></script>
		<script src="STLLoader.js"></script>
		<script src="TypedGeometry.js"></script>
        <script src='http://dat-gui.googlecode.com/git/build/dat.gui.min.js'/></script>
		
		<script>
	
			/* var camera, renderer,
            geometry,scene, material,light1,fov,mesh; */
			meshArr=[];
			initPanel=true;
			scene = new THREE.Scene();
			camera = new THREE.PerspectiveCamera( 20, window.innerWidth / window.innerHeight, 1, 10000 );
			renderer = new THREE.WebGLRenderer({alpha:true}); //new THREE.CanvasRenderer();
			gui =new dat.GUI({autoPlace:false});
			
			
			
			
			
			init();
			animate();

			function init() {
				
                //Detector.addGetWebGLMessage();
					
                camera.position.z = 70;
                camera.position.y = 0;
                scene.add( camera );
                
				directionalLight = new THREE.DirectionalLight( 0xffffff );
                directionalLight.position.x = 0; 
                directionalLight.position.y = 0; 
                directionalLight.position.z = 1; 
                directionalLight.position.normalize();
                scene.add( directionalLight );
                
				renderer.setClearColor( 0x000000, 0 );

				renderer.setSize(fSizeX,fSizeY);
				stats = new Stats();
				stats.domElement.style.position = 'absolute';
				stats.domElement.style.top = '0px';
				document.body.appendChild(stats.domElement);
				
            }
			function removeMesh(){		 
			
				for (var a in scene.children){
					if (scene.children[a] instanceof THREE.Mesh){
						scene.remove(scene.children[a]);
					}	
				}
			}
			function createMesh(getTheNames,startSplits,onLoaded){
				
				loader = new THREE.STLLoader();		
				loader.addEventListener('load', function (event) {
						geometry=event.content;
						mesh = new THREE.Mesh( geometry,  new THREE.MeshNormalMaterial() );
						startPos=startSplits.split(" ");
						mesh.position.set( parseInt(startPos[0]), parseInt(startPos[1]), parseInt(startPos[2]));
						mesh.rotation.set( 0,0,0 );
						mesh.id=getTheNames;
						onLoaded(mesh);
					});
				loader.load( getTheNames);
			}

			function createMeshArr(){
				
				for (var a in scene.children){
					if (scene.children[a] instanceof THREE.Mesh){
						scene.children[a].id;
						meshArr[a]=scene.children[a];
					}	
				}
				return meshArr;
			
			}
			function animate() {
				requestAnimationFrame(animate );
				renderer.setSize(fSizeX,fSizeY);
				render();
            }
			function render() {
				
				stats.update();
				b=createMeshArr();
				for (var a in b){
					//b[a].rotation.x += 0.01;
				} 
								
				//mesh.geometry.computeBoundingSphere();
				camera.updateProjectionMatrix();
				var customCont = document.getElementsByClassName('resultsType')[divId];
			
				gui.domElement.style.position = 'relative';
				gui.domElement.style.top = '0px';
							
				customCont.appendChild( gui.domElement);
				customCont.appendChild( renderer.domElement);
			
			

			if (initPanel){
				gui.add(camera.position,'z',0,10000);
				gui.add(camera.rotation,'x',0,8).step(.001);
				initPanel=false;
			}
			
			renderer.render( scene, camera );
            }
			

        </script>
 <!--    </body>
</html> -->
