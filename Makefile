IMAGES_PATH=/opt/eink-radiator/images
SLIDES_PATH=/opt/eink-radiator/slides.yaml

config.yaml: config-template.yaml
	ytt --file config-template.yaml \
		--data-value cwd=$$(pwd) \
		--data-value imagesPath="$${IMAGES_PATH}" \
		--data-value slidesPath="$${SLIDES_PATH}" > config.yaml

tools/blank: vendir.yml
	vendir sync
	mkdir -p tools
	cp components/image-source-blank/blank-arm6 tools/blank
	chmod a+x tools/blank

tools/image: vendir.yml
	vendir sync
	mkdir -p tools
	cp components/image-source-image/image-arm6 tools/image
	chmod a+x tools/image

tools/display: vendir.yml
	vendir sync
	mkdir -p tools
	ln -s components/display/main.py tools/display
	chmod a+x tools/display

tools/main: vendir.yml
	vendir sync
	mkdir -p tools
	cp components/main/eink-radiator-arm6 tools/main
	chmod a+x tools/main

start: config.yaml tools/main tools/display tools/image tools/blank
	tools/main --config config.yaml

clean:
	rm -rf components config.yaml tools