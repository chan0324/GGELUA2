-- @Author       : GGELUA
-- @Date         : 2021-12-10 10:46:42
-- @Last Modified by: baidwwy
-- @Last Modified time: 2022-01-05 05:21:12

local _ENV = require('SDL')
IMG_Init()
local GGE动画 = require('GGE.动画')
local SDL动画 = class('SDL动画', GGE动画)

function SDL动画:SDL动画(file)
    GGE动画.GGE动画(self)
    local tp = ggetype(file)
    local info
    if tp == 'string' then
        info = IMG.LoadAnimation(file)
    elseif tp == 'SDL读写' and a:取对象() then
        info = IMG.LoadAnimation_RW(a:取对象())
    elseif tp == 'SDL_RWops' then
        info = IMG.LoadAnimation_RW(a)
    end

    if info then
        self.宽度 = info.width
        self.高度 = info.height
        self:置帧率(info.delays[1] / 1000.0)
        for i, v in ipairs(info.frames) do
            self:添加帧(require('SDL.精灵')(v))
        end
    else
        error(' 载入失败')
    end
end

return SDL动画
