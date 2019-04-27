import os
import typing


def get_config(name: str, default: str) -> str:
    """Return the default value or the value of the environment variable."""

    # useful for overriding values in production
    return os.environ[name] if name in os.environ else default


# allows us to turn off any development niceties using a environment variable
ENV = get_config('APP_ENV', 'dev')
IMPORT_ENV = get_config('APP_IMPORT_ENV', 'dev')


def get_most_similiar(item: str, possible_vals: typing.AbstractSet[str]):
    """Finds the closest matching string using a brute force approach for now it just does casing because its the easiest to get wrong"""
    for val in possible_vals:
        if val.lower() == item.lower():
            return val

    return None


def required(name: str):
    if ENV == 'production':
        if name not in os.environ:
            closest = get_most_similiar(name, os.environ.keys())
            if closest is not None:
                raise Exception('Required configuration value {} not found! Closest value: {}'.format(name, closest))
            raise Exception('Required configuration value {} not found!')
    return name