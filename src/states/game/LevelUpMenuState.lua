--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

LevelUpMenuState = Class { __includes = BaseState }

function LevelUpMenuState:init(HPIncrease, attackIncrease, defenseIncrease, speedIncrease,
                               hp, attack, defense, speed, callback)
    self.callback = callback

    self.levelUpMenuState = Menu {
        x = VIRTUAL_WIDTH / 2 - 96,
        y = VIRTUAL_HEIGHT / 2 - 64,
        width = 192,
        height = 128,
        hasCursor = false,
        items = {
            {
                text = 'HP: +' .. HPIncrease .. ' (' .. hp .. ')',
                onSelect = function() end
            },
            {
                text = 'Attack: +' .. attackIncrease .. ' (' .. attack .. ')',
                onSelect = function() end
            },
            {
                text = 'Defense: +' .. defenseIncrease .. ' (' .. defense .. ')',
                onSelect = function() end
            },
            {
                text = 'Speed: +' .. speedIncrease .. ' (' .. speed .. ')',
                onSelect = function() end
            }
        }
    }
end

function LevelUpMenuState:update(dt)
    if love.keyboard.wasPressed('space') or love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateStack:pop()
        self.callback()
    end
end

function LevelUpMenuState:render()
    self.levelUpMenuState:render()
end
