--
-- XMonad Haskell Configuration File
--
-- Written August 2009 by Egan McComb
--

import XMonad

import XMonad.Actions.FloatKeys
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Layout.WorkspaceDir
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.EZConfig
import Control.Monad(liftM2)
import qualified XMonad.StackSet as W

myTerminal = "urxvtc"

myManageHook = composeAll
		[ className			=? "Gimp"	--> doFloat
		, className			=? "MPlayer"	--> doFloat
		, className			=? "sxiv"	--> doFloat
		, className			=? "Xmessage"	--> doCenterFloat
		, className			=? "Zathura"	--> viewShift "8"
		, (isFullscreen					--> doFullFloat)
		]
		where viewShift = doF . liftM2 (.) W.greedyView W.shift

myLayoutHook = workspaceDir "~" tiled ||| Mirror tiled ||| Full
	where
		tiled				= Tall nmaster delta ratio
		nmaster				= 1
		ratio				= 1/2
		delta				= 3/100

myXPConfig = defaultXPConfig
		{ font				= "-*-profont-*-*-*-*-10-*-*-*-*-*-iso8859-*"
		, bgColor			= "#000000"
		, fgColor			= "#e5e5e5"
		, bgHLight			= "#000000"
		, fgHLight			= "#e5e5e5"
		, height			= 13
		, promptBorderWidth		= 0
		, position			= Bottom
		}

main = do
	xmonad $ defaultConfig
		{ manageHook			= manageDocks <+> myManageHook
		, layoutHook			= avoidStruts $ smartBorders $ myLayoutHook
		, logHook			= updatePointer Nearest
		, borderWidth			= 1
		, focusedBorderColor		= "#ff0000"
		, normalBorderColor		= "#e5e5e5"
		, terminal			= myTerminal
		, modMask			= mod4Mask
		}
		`additionalKeysP`
		[ ("M-z",			shellPrompt myXPConfig)
		, ("M-S-z",			changeDir myXPConfig)
		, ("M-x",			spawn $ myTerminal ++ " &> /dev/null")
		, ("M-S-x",			spawn $ myTerminal ++ " -e tmux &> /dev/null")
		, ("M-v",			spawn $ myTerminal ++ " -e vi &> /dev/null")
		, ("M-b",			sendMessage ToggleStruts)
		, ("M-i",			spawn "exec firefox &> /dev/null")
		, ("M-<U>",			withFocused (keysMoveWindow (0,-10)))
		, ("M-<D>",			withFocused (keysMoveWindow (0,10)))
		, ("M-<L>",			withFocused (keysMoveWindow (-10,0)))
		, ("M-<R>",			withFocused (keysMoveWindow (10,0)))
		, ("M-S-<U>",			withFocused (keysResizeWindow (0,-20)(0,0)))
		, ("M-S-<D>",			withFocused (keysResizeWindow (0,20)(0,0)))
		, ("M-S-<L>",			withFocused (keysResizeWindow (-20,0)(0,0)))
		, ("M-S-<R>",			withFocused (keysResizeWindow (20,0)(0,0)))
		, ("<XF86AudioMute>",		spawn "amixer -q set Master toggle")
		, ("<XF86AudioLowerVolume>",	spawn "amixer -q set Master 3%-")
		, ("<XF86AudioRaiseVolume>",	spawn "amixer -q set Master 3%+")
		, ("<XF86AudioPlay>",		mPlay "pause")
		, ("<XF86AudioPrev>",		mPlay "seek -10")
		, ("<XF86AudioNext>",		mPlay "seek 10")
		, ("<XF86MonBrightnessDown>",	spawn "sleep 1 && xset s activate")
		]
		`removeKeysP` [ "M-w", "M-S-w", "M-e", "M-S-e", "M-r", "M-S-r", "M-p", "M-S-p" ]
		where
			mPlay s = spawn $ "echo " ++ s ++ " > $HOME/.mplayer/pipe"
