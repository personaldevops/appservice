from appservicecore.api_service import APIService, APIServiceRequest

if __name__ == "__main__":
    service_request = APIServiceRequest()
    service_request.name('app.api_service')
    service_request.port(8181)
    service_request.add_packages('appservice.api')
    APIService(request=service_request).start()
