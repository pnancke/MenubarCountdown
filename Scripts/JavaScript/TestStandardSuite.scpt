JsOsaDAS1.001.00bplist00�Vscript_�// Demonstrates how to use these Standard Suite scripting properties://// - name// - version// - frontmost

var app = Application.currentApplication()
app.includeStandardAdditions = true

MC = Application("Menubar Countdown")

MC.activate()

MC.showStartDialog()

app.say("The name of the application is " + MC.name())
app.say("The version is " + MC.version() + ".")
if (MC.frontmost()) {
	app.say("The application is frontmost.")
} else {
	app.say("The application is not frontmost.")
}

MC.quit()
                               jscr  ��ޭ