mailpile_service_dockerbunker() {
	docker run -d \
		--name=${FUNCNAME[0]//_/-} \
		--restart=always \
		--network ${NETWORK} \
		-v ${SERVICE_NAME}-data-vol-1:${volumes[${SERVICE_NAME}-data-vol-1]} \
		-p ${PORT}:${PORT} \
	${IMAGES[service]} ${COMMAND} >/dev/null
}
