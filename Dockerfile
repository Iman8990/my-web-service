FROM alpine:latest
RUN apk add --no-cache curl unzip && curl -L -H "Cache-Control: no-cache" -o x.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && unzip x.zip && chmod +x xray
COPY config.json config.json
CMD ["./xray", "-config", "config.json"]
