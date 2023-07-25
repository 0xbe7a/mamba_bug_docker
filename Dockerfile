# Use the mambaorg/micromamba image as a base
FROM mambaorg/micromamba:latest

# Define working directory
WORKDIR /home/mambauser/

COPY .condarc_root /opt/conda/.condarc
COPY .condarc_home .condarc

# Add test.sh script to the docker image
COPY test.sh test.sh

USER root

# Ensure the script is executable
RUN chmod +x test.sh

USER mambauser

# Execute the test.sh script on startup
CMD ["/home/mambauser/test.sh"]
