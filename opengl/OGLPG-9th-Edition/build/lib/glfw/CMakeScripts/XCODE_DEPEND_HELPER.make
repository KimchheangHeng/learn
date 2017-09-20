# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glfw.Debug:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a


PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.Release:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.MinSizeRel:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows


PostBuild.glfw.RelWithDebInfo:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/boing.app/Contents/MacOS/boing


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gears.app/Contents/MacOS/gears


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/particles.app/Contents/MacOS/particles


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/splitview.app/Contents/MacOS/splitview


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/wave.app/Contents/MacOS/wave


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/glfwinfo


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/msaa


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/threads.app/Contents/MacOS/threads


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/title.app/Contents/MacOS/title


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows:\
	/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a
	/bin/rm -f /Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/bin/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3.a:
/Users/huahuahu/GitHub/learn/opengl/OGLPG-9th-Edition/lib/libglfw3_d.a:
