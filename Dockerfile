FROM brimstone/golang:latest-onbuild as builder

FROM scratch
COPY --from=builder /app /whatismyip
ENV LOG_LEVEL=INFO
ENTRYPOINT ["/whatismyip"]
