FROM quay.io/jupyter/r-notebook:r-4.3.2

COPY environment.yml /tmp/environment.yml
RUN mamba env update -n base -f /tmp/environment.yml && mamba clean -afy

COPY .binder/postBuild /tmp/postBuild
RUN bash /tmp/postBuild
