#!/bin/bash
IMAGE_NAME="myapp"
TAG="v1.0"
DOCKER_USER="dockerhub_user_name"
docker build -t ${IMAGE_NAME}:${TAG} /path/to/your/context 
#( use . if you are in the cureent directory where your Dockerfile is in the same direcory)
docker tag ${IMAGE_NAME}:${TAG} ${DOCKER_USER}/${IMAGE_NAME}:${TAG}
docker push ${DOCKER_USER}/${IMAGE_NAME}:${TAG}
echo "Docker Image ${IMAGE_NAME}:${TAG} has been pushed to DockerHub."


































































<<EOF
Here’s a detailed explanation of your Docker automation script:

### 1. **Shebang Line (`#!/bin/bash`)**

This line specifies the script should be run using the Bash shell. It tells the system that this script is a Bash script, and it ensures that the commands in the script will be interpreted by the Bash shell.

### 2. **Variables Declaration**

```bash
IMAGE_NAME="myapp"
TAG="v1.0"
DOCKER_USER="dockerhub_user_name"
```

- `IMAGE_NAME`: Specifies the name of the Docker image. In this case, it's `myapp`.
- `TAG`: The version tag of the image, which is `v1.0`. This tag allows you to version your Docker images.
- `DOCKER_USER`: The Docker Hub username that will be used to push the image to your Docker Hub repository. Replace this with your actual Docker Hub username.

### 3. **Building the Docker Image**

```bash
docker build -t ${IMAGE_NAME}:${TAG} /path/to/your/context
```

- **`docker build`**: This command builds a Docker image from a Dockerfile.
- **`-t`**: The `-t` flag is used to tag the image. It takes the form `image_name:tag` (e.g., `myapp:v1.0`).
- **`${IMAGE_NAME}:${TAG}`**: Refers to the image name (`myapp`) and tag (`v1.0`), making the image easily identifiable by both its name and version.
- **`/path/to/your/context`**: The build context specifies where Docker should look for the `Dockerfile` and associated files. Replace this with `.` if the `Dockerfile` is in the current directory, or provide the path if it's in another directory.

### 4. **Tagging the Docker Image**

```bash
docker tag ${IMAGE_NAME}:${TAG} ${DOCKER_USER}/${IMAGE_NAME}:${TAG}
```

- **`docker tag`**: This command creates a new tag for an existing image, which makes it easier to reference the image in different contexts.
- **`${IMAGE_NAME}:${TAG}`**: Refers to the locally built image (e.g., `myapp:v1.0`).
- **`${DOCKER_USER}/${IMAGE_NAME}:${TAG}`**: This will create a new tag for the image, associating it with your Docker Hub username. For example, if your username is `john_doe`, the tagged image will be `john_doe/myapp:v1.0`.

This step is essential to prepare the image for being pushed to your Docker Hub account.

### 5. **Pushing the Docker Image to Docker Hub**

```bash
docker push ${DOCKER_USER}/${IMAGE_NAME}:${TAG}
```

- **`docker push`**: This command pushes the tagged Docker image to a remote Docker registry (Docker Hub in this case).
- **`${DOCKER_USER}/${IMAGE_NAME}:${TAG}`**: Refers to the fully qualified image name with the Docker Hub username, image name, and tag (e.g., `dockerhub_user_name/myapp:v1.0`).

This pushes the local Docker image to the repository so it can be shared or used in other environments.

### 6. **Final Message**

```bash
echo "Docker Image ${IMAGE_NAME}:${TAG} has been pushed to Docker Hub."
```

- **`echo`**: This command prints the given message to the terminal.
- The message confirms that the Docker image has been successfully pushed to Docker Hub with the specified image name and tag.

---

### **Full Workflow Recap:**
1. **Build**: You build a Docker image from the `Dockerfile` located in the specified context.
2. **Tag**: You tag the image with your Docker Hub username and version to make it ready for pushing to Docker Hub.
3. **Push**: You push the tagged image to Docker Hub, making it publicly or privately available based on your Docker Hub account settings.
4. **Confirmation**: The script prints a success message once the image has been pushed.

This entire process is automated, allowing you to manage Docker images efficiently and integrate it into a larger CI/CD pipeline if needed.
EOF
