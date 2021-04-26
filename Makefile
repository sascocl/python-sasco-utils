all: install dist

install:
	sudo pip install -e .

dist:
	sudo python setup.py sdist

upload: dist
	twine upload dist/*

clean:
	sudo rm -rf dist sasco_utils.egg-info sasco_utils/__pycache__ sasco_utils/*.pyc
