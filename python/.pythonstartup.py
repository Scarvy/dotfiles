try:
    import rich
    from rich import pretty, traceback, inspect

    help = inspect
    print = rich.print
except ModuleNotFoundError:
    pass
else:
    pretty.install()
    traceback.install(show_locals=False)