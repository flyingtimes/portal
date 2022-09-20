import click
ver = "Beta 1.0"
@click.option('--version')
def version():
	click.echo("Portal program version %s" % ver)

if __name__ == '__main__':
	version()
