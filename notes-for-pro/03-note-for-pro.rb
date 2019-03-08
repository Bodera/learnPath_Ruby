#!/usr/bin/env ruby
#now we will work with th Ruby GUI

#Loads the package
require "tk"

#defines a widget with the title Hello World
TkRoot.new{title "Impressive hun?"}

#starts a main loop and displays our widget
Tk.mainloop
