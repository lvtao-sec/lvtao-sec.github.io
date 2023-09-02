all:
	export SSL_CERT_FILE=$(shell pwd)/cacert.pem
	bundle exec jekyll build
	bundle exec jekyll liveserve --incremental
	rm .jekyll-metadata Gemfile.lock

clean:
	rm .jekyll-metadata Gemfile.lock
