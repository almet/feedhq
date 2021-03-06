proj = feedhq
settings = --settings=$(proj).settings
test_settings = --settings=$(proj).test_settings


test:
	django-admin.py test profiles feeds $(test_settings) --failfast --noinput

run:
	foreman start

db:
	django-admin.py syncdb --noinput $(settings)

user:
	django-admin.py createsuperuser $(settings)

shell:
	django-admin.py shell $(settings)

dbshell:
	django-admin.py dbshell $(settings)

updatefeeds:
	django-admin.py updatefeeds $(settings)
