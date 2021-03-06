JsOsaDAS1.001.00bplist00�Vscript_// Demonstration of using these commands://// - show start dialog// - start timer// - pause timer// - resume timer// - stop timer

var app = Application.currentApplication()
app.includeStandardAdditions = true

MC = Application("Menubar Countdown")

MC.activate()

MC.showStartDialog()

app.say("Setting up test")

MC.hours = 0
MC.minutes = 0
MC.seconds = 30
MC.displaySeconds = true
MC.announcementText = "Testing Menubar Countdown commands."

delay(2)

MC.startTimer()
app.say("Timer started.")
app.say(parseInt(MC.timeRemaining()) + " seconds remaining.")

if (MC.timerHasExpired()) {
	app.displayDialog("Timer has expired, but should not have.")
}
if (MC.timerIsPaused()) {
	app.displayDialog("Timer is paused, but should not be.")
}

delay(5)

MC.pauseTimer()
if (MC.timerIsPaused()) {
	app.say("Timer paused.")
	app.say(parseInt(MC.timeRemaining()) + " seconds remaining.")
} else {
	app.displayDialog("Timer should be paused, but is not.")
}

delay(5)

MC.resumeTimer()
if (MC.timerIsPaused()) {
	app.displayDialog("Timer should not be paused, but is.")
} else {
	app.say("Timer resumed.")
	app.say(parseInt(MC.timeRemaining()) + " seconds remaining.")
}

delay(5)

MC.stopTimer()
app.say("Timer stopped.")
app.say(parseInt(MC.timeRemaining()) + " seconds remaining.")

MC.quit()
                              # jscr  ��ޭ