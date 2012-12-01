import XMonad
import Data.Monoid
import System.Exit

import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig(additionalKeys)

main = do
--	xmobar <- spawn "xmobar /home/vital/.xmonad/xmobar.hs"
  autostart <- spawn "/home/vital/.xmonad/autostart.sh"
  xmonad $ ewmh defaultConfig
    { terminal    = "gnome-terminal"
    , manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    } `additionalKeys`
    [ ((0, xK_Print), spawn "scrot '/tmp/screen_%Y-%m-%d-%H%M_$wx$h.png' -e 'feh $f'")
    , ((shiftMask, xK_Print), spawn "scrot -s '/tmp/screen_part%Y-%m-%d-%H%M_$wx$h.png' -e 'feh $f'")
    , ((mod1Mask,               xK_p     ), spawn "dmenu_run -fn '-xos4-terminus-medium-*-*-*-32-*-*-*-*-*-*-*' -nb '#333333' -nf '#cccccc' -sb '#cccccc' -sf '#333333'")
    ]


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
