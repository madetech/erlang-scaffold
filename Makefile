.PHONY: test
test:
	docker run --rm -i -t -v $(pwd):/src -w /src risaacson/erlang-rebar3 rebar3 eunit

.PHONY: scaffold
scaffold:
	docker run --rm -i -t -v $(pwd):/src -w /src risaacson/erlang-rebar3 rebar3 new lib .
