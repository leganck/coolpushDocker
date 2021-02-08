FROM alpine:latest
RUN mkdir /cp_bot
WORKDIR /cp_bot
ADD https://images.xuthus.cc/coolpush/coolpush_linux_amd64 coolpush
RUN  chmod +X coolpush && ./coolpush
EXPOSE 5700
CMD ["./coolpush"]