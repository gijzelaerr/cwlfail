
.PHONY: first first_container second second_container third third_container

all: run

clean:
	rm -rf results parent_folder

.virtualenv/:
	virtualenv -p python2 .virtualenv
	.virtualenv/bin/pip install -r requirements.txt

first_container:
	docker build -t first -f first.docker .

first: first_container
	docker run first

second_container:
	docker build -t second -f second.docker .

second: second_container
	docker run second

third_container:
	    docker build -t third -f third.docker .

third: third_container
	    docker run third

success: .virtualenv/ first_container second_container third_container
	.virtualenv/bin/cwltool --debug --enable-ext workflow.cwl

fail: .virtualenv/ first_container second_container third_container
	.virtualenv/bin/cwltool --debug --enable-ext --outdir results/ workflow.cwl

