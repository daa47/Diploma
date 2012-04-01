default: clean bundle data_base start

clean:
	rm Gemfile.lock
	rake db:drop

bundle:
	bundle --local

data_base:
	rake db:migrate db:seed

start:
	rails s
