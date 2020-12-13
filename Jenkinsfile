node{

	

	def app

	

	stage('Clone repository'){

	/* cloning the Repository to our Workspace*/

	gitgit 'https://github.com/SharpC15/SimpliLearnDevOpsOfficial.git' 

	}

	

	stage('Build image'){

	

	   app = docker.build("chastinj15/app1")

	   

	   

	}

	

	stage('Test image'){

	  

	  app.inside{

	      echo "Testing passed"

	  }

	}



    stage('Push image') {

	    docker.withRegistry( 'https://hub.docker.com/repositories', 'dockerhub' ) { 

                        app.push("${env.BUILD_NUMBER}")

						app.push("latest")

	

	    }

		   echo "Pushing Docker Build to DockerHub!"

	}



}
