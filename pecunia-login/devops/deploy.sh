case $1 in
  "build")

    echo "[$(basename "$PWD")] Creating compiler container..."
    
    IMAGE_NAME=$(basename "$PWD")"_build_container:latest"

    docker build . -f devops/Dockerfile_build -t $IMAGE_NAME

    docker run -v $(pwd):/home/compiler/ $IMAGE_NAME

    docker rmi $IMAGE_NAME --force
    docker rmi $(docker image ls maven -q)

    echo "[$(basename "$PWD")] compiled!"

  ;;
  "run")
  
  	echo "[$(basename "$PWD")] Deploying..."
  	    
    #docker-compose -p "microservices" up -d --force-recreate --build
    IMAGE_NAME=$(basename "$PWD")"_run_container:latest"
    docker build . -f devops/Dockerfile_run -t $IMAGE_NAME
    
    docker run -d -v $(pwd):/home/compiler/ $IMAGE_NAME
;;
esac
