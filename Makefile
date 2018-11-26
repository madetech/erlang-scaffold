USERID=$(shell id -u)
GUN=$(shell git config --global user.name)
GEA=$(shell git config --global user.email)

.PHONY: test
test:
	docker run --rm -i -t -v $(CURDIR):/src -w /src/project risaacson/erlang-rebar3 rebar3 eunit

.PHONY: scaffold
scaffold:
	docker run --rm -i -t -v $(CURDIR):/src -w /src --env GIT_USERNAME="$(GUN)" --env GIT_EMAIL="$(GEA)" risaacson/erlang-rebar3 ./scaffold.sh
	docker run --rm -i -t -v $(CURDIR):/src -w /src risaacson/erlang-rebar3 chown -R $(USERID):$(USERID) ./*

