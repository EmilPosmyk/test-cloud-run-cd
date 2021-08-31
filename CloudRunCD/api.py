from fastapi import FastAPI

app = FastAPI()


# https://continous-deployment-test-1-lhgwwraiga-ew.a.run.app
@app.get("/")
def root():
    return "Cloud Run Continous Delivery (CD)"