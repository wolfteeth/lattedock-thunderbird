async function main() {
    messenger.WindowListener.registerDefaultPrefs("defaults/preferences/prefs.js")
    messenger.WindowListener.registerChromeUrl([
        ["content", "lattedockunread", "chrome/content/"],
        ["resource", "lattedockunread", "chrome/skin/"],
        ["locale", "lattedockunread", "en-US", "chrome/locale/en-US/"],
    ]);
    messenger.WindowListener.registerOptionsPage("chrome://lattedockunread/content/options.xhtml")
    messenger.WindowListener.registerWindow(
        "chrome://messenger/content/messenger.xhtml",
        "chrome://quicktext/content/lattedockunread.js");
    messenger.WindowListener.startListening();
}

main()
