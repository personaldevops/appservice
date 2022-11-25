from appservicecore.api_service import app


@app.get("/app")
async def app_main():
    return {"message": "Appservice running on port 8181"}
