import XMonad
import Data.Monoid
import System.Exit

import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import XMonad.Hooks.ManageDocks

main = do
	xmobar <- spawn "xmobar /home/vital/.xmonad/xmobar.hs"
	autostart <- spawn "/home/vital/.xmonad/autostart.sh"
	xmonad $ defaultConfig
	  { terminal    = "gnome-terminal"
		, manageHook = manageDocks <+> manageHook defaultConfig
		, layoutHook = avoidStruts $ layoutHook defaultConfig
	  }


--defaults = defaultConfig {
--      -- simple stuff
--        terminal           = myTerminal,
--        focusFollowsMouse  = myFocusFollowsMouse,
--        borderWidth        = myBorderWidth,
--        modMask            = myModMask,
--        workspaces         = myWorkspaces,
--        normalBorderColor  = myNormalBorderColor,
--        focusedBorderColor = myFocusedBorderColor,
--
--      -- key bindings
--        keys               = myKeys,
--        mouseBindings      = myMouseBindings,
--
--      -- hooks, layouts
--        layoutHook         = myLayout,
--        manageHook         = myManageHook,
--        handleEventHook    = myEventHook,
--        logHook            = myLogHook,
--        startupHook        = myStartupHook
--    }
