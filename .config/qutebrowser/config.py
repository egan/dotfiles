config.load_autoconfig()

## Key bindings.
# Opening.
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('b', 'set-cmd-text -s :open -b')
config.bind('w', 'set-cmd-text -s :open -w')

config.bind('O', 'set-cmd-text :open {url}')
config.bind('T', 'set-cmd-text :open -t {url}')
config.bind('B', 'set-cmd-text :open -b {url}')
config.bind('W', 'set-cmd-text :open -w {url}')

# Tabs.
config.bind('gt', 'tab-focus')
config.bind('gC', 'tab-clone')

# Hinting.
config.bind(';f', 'hint all tab-fg')
config.bind(';w', 'hint all window')
config.bind('.i', 'hint images tab-bg')
config.bind(';t', 'hint links fill :open -t {hint-url}')
config.bind('.o', 'hint links fill :open -b {hint-url}')
config.bind(';y', 'hint links yank-primary')

# Yanking.
config.bind('yy', 'yank -s')
config.bind('yt', 'yank title')
config.bind('yd', 'yank domain')
config.bind('yD', 'yank domain -s')
config.bind('yp', 'yank pretty-url')
config.bind('yP', 'yank pretty-url -s')

# Putting.
config.bind('p', 'open -- {primary}')
config.bind('pp', 'open -- {clipboard}')

config.bind('P', 'open -t -- {primary}')
config.bind('Pp', 'open -t -- {clipboard}')

config.bind('wp', 'open -w -- {primary}')

# Quickmarks.
config.bind('go', 'set-cmd-text -s :quickmark-load')
config.bind('gn', 'set-cmd-text -s :quickmark-load -t')
config.bind('gw', 'set-cmd-text -s :quickmark-load -w')

# Bookmarks.
config.bind('M', 'bookmark-add')
config.bind('gb', 'set-cmd-text -s :bookmark-load')
config.bind('gB', 'set-cmd-text -s :bookmark-load -t')
config.bind('wB', 'set-cmd-text -s :bookmark-load -w')

# Special pages.
config.bind('Ss', 'open qute://settings')

# Navigation.
config.bind('R', 'reload -f')
config.bind('L', 'forward')

config.bind('th', 'back -t')
config.bind('tl', 'forward -t')

config.bind('wh', 'back -w')
config.bind('wl', 'forward -w')

# Modes.
config.bind('v', 'enter-mode caret')
