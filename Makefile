clean:
	@rm -f */version.txt
	@rm -f .coverage
	@rm -fr */__pycache__ __pycache__
	@rm -fr build dist *.dist-info *.egg-info
	@rm -fr */*.pyc

run_api:
	uvicorn api.fast:app --reload  # load web server with code auto-reload
