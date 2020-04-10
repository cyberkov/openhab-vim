" Vim syntax file
" Language:             OpenHAB
" Maintainer:           Hannes Schaller <admin@cyberkov.at>
" Latest Change:        2016 Nov 7
" URL:                  https://github.com/cyberkov/openhab-vim
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

if has("folding") && exists("openhab_fold")
  setlocal foldmethod=syntax
endif

" Common
" ----------------------------------------------------------------------------

" Comments
syn match  openhabComment   "/\*\*/"
syn match  openhabComment   "\/\/.*"
syn region openhabComment   start="/\*"  end="\*/" contains=openhabTodo

syn keyword openhabTodo         contained TODO FIXME XXX
syn keyword openhabBoolean      true false

hi def link  openhabComment     Comment
hi def link  openhabTodo        Todo
hi def link  openhabBoolean     Boolean

" .items File
" ----------------------------------------------------------------------------
if &filetype=='openhab-items'
  " GroupItem
  syn  keyword openhabGroupitem Group

  " Items
  syn  keyword  openhabItem     Call Color Contact DateTime Dimmer Image Location Number Player Rollershutter String Switch

  " Group Functions
  syn  keyword  openhabGroupfunction AND OR NAND NOR AVG SUM MAX MIN

  " Labels
  syn region openhabLabel       start=+"+ end=+"+ contains=openhabLabel_var nextgroup=openhabIcon
  syn region openhabLabel_var start=+\[+ end=+\]+ contained

  " Groups
  syn region openhabGroup       start=+(+ end=+)+ contains=openhabGroup

  " Icons
  syn region openhabIcon        start=+<+ end=+>+ contains=openhabIcon

  " Bindings
  syn region openhabBinding     start=+{+ end=+}+ contains=openhabBinding_quote
  syn region openhabBinding_quote start=+"+ end=+"+ contained

  " default colors
  hi def link  openhabGroupitem           Function
  hi def link  openhabItem                String
  hi def link  openhablabel               Label
  hi def link  openhablabel_var           Special
  hi def link  openhabGroup               Function
  hi def link  openhabIcon                Include
  hi def link  openhabBinding             Macro
  hi def link  openhabBinding_quote       String
  hi def link  openhabGroupfunction       Operator
endif

" .sitemap File
" ----------------------------------------------------------------------------
if &filetype=='openhab-sitemap'
  syn  keyword openhabModel sitemap

" NonLinkableWidget
  syn keyword  openhabNonlinkwidget  Switch Selection Slider Setpoint Video Chart Webview Colorpicker Default

" LinkableWidget
  syn keyword  openhabLinkablewidget  Text Group Image Frame

" Parameters
  syn keyword  openhabParameter  name label item period refresh icon mappings minValue maxValue step switchsupport url encoding height refresh visibility valuecolor labelcolor

  syn region openhabString      start=+"+ end=+"+
  syn region openhabString      start=+\[+ end=+\]+

  " default colors
  hi def link openhabModel              Special
  hi def link openhabNonlinkwidget      Label
  hi def link openhabLinkablewidget     Label
  hi def link openhabString             String
  hi def link openhabParameter          Function
endif

" .rules File
" ----------------------------------------------------------------------------
if &filetype=='openhab-rules'
" Commands
  syn keyword  openhabCommand import var say if else switch case try catch finally println  or postUpdate sendCommand createTimer startTime endTime callScript executeCommandLine logDebug logInfo logWarn logError sendTelegram sendTweet sendMail notifyMyAndroid

" VarTypes
  syn keyword  openhabVartype Timer Number String

" Rules
  syn keyword  openhabRule rule when then end

" Trigger
  syn keyword  openhabTrigger Item Time System

" Events
  syn keyword  openhabEvents received command update changed from to

" Timer
  syn keyword  openhabTimer cron is midnight noon

" System
  syn keyword  openhabSystem started shuts down

" Parameters
  syn keyword  openhabParameter  name label item period refresh icon mappings minValue maxValue step switchsupport url height playStream setMasterVolume increaseMasterVolume decreaseMasterVolume

  syn region openhabString      start=+"+ end=+"+

" Options
  syn region openhabOption      start=+(+ end=+)+ contains=openhabOption,openhabCommand,openhabOption_quote
  syn region openhabOption_quote        start=+"+ end=+"+ contained
  syn keyword openhabCommand import var say if else postUpdate switch println case

" default colors
  hi def link openhabCommand            Function
  hi def link openhabVartype            Type
  hi def link openhabRule               Special
  hi def link openhabTrigger            Conditional
  hi def link openhabEvent              Special
  hi def link openhabTimer              Special
  hi def link openhabSystem             Special
  hi def link openhabString             String
  hi def link openhabOption             Macro
  hi def link openhabOption_quote       Label
  hi def link openhabParameter          Operator
endif

" .persist File
" ----------------------------------------------------------------------------
if &filetype=='openhab-persist'
  syn keyword openhabModel Strategies Filters Items
  syn keyword openhabConfiguration strategy strategies default filter
  syn region openhabString      start=+"+ end=+"+

" default colors
  hi def link openhabModel              Special
  hi def link openhabString             String
  hi def link openhabConfiguration      Macro
endif

" .things File
" ----------------------------------------------------------------------------
if &filetype=='openhab-things'
  syn region openhabThingConfig start=+\[+ end=+\]+ contains=openhabThingConfig_quote
  syn region openhabThingConfig_quote start=+"+ end=+"+
  syn keyword openhabThing Thing Bridge
  syn region openhabBridgeConfig start=+{+ end=+}+ contains=openhabBridgeConfig,openhabThingConfig,openhabThingConfig_quote

  hi def link openhabThingConfig        Macro
  hi def link openhabThingConfig_quote  String
  hi def link openhabThing              String
endif
