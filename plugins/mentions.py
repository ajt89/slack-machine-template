import re

from machine.plugins.base import MachineBasePlugin
from machine.plugins.decorators import respond_to


class Mentions(MachineBasePlugin):
    @respond_to(regex=r"help")
    def question(self, msg):
        message = f"Hi {msg.at_sender}, here are my commands:\n" f"\t- help"
        msg.say(message)
