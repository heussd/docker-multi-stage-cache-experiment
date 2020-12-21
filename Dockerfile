FROM ubuntu as stage1
WORKDIR /
RUN echo "Building stage1 🚧"
RUN sleep 10
RUN echo "Stage1 was here" >> ./file


FROM ubuntu as stage2
WORKDIR /
RUN echo "Building stage2 🚧 🚧"
RUN sleep 10
COPY --from=stage1 /file ./file
RUN echo "Stage2 was here" >> ./file

FROM ubuntu as stage3
WORKDIR /
RUN echo "Building stage3 🚧 🚧 🚧"
RUN sleep 10
COPY --from=stage2 /file ./file
RUN echo "Stage3 was here" >> ./file


FROM ubuntu as final
COPY --from=stage3 /file ./file
ENTRYPOINT [ "cat", "/file" ]