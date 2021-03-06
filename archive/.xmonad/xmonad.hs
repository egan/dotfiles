--
-- XMonad Haskell Configuration File
--
-- Written August 2009 by Egan McComb
--

import XMonad

import XMonad.Actions.CycleWS
import XMonad.Actions.FloatKeys
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.BoringWindows
import XMonad.Layout.Minimize
import XMonad.Layout.NoBorders
import XMonad.Layout.WorkspaceDir
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.EZConfig
import Control.Monad(liftM2)
import System.Exit
import qualified XMonad.StackSet as W

myTerminal = "urxvtc"

myManageHook = composeAll
		[ className =? "Animate"             --> doCenterFloat
		, className =? "MPlayer"             --> doCenterFloat
		, className =? "Xmessage"            --> doCenterFloat
		, title     =? "qiv"                 --> doCenterFloat
		, title     =? "Firefox Preferences" --> doCenterFloat
--		, className =? "Zathura"             --> viewShift "8"
		, (isFullscreen                       --> doFullFloat)
		]
--		where viewShift = doF . liftM2 (.) W.greedyView W.shift

myLayout = boringWindows $ minimize tiled ||| Mirror tiled ||| Full
	where
		tiled                = Tall nmaster delta ratio
		nmaster              = 1
		ratio                = 1/2
		delta                = 3/100

myLayoutHook = workspaceDir "~" myLayout

myXPConfig = defaultXPConfig
		{ font               = "-*-profont-*-*-*-*-10-*-*-*-*-*-iso8859-*"
		, bgColor            = "#000000"
		, fgColor            = "#e5e5e5"
		, bgHLight           = "#000000"
		, fgHLight           = "#e5e5e5"
		, height             = 13
		, promptBorderWidth  = 0
		, position           = Bottom
		}

main = do
	xmonad $ defaultConfig
		{ manageHook         = manageDocks <+> myManageHook
		, layoutHook         = avoidStruts $ smartBorders $ myLayoutHook
		, logHook            = updatePointer (Relative 0.5 0.5)
		, borderWidth        = 1
		, focusedBorderColor = "#ff0000"
		, normalBorderColor  = "#e5e5e5"
		, terminal           = myTerminal
		, modMask            = mod4Mask
		}
		`additionalKeysP`
		[ ("M-z",                     shellPrompt myXPConfig)
		, ("M-S-z",                   changeDir myXPConfig)
		, ("M-b",                     sendMessage ToggleStruts)
		, ("M-j",                     focusDown)
		, ("M-k",                     focusUp)
		, ("M-m",                     focusMaster)
		, ("M-`",                     toggleWS)
		, ("M-c",                     withFocused minimizeWindow)
		, ("M-S-c",                   sendMessage RestoreNextMinimizedWin)
		, ("M-S-q",                   kill)
		, ("M-S-<Delete>",            io (exitWith ExitSuccess))
		, ("M-<Delete>",              broadcastMessage ReleaseResources >> restart "xmonad" True)
		, ("M-x",                     spawn $ myTerminal ++ " &> /dev/null")
		, ("M-S-x",                   spawn $ myTerminal ++ " -e tmux &> /dev/null")
		, ("M-v",                     spawn $ myTerminal ++ " -e vi &> /dev/null")
		, ("M-S-v",                   spawn "exec gvim &> /dev/null")
		, ("M-i",                     spawn "exec dwb &> /dev/null")
		, ("M-S-i",                   spawn "exec firefox &> /dev/null")
		, ("M-p",                     spawn "exec zathura &> /dev/null")
		, ("M-S-p",                   ozath)
		, ("M-S-[",                   withFocused (keysMoveWindow (0,-10)))
		, ("M-S-]",                   withFocused (keysMoveWindow (0,10)))
		, ("M-[",                     withFocused (keysMoveWindow (-10,0)))
		, ("M-]",                     withFocused (keysMoveWindow (10,0)))
		, ("M-S--",                   withFocused (keysResizeWindow (0,-20)(0,0)))
		, ("M-S-=",                   withFocused (keysResizeWindow (0,20)(0,0)))
		, ("M--",                     withFocused (keysResizeWindow (-20,0)(0,0)))
		, ("M-=",                     withFocused (keysResizeWindow (20,0)(0,0)))
		, ("M-<Print>",               spawn "sleep 1 && xset s activate")
		, ("M-S-<Print>",             spawn "$HOME/bin/dpmstoggle.sh")
		, ("M-<Insert>",              spawn "xclip -o | $HOME/bin/turl &> /dev/null")
		, ("M-S-<Insert>",            spawn "xclip -o | $HOME/bin/gurl &> /dev/null")
		, ("<Print>",                 spawn "scrot -m &> /dev/null")
		, ("M1-<Print>",              spawn "sleep 1 && scrot -s &> /dev/null")
		, ("<XF86AudioMute>",         spawn "amixer -q set Master toggle")
		, ("<XF86AudioLowerVolume>",  spawn "amixer -q set Master 3%-")
		, ("<XF86AudioRaiseVolume>",  spawn "amixer -q set Master 3%+")
		, ("<XF86AudioPlay>",         mPlay "pause")
		, ("<XF86AudioPrev>",         mPlay "seek -10")
		, ("<XF86AudioNext>",         mPlay "seek 10")
		, ("<XF86TouchpadToggle>",    spawn "$HOME/bin/touchtoggle.sh")
		]
		`removeKeysP` [ "M-w", "M-S-w", "M-e", "M-S-e", "M-r", "M-S-r" ]
		where
			ozath   = spawn $ "exec $HOME/bin/openrecentpdf.sh"
			mPlay s = spawn $ "echo " ++ s ++ " > $HOME/.mplayer/pipe"
