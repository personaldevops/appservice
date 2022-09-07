from appservicecore.api_service import app


@app.get("/abc")
async def first_endpt():
    return 'Hello'
