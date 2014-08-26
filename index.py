#!/usr/bin/env python

from plugin import Plugin

def main():
    plugin = Plugin()
    plugin.initialize()
    plugin.run()
    
if __name__ == "__main__":
    main() 
