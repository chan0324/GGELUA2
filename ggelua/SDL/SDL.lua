-- @Author              : GGELUA
-- @Date                : 2021-12-15 23:37:41
-- @Last Modified by    : baidwwy
-- @Last Modified time  : 2022-02-09 08:29:01

local _ENV = setmetatable(require('gsdl2'), {__index = _G})
SDL = _ENV

--=======================================================================
-- BlendMode常用混合
--=======================================================================
BLENDMODE_NONE = 0x00000000 --/**< no blending
-- dstRGBA = srcRGBA */
BLENDMODE_BLEND = 0x00000001 --/**< alpha blending
-- dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
-- dstA = srcA + (dstA * (1-srcA)) */
BLENDMODE_ADD = 0x00000002 --/**< additive blending
-- dstRGB = (srcRGB * srcA) + dstRGB
-- dstA = dstA */
BLENDMODE_MOD = 0x00000004 --/**< color modulate
-- dstRGB = srcRGB * dstRGB
-- dstA = dstA */
BLENDMODE_MUL = 0x00000008 --/**< color multiply
-- dstRGB = (srcRGB * dstRGB) + (dstRGB * (1-srcA))
--BlendOperation混合方法
BLENDOPERATION_ADD = 0x1 --/**< dst + src: supported by all renderers */
BLENDOPERATION_SUBTRACT = 0x2 --/**< dst - src : supported by D3D9, D3D11, OpenGL, OpenGLES */
BLENDOPERATION_REV_SUBTRACT = 0x3 --/**< src - dst : supported by D3D9, D3D11, OpenGL, OpenGLES */
BLENDOPERATION_MINIMUM = 0x4 --/**< min(dst, src) : supported by D3D11 */
BLENDOPERATION_MAXIMUM = 0x5 --/**< max(dst, src) : supported by D3D11 */
--BlendFactor混合因子
BLENDFACTOR_ZERO = 0x1 --/**< 0, 0, 0, 0 */
BLENDFACTOR_ONE = 0x2 --/**< 1, 1, 1, 1 */
BLENDFACTOR_SRC_COLOR = 0x3 --/**< srcR, srcG, srcB, srcA */
BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4 --/**< 1-srcR, 1-srcG, 1-srcB, 1-srcA */
BLENDFACTOR_SRC_ALPHA = 0x5 --/**< srcA, srcA, srcA, srcA */
BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6 --/**< 1-srcA, 1-srcA, 1-srcA, 1-srcA */
BLENDFACTOR_DST_COLOR = 0x7 --/**< dstR, dstG, dstB, dstA */
BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8 --/**< 1-dstR, 1-dstG, 1-dstB, 1-dstA */
BLENDFACTOR_DST_ALPHA = 0x9 --/**< dstA, dstA, dstA, dstA */
BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA --/**< 1-dstA, 1-dstA, 1-dstA, 1-dstA */
--[[
混合生成
SDL_ComposeCustomBlendMode(
源颜色因子，目标颜色因子，颜色混合方法，  
源透明因子，目标透明因子，透明混合方法
)
]]
TEXTUREACCESS_STATIC = 0 --普通
TEXTUREACCESS_STREAMING = 1 --可以写锁定
TEXTUREACCESS_TARGET = 2 --渲染区

--=======================================================================
--Scancode扫描码
--=======================================================================
SCANCODE_UNKNOWN = 0

SCANCODE_A = 4
SCANCODE_B = 5
SCANCODE_C = 6
SCANCODE_D = 7
SCANCODE_E = 8
SCANCODE_F = 9
SCANCODE_G = 10
SCANCODE_H = 11
SCANCODE_I = 12
SCANCODE_J = 13
SCANCODE_K = 14
SCANCODE_L = 15
SCANCODE_M = 16
SCANCODE_N = 17
SCANCODE_O = 18
SCANCODE_P = 19
SCANCODE_Q = 20
SCANCODE_R = 21
SCANCODE_S = 22
SCANCODE_T = 23
SCANCODE_U = 24
SCANCODE_V = 25
SCANCODE_W = 26
SCANCODE_X = 27
SCANCODE_Y = 28
SCANCODE_Z = 29

SCANCODE_1 = 30
SCANCODE_2 = 31
SCANCODE_3 = 32
SCANCODE_4 = 33
SCANCODE_5 = 34
SCANCODE_6 = 35
SCANCODE_7 = 36
SCANCODE_8 = 37
SCANCODE_9 = 38
SCANCODE_0 = 39

SCANCODE_RETURN = 40
SCANCODE_ESCAPE = 41
SCANCODE_BACKSPACE = 42
SCANCODE_TAB = 43
SCANCODE_SPACE = 44

SCANCODE_MINUS = 45
SCANCODE_EQUALS = 46
SCANCODE_LEFTBRACKET = 47
SCANCODE_RIGHTBRACKET = 48
SCANCODE_BACKSLASH = 49 --/**< Located at the lower left of the return

SCANCODE_NONUSHASH = 50 --/**< ISO USB keyboards actually use this code

SCANCODE_SEMICOLON = 51
SCANCODE_APOSTROPHE = 52
SCANCODE_GRAVE = 53 --/**< Located in the top left corner (on both ANSI

SCANCODE_COMMA = 54
SCANCODE_PERIOD = 55
SCANCODE_SLASH = 56

SCANCODE_CAPSLOCK = 57

SCANCODE_F1 = 58
SCANCODE_F2 = 59
SCANCODE_F3 = 60
SCANCODE_F4 = 61
SCANCODE_F5 = 62
SCANCODE_F6 = 63
SCANCODE_F7 = 64
SCANCODE_F8 = 65
SCANCODE_F9 = 66
SCANCODE_F10 = 67
SCANCODE_F11 = 68
SCANCODE_F12 = 69

SCANCODE_PRINTSCREEN = 70
SCANCODE_SCROLLLOCK = 71
SCANCODE_PAUSE = 72
SCANCODE_INSERT = 73 --/**< insert on PC help on some Mac keyboards (but

SCANCODE_HOME = 74
SCANCODE_PAGEUP = 75
SCANCODE_DELETE = 76
SCANCODE_END = 77
SCANCODE_PAGEDOWN = 78
SCANCODE_RIGHT = 79
SCANCODE_LEFT = 80
SCANCODE_DOWN = 81
SCANCODE_UP = 82

SCANCODE_NUMLOCKCLEAR = 83 --/**< num lock on PC clear on Mac keyboards

SCANCODE_KP_DIVIDE = 84
SCANCODE_KP_MULTIPLY = 85
SCANCODE_KP_MINUS = 86
SCANCODE_KP_PLUS = 87
SCANCODE_KP_ENTER = 88
SCANCODE_KP_1 = 89
SCANCODE_KP_2 = 90
SCANCODE_KP_3 = 91
SCANCODE_KP_4 = 92
SCANCODE_KP_5 = 93
SCANCODE_KP_6 = 94
SCANCODE_KP_7 = 95
SCANCODE_KP_8 = 96
SCANCODE_KP_9 = 97
SCANCODE_KP_0 = 98
SCANCODE_KP_PERIOD = 99

SCANCODE_NONUSBACKSLASH = 100 --/**< This is the additional key that ISO

SCANCODE_APPLICATION = 101 --/**< windows contextual menu compose */
SCANCODE_POWER = 102 --/**< The USB document says this is a status flag

SCANCODE_KP_EQUALS = 103
SCANCODE_F13 = 104
SCANCODE_F14 = 105
SCANCODE_F15 = 106
SCANCODE_F16 = 107
SCANCODE_F17 = 108
SCANCODE_F18 = 109
SCANCODE_F19 = 110
SCANCODE_F20 = 111
SCANCODE_F21 = 112
SCANCODE_F22 = 113
SCANCODE_F23 = 114
SCANCODE_F24 = 115
SCANCODE_EXECUTE = 116
SCANCODE_HELP = 117
SCANCODE_MENU = 118
SCANCODE_SELECT = 119
SCANCODE_STOP = 120
SCANCODE_AGAIN = 121 --/**< redo */
SCANCODE_UNDO = 122
SCANCODE_CUT = 123
SCANCODE_COPY = 124
SCANCODE_PASTE = 125
SCANCODE_FIND = 126
SCANCODE_MUTE = 127
SCANCODE_VOLUMEUP = 128
SCANCODE_VOLUMEDOWN = 129

SCANCODE_KP_COMMA = 133
SCANCODE_KP_EQUALSAS400 = 134

SCANCODE_INTERNATIONAL1 = 135 --/**< used on Asian keyboards see

SCANCODE_INTERNATIONAL2 = 136
SCANCODE_INTERNATIONAL3 = 137 --/**< Yen */
SCANCODE_INTERNATIONAL4 = 138
SCANCODE_INTERNATIONAL5 = 139
SCANCODE_INTERNATIONAL6 = 140
SCANCODE_INTERNATIONAL7 = 141
SCANCODE_INTERNATIONAL8 = 142
SCANCODE_INTERNATIONAL9 = 143
SCANCODE_LANG1 = 144 --/**< Hangul/English toggle */
SCANCODE_LANG2 = 145 --/**< Hanja conversion */
SCANCODE_LANG3 = 146 --/**< Katakana */
SCANCODE_LANG4 = 147 --/**< Hiragana */
SCANCODE_LANG5 = 148 --/**< Zenkaku/Hankaku */
SCANCODE_LANG6 = 149 --/**< reserved */
SCANCODE_LANG7 = 150 --/**< reserved */
SCANCODE_LANG8 = 151 --/**< reserved */
SCANCODE_LANG9 = 152 --/**< reserved */

SCANCODE_ALTERASE = 153 --/**< Erase-Eaze */
SCANCODE_SYSREQ = 154
SCANCODE_CANCEL = 155
SCANCODE_CLEAR = 156
SCANCODE_PRIOR = 157
SCANCODE_RETURN2 = 158
SCANCODE_SEPARATOR = 159
SCANCODE_OUT = 160
SCANCODE_OPER = 161
SCANCODE_CLEARAGAIN = 162
SCANCODE_CRSEL = 163
SCANCODE_EXSEL = 164

SCANCODE_KP_00 = 176
SCANCODE_KP_000 = 177
SCANCODE_THOUSANDSSEPARATOR = 178
SCANCODE_DECIMALSEPARATOR = 179
SCANCODE_CURRENCYUNIT = 180
SCANCODE_CURRENCYSUBUNIT = 181
SCANCODE_KP_LEFTPAREN = 182
SCANCODE_KP_RIGHTPAREN = 183
SCANCODE_KP_LEFTBRACE = 184
SCANCODE_KP_RIGHTBRACE = 185
SCANCODE_KP_TAB = 186
SCANCODE_KP_BACKSPACE = 187
SCANCODE_KP_A = 188
SCANCODE_KP_B = 189
SCANCODE_KP_C = 190
SCANCODE_KP_D = 191
SCANCODE_KP_E = 192
SCANCODE_KP_F = 193
SCANCODE_KP_XOR = 194
SCANCODE_KP_POWER = 195
SCANCODE_KP_PERCENT = 196
SCANCODE_KP_LESS = 197
SCANCODE_KP_GREATER = 198
SCANCODE_KP_AMPERSAND = 199
SCANCODE_KP_DBLAMPERSAND = 200
SCANCODE_KP_VERTICALBAR = 201
SCANCODE_KP_DBLVERTICALBAR = 202
SCANCODE_KP_COLON = 203
SCANCODE_KP_HASH = 204
SCANCODE_KP_SPACE = 205
SCANCODE_KP_AT = 206
SCANCODE_KP_EXCLAM = 207
SCANCODE_KP_MEMSTORE = 208
SCANCODE_KP_MEMRECALL = 209
SCANCODE_KP_MEMCLEAR = 210
SCANCODE_KP_MEMADD = 211
SCANCODE_KP_MEMSUBTRACT = 212
SCANCODE_KP_MEMMULTIPLY = 213
SCANCODE_KP_MEMDIVIDE = 214
SCANCODE_KP_PLUSMINUS = 215
SCANCODE_KP_CLEAR = 216
SCANCODE_KP_CLEARENTRY = 217
SCANCODE_KP_BINARY = 218
SCANCODE_KP_OCTAL = 219
SCANCODE_KP_DECIMAL = 220
SCANCODE_KP_HEXADECIMAL = 221

SCANCODE_LCTRL = 224
SCANCODE_LSHIFT = 225
SCANCODE_LALT = 226 --/**< alt option */
SCANCODE_LGUI = 227 --/**< windows command (apple) meta */
SCANCODE_RCTRL = 228
SCANCODE_RSHIFT = 229
SCANCODE_RALT = 230 --/**< alt gr option */
SCANCODE_RGUI = 231 --/**< windows command (apple) meta */

SCANCODE_MODE = 257 --/**< I'm not sure if this is really not covered

SCANCODE_AUDIONEXT = 258
SCANCODE_AUDIOPREV = 259
SCANCODE_AUDIOSTOP = 260
SCANCODE_AUDIOPLAY = 261
SCANCODE_AUDIOMUTE = 262
SCANCODE_MEDIASELECT = 263
SCANCODE_WWW = 264
SCANCODE_MAIL = 265
SCANCODE_CALCULATOR = 266
SCANCODE_COMPUTER = 267
SCANCODE_AC_SEARCH = 268
SCANCODE_AC_HOME = 269
SCANCODE_AC_BACK = 270
SCANCODE_AC_FORWARD = 271
SCANCODE_AC_STOP = 272
SCANCODE_AC_REFRESH = 273
SCANCODE_AC_BOOKMARKS = 274

SCANCODE_BRIGHTNESSDOWN = 275
SCANCODE_BRIGHTNESSUP = 276
SCANCODE_DISPLAYSWITCH = 277 --/**< display mirroring/dual display
SCANCODE_KBDILLUMTOGGLE = 278
SCANCODE_KBDILLUMDOWN = 279
SCANCODE_KBDILLUMUP = 280
SCANCODE_EJECT = 281
SCANCODE_SLEEP = 282

SCANCODE_APP1 = 283
SCANCODE_APP2 = 284

SCANCODE_AUDIOREWIND = 285
SCANCODE_AUDIOFASTFORWARD = 286

NUM_SCANCODES = 512 --/**< not a key just marks the number of scancodes

--=======================================================================
--SDL_Keycode键码
--=======================================================================
local byte = string.byte
local function SDL_SCANCODE_TO_KEYCODE(X)
    return X | (1 << 30)
end
KEY_UNKNOWN = 0

KEY_ENTER = byte('\r') --回车
KEY_RETURN = byte('\r') --回车
KEY_ESCAPE = byte('\27') --ESC
KEY_BACKSPACE = byte('\b') --退格
KEY_TAB = byte('\t')
KEY_SPACE = byte(' ') --空格
KEY_EXCLAIM = byte('!')
KEY_QUOTEDBL = byte('"')
KEY_HASH = byte('#')
KEY_PERCENT = byte('%')
KEY_DOLLAR = byte('$')
KEY_AMPERSAND = byte('&')
KEY_QUOTE = byte("'")
KEY_LEFTPAREN = byte('(')
KEY_RIGHTPAREN = byte(')')
KEY_ASTERISK = byte('*')
KEY_PLUS = byte('+')
KEY_COMMA = byte('')
KEY_MINUS = byte('-')
KEY_PERIOD = byte('.')
KEY_SLASH = byte('/')
KEY_0 = byte('0')
KEY_1 = byte('1')
KEY_2 = byte('2')
KEY_3 = byte('3')
KEY_4 = byte('4')
KEY_5 = byte('5')
KEY_6 = byte('6')
KEY_7 = byte('7')
KEY_8 = byte('8')
KEY_9 = byte('9')
KEY_COLON = byte(':')
KEY_SEMICOLON = byte(';')
KEY_LESS = byte('<')
KEY_EQUALS = byte('=')
KEY_GREATER = byte('>')
KEY_QUESTION = byte('?')
KEY_AT = byte('@')

KEY_LEFTBRACKET = byte('[')
KEY_BACKSLASH = byte('\\')
KEY_RIGHTBRACKET = byte(']')
KEY_CARET = byte('^')
KEY_UNDERSCORE = byte('_')
KEY_BACKQUOTE = byte('`')

KEY_A = byte('a')
KEY_B = byte('b')
KEY_C = byte('c')
KEY_D = byte('d')
KEY_E = byte('e')
KEY_F = byte('f')
KEY_G = byte('g')
KEY_H = byte('h')
KEY_I = byte('i')
KEY_J = byte('j')
KEY_K = byte('k')
KEY_L = byte('l')
KEY_M = byte('m')
KEY_N = byte('n')
KEY_O = byte('o')
KEY_P = byte('p')
KEY_Q = byte('q')
KEY_R = byte('r')
KEY_S = byte('s')
KEY_T = byte('t')
KEY_U = byte('u')
KEY_V = byte('v')
KEY_W = byte('w')
KEY_X = byte('x')
KEY_Y = byte('y')
KEY_Z = byte('z')
KEY_CAPSLOCK = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CAPSLOCK)

KEY_F1 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F1)
KEY_F2 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F2)
KEY_F3 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F3)
KEY_F4 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F4)
KEY_F5 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F5)
KEY_F6 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F6)
KEY_F7 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F7)
KEY_F8 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F8)
KEY_F9 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F9)
KEY_F10 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F10)
KEY_F11 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F11)
KEY_F12 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F12)

KEY_PRINTSCREEN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PRINTSCREEN)
KEY_SCROLLLOCK = SDL_SCANCODE_TO_KEYCODE(SCANCODE_SCROLLLOCK)
KEY_PAUSE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PAUSE)
KEY_INSERT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_INSERT)
KEY_HOME = SDL_SCANCODE_TO_KEYCODE(SCANCODE_HOME)
KEY_PAGEUP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PAGEUP)
KEY_DELETE = byte('\177')
KEY_END = SDL_SCANCODE_TO_KEYCODE(SCANCODE_END)
KEY_PAGEDOWN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PAGEDOWN)
KEY_RIGHT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RIGHT) --右
KEY_LEFT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_LEFT) --左
KEY_DOWN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_DOWN) --下
KEY_UP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_UP) --上
--小键盘
KEY_NUMLOCKCLEAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_NUMLOCKCLEAR)
KEY_KP_DIVIDE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_DIVIDE)
KEY_KP_MULTIPLY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MULTIPLY)
KEY_KP_MINUS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MINUS)
KEY_KP_PLUS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_PLUS)
KEY_KP_ENTER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_ENTER)
KEY_KP_1 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_1)
KEY_KP_2 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_2)
KEY_KP_3 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_3)
KEY_KP_4 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_4)
KEY_KP_5 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_5)
KEY_KP_6 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_6)
KEY_KP_7 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_7)
KEY_KP_8 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_8)
KEY_KP_9 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_9)
KEY_KP_0 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_0)
KEY_KP_PERIOD = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_PERIOD)

KEY_APPLICATION = SDL_SCANCODE_TO_KEYCODE(SCANCODE_APPLICATION)
KEY_POWER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_POWER)
KEY_KP_EQUALS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_EQUALS)
KEY_F13 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F13)
KEY_F14 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F14)
KEY_F15 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F15)
KEY_F16 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F16)
KEY_F17 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F17)
KEY_F18 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F18)
KEY_F19 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F19)
KEY_F20 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F20)
KEY_F21 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F21)
KEY_F22 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F22)
KEY_F23 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F23)
KEY_F24 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_F24)
KEY_EXECUTE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_EXECUTE)
KEY_HELP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_HELP)
KEY_MENU = SDL_SCANCODE_TO_KEYCODE(SCANCODE_MENU)
KEY_SELECT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_SELECT)
KEY_STOP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_STOP)
KEY_AGAIN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AGAIN)
KEY_UNDO = SDL_SCANCODE_TO_KEYCODE(SCANCODE_UNDO)
KEY_CUT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CUT)
KEY_COPY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_COPY)
KEY_PASTE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PASTE)
KEY_FIND = SDL_SCANCODE_TO_KEYCODE(SCANCODE_FIND)
KEY_MUTE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_MUTE)
KEY_VOLUMEUP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_VOLUMEUP)
KEY_VOLUMEDOWN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_VOLUMEDOWN)
KEY_KP_COMMA = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_COMMA)
KEY_KP_EQUALSAS400 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_EQUALSAS400)

KEY_ALTERASE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_ALTERASE)
KEY_SYSREQ = SDL_SCANCODE_TO_KEYCODE(SCANCODE_SYSREQ)
KEY_CANCEL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CANCEL)
KEY_CLEAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CLEAR)
KEY_PRIOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_PRIOR)
KEY_RETURN2 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RETURN2)
KEY_SEPARATOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_SEPARATOR)
KEY_OUT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_OUT)
KEY_OPER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_OPER)
KEY_CLEARAGAIN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CLEARAGAIN)
KEY_CRSEL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CRSEL)
KEY_EXSEL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_EXSEL)

KEY_KP_00 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_00)
KEY_KP_000 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_000)
KEY_THOUSANDSSEPARATOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_THOUSANDSSEPARATOR)
KEY_DECIMALSEPARATOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_DECIMALSEPARATOR)
KEY_CURRENCYUNIT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CURRENCYUNIT)
KEY_CURRENCYSUBUNIT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CURRENCYSUBUNIT)
KEY_KP_LEFTPAREN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_LEFTPAREN)
KEY_KP_RIGHTPAREN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_RIGHTPAREN)
KEY_KP_LEFTBRACE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_LEFTBRACE)
KEY_KP_RIGHTBRACE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_RIGHTBRACE)
KEY_KP_TAB = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_TAB)
KEY_KP_BACKSPACE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_BACKSPACE)
KEY_KP_A = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_A)
KEY_KP_B = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_B)
KEY_KP_C = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_C)
KEY_KP_D = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_D)
KEY_KP_E = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_E)
KEY_KP_F = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_F)
KEY_KP_XOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_XOR)
KEY_KP_POWER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_POWER)
KEY_KP_PERCENT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_PERCENT)
KEY_KP_LESS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_LESS)
KEY_KP_GREATER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_GREATER)
KEY_KP_AMPERSAND = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_AMPERSAND)
KEY_KP_DBLAMPERSAND = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_DBLAMPERSAND)
KEY_KP_VERTICALBAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_VERTICALBAR)
KEY_KP_DBLVERTICALBAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_DBLVERTICALBAR)
KEY_KP_COLON = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_COLON)
KEY_KP_HASH = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_HASH)
KEY_KP_SPACE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_SPACE)
KEY_KP_AT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_AT)
KEY_KP_EXCLAM = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_EXCLAM)
KEY_KP_MEMSTORE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMSTORE)
KEY_KP_MEMRECALL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMRECALL)
KEY_KP_MEMCLEAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMCLEAR)
KEY_KP_MEMADD = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMADD)
KEY_KP_MEMSUBTRACT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMSUBTRACT)
KEY_KP_MEMMULTIPLY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMMULTIPLY)
KEY_KP_MEMDIVIDE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_MEMDIVIDE)
KEY_KP_PLUSMINUS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_PLUSMINUS)
KEY_KP_CLEAR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_CLEAR)
KEY_KP_CLEARENTRY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_CLEARENTRY)
KEY_KP_BINARY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_BINARY)
KEY_KP_OCTAL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_OCTAL)
KEY_KP_DECIMAL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_DECIMAL)
KEY_KP_HEXADECIMAL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KP_HEXADECIMAL)

KEY_LCTRL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_LCTRL)
KEY_LSHIFT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_LSHIFT)
KEY_LALT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_LALT)
KEY_LGUI = SDL_SCANCODE_TO_KEYCODE(SCANCODE_LGUI)
KEY_RCTRL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RCTRL)
KEY_RSHIFT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RSHIFT)
KEY_RALT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RALT)
KEY_RGUI = SDL_SCANCODE_TO_KEYCODE(SCANCODE_RGUI)

KEY_MODE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_MODE)

KEY_AUDIONEXT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIONEXT)
KEY_AUDIOPREV = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOPREV)
KEY_AUDIOSTOP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOSTOP)
KEY_AUDIOPLAY = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOPLAY)
KEY_AUDIOMUTE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOMUTE)
KEY_MEDIASELECT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_MEDIASELECT)
KEY_WWW = SDL_SCANCODE_TO_KEYCODE(SCANCODE_WWW)
KEY_MAIL = SDL_SCANCODE_TO_KEYCODE(SCANCODE_MAIL)
KEY_CALCULATOR = SDL_SCANCODE_TO_KEYCODE(SCANCODE_CALCULATOR)
KEY_COMPUTER = SDL_SCANCODE_TO_KEYCODE(SCANCODE_COMPUTER)
KEY_AC_SEARCH = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_SEARCH)
KEY_AC_HOME = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_HOME)
KEY_AC_BACK = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_BACK)
KEY_AC_FORWARD = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_FORWARD)
KEY_AC_STOP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_STOP)
KEY_AC_REFRESH = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_REFRESH)
KEY_AC_BOOKMARKS = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AC_BOOKMARKS)

KEY_BRIGHTNESSDOWN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_BRIGHTNESSDOWN)
KEY_BRIGHTNESSUP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_BRIGHTNESSUP)
KEY_DISPLAYSWITCH = SDL_SCANCODE_TO_KEYCODE(SCANCODE_DISPLAYSWITCH)
KEY_KBDILLUMTOGGLE = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KBDILLUMTOGGLE)
KEY_KBDILLUMDOWN = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KBDILLUMDOWN)
KEY_KBDILLUMUP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_KBDILLUMUP)
KEY_EJECT = SDL_SCANCODE_TO_KEYCODE(SCANCODE_EJECT)
KEY_SLEEP = SDL_SCANCODE_TO_KEYCODE(SCANCODE_SLEEP)
KEY_APP1 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_APP1)
KEY_APP2 = SDL_SCANCODE_TO_KEYCODE(SCANCODE_APP2)

KEY_AUDIOREWIND = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOREWIND)
KEY_AUDIOFASTFORWARD = SDL_SCANCODE_TO_KEYCODE(SCANCODE_AUDIOFASTFORWARD)
--=======================================================================
--SDL_Keymod功能键
--=======================================================================
KMOD_NONE = 0x0000
KMOD_LSHIFT = 0x0001
KMOD_RSHIFT = 0x0002
KMOD_LCTRL = 0x0040
KMOD_RCTRL = 0x0080
KMOD_LALT = 0x0100
KMOD_RALT = 0x0200
KMOD_LGUI = 0x0400
KMOD_RGUI = 0x0800
KMOD_NUM = 0x1000
KMOD_CAPS = 0x2000
KMOD_MODE = 0x4000
KMOD_RESERVED = 0x8000
KMOD_CTRL = (KMOD_LCTRL | KMOD_RCTRL)
KMOD_SHIFT = (KMOD_LSHIFT | KMOD_RSHIFT)
KMOD_ALT = (KMOD_LALT | KMOD_RALT)
KMOD_GUI = (KMOD_LGUI | KMOD_RGUI)

WINDOWEVENT_NONE = 0 --无
WINDOWEVENT_SHOWN = 1 --显示
WINDOWEVENT_HIDDEN = 2 --隐藏
WINDOWEVENT_EXPOSED = 3 --可见
WINDOWEVENT_MOVED = 4 --移动
WINDOWEVENT_RESIZED = 5 --调整大小
WINDOWEVENT_SIZE_CHANGED = 6 --更改大小
WINDOWEVENT_MINIMIZED = 7 --最小化
WINDOWEVENT_MAXIMIZED = 8 --最大化
WINDOWEVENT_RESTORED = 9 --恢复
WINDOWEVENT_ENTER = 10 --鼠标进入
WINDOWEVENT_LEAVE = 11 --鼠标离开
WINDOWEVENT_FOCUS_GAINED = 12 --获得焦点
WINDOWEVENT_FOCUS_LOST = 13 --失去焦点
WINDOWEVENT_CLOSE = 14 --关闭
WINDOWEVENT_TAKE_FOCUS = 15 --,     /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore) */
WINDOWEVENT_HIT_TEST = 16 --        /**< Window had a hit test that wasn't SDL_HITTEST_NORMAL. */

-- 窗口_获得焦点 = 12 --WINDOWEVENT_FOCUS_GAINED
-- 窗口_失去焦点 = 13 --WINDOWEVENT_FOCUS_LOST
-- 窗口_关闭 = 14 --WINDOWEVENT_CLOSE
-- 窗口_拖放文件 = 0x1000
-- 状态_按下 = 1--SDL_PRESSED
-- 状态_弹起 = 0--SDL_RELEASED

MOUSE_MOTION = 0x400
MOUSE_DOWN = 0x401
MOUSE_UP = 0x402
MOUSE_WHEEL = 0x403

BUTTON_LEFT = 1 --左键
BUTTON_MIDDLE = 2 --中键
BUTTON_RIGHT = 3 --右键
BUTTON_X1 = 4
BUTTON_X2 = 5

--长按state
local function SDL_BUTTON(X)
    return 1 << (X - 1)
end
BUTTON_LMASK = SDL_BUTTON(BUTTON_LEFT)
BUTTON_MMASK = SDL_BUTTON(BUTTON_MIDDLE)
BUTTON_RMASK = SDL_BUTTON(BUTTON_RIGHT)
BUTTON_X1MASK = SDL_BUTTON(BUTTON_X1)
BUTTON_X2MASK = SDL_BUTTON(BUTTON_X2)

if not Init() then --SDL_INIT_EVERYTHING
    gge.messagebox(GetError(), 'Init')
end

function IMG_Init()
    if not IMG then
        IMG = require('gsdl2.image')
        if not IMG.Init() then
            gge.messagebox(GetError(), 'Init')
        end
    end
    return IMG
end

function MIX_Init()
    if not MIX then
        MIX = require('gsdl2.mixer')
        if not MIX.Init() then
            gge.messagebox(GetError(), 'Init')
        end
        MIX.OpenAudio(48000, 0x8010, 2, 2048)
    --MIX.AllocateChannels(16)--最大播放数
    --print(MIX.QuerySpec())--取信息
    end
end

function TTF_Init()
    TTF = require('gsdl2.ttf')
    TTF.Init()
end

读入文件 = LoadFile
function WriteFile(path, data)
    local file = RWFromFile(path, 'wb')
    if file then
        file:RWwrite(data)
        file:RWclose()
        return true
    end
    return false
end
写出文件 = WriteFile

local pairs = pairs
local ipairs = ipairs
local unpack = table.unpack
local floor = math.floor

--SDL.EventState(513,true)--SDL_SYSWMEVENT
_wins = {} --setmetatable({}, {__mode="v"});
_sfs = setmetatable({}, {__mode = 'kv'})
_mixs = setmetatable({}, {__mode = 'kv'})
_ttfs = setmetatable({}, {__mode = 'kv'})
_ft = 0 --帧率
local _fps = 0
FPS = 0
local _userevents = {}
function RegisterUserEvent(fun) --用户事件
    if type(fun) == 'function' then
        local id = SDL.RegisterEvents()
        _userevents[id] = fun
        return id
    end
end
local _hookevents = setmetatable({}, {__mode = 'kv'})
function AddEventHook(fun)
    if type(fun) == 'function' then
        _hookevents[fun] = fun
        return fun
    end
end
local function checkhook(e)
    for k, v in pairs(_hookevents) do
        if v(e) then
            return false
        end
    end
    return true
end
local Frequency = GetPerformanceFrequency()
local GetPerformanceCounter = GetPerformanceCounter
local dt, ft, ct, lt = 0, 0, 0, GetPerformanceCounter()

local e, x, y = CreateEvent(), 0, 0
local PollEvent = e.PollEvent
local GetEvent = e.GetEvent
local delay = assert(gge and gge.delay)

AddTimer(
    1000,
    function(time)
        FPS = _fps
        _fps = 0
        return time
    end
)

function _G.main()
    while true do
        while PollEvent(e) do
            if checkhook(e) then
                local t = GetEvent(e)
                local win = _wins[t.windowID]
                if win then
                    if win:_Event(t.type, unpack(t)) then
                        return true
                    end
                    if t.type == 0x400 then
                        win.x, win.y = t.x, t.y
                    end
                elseif _userevents[t.type] then --用户消息
                    assert(pcall(_userevents[t.type], t.code, t.data1, t.data2))
                else
                    for _, v in pairs(_wins) do
                        v:_Event(t.type, unpack(t))
                    end
                end
            end
        end

        ct = GetPerformanceCounter()
        dt = (ct - lt) / Frequency --一帧+睡眠时间
        lt = ct
        for _, v in pairs(_wins) do
            if v:_Event(nil, dt, v.x, v.y) == true then
                return true
            end
        end
        ft = (GetPerformanceCounter() - lt) / Frequency --一帧所需时间
        _fps = _fps + 1

        if ft < _ft then
            delay(floor((_ft - ft) * 1000))
        else
            delay(0)
        end
    end
end

return _ENV
