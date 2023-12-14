FROM lukastosic/docker-soapui
LABEL authors="jesse"

docker run -i --rm \
	-v Soap-try-soapui-project.xml:/opt/soapui/projects \
	-v tests:/opt/soapui/projects/testresult \
	lukastosic/docker-soapui \
	-e "http://demowebshop.tricentis.com/" \
	-s"Log in testing" \
	-r -j \
	-f tests\
	-I "Soap-try-soapui-project.xml"

ENTRYPOINT ["top", "-b"]
