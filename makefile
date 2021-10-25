PHP_VERSION ?= 8.0.12
STACK_NAME  ?= new_stack

stack:
	hygen stack new --name $(STACK_NAME)

php-cli:
	hygen php-cli new --name $(STACK_NAME) --version $(PHP_VERSION)

symfony-minimal:
	symfony new $(STACK_NAME)
	make stack
	make php-cli

clean:
	rm -rf $(STACK_NAME)