FROM python:3.9-slim
WORKDIR /
RUN apt update && apt -y install curl wget
# Copies the trainer code to the docker image.
COPY point /point
#port setup
EXPOSE 80
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "point.point"]
