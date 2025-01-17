local drawableSprite = require("structs.drawable_sprite")
local utils = require("utils")

local attachedWallBooster = {}

attachedWallBooster.name = "CommunalHelper/AttachedWallBooster"
attachedWallBooster.depth = 1999
attachedWallBooster.canResize = {false, true}

attachedWallBooster.placements = {
    {
        name = "right",
        placementType = "rectangle",
        data = {
            height = 8,
            left = true,
            notCoreMode = false,
            legacyBoost = true
        }
    },
    {
        name = "left",
        placementType = "rectangle",
        data = {
            height = 8,
            left = false,
            notCoreMode = false,
            legacyBoost = true
        }
    }
}

local topTexture = "objects/wallBooster/fireTop00"
local middleTexture = "objects/wallBooster/fireMid00"
local bottomTexture = "objects/wallBooster/fireBottom00"
local topTextureAlt = "objects/CommunalHelper/attachedWallBooster/fireTop00"
local bottomTextureAlt = "objects/CommunalHelper/attachedWallBooster/fireBottom00"

function attachedWallBooster.sprite(room, entity)
    local sprites = {}

    local left = entity.left
    local height = entity.height or 8
    local tileHeight = math.floor(height / 8)
    local offsetX = left and 0 or 8
    local scaleX = left and 1 or -1

    for i = 2, tileHeight - 1 do
        local middleSprite = drawableSprite.fromTexture(middleTexture, entity)

        middleSprite:addPosition(offsetX, (i - 1) * 8)
        middleSprite:setScale(scaleX, 1)
        middleSprite:setJustification(0.0, 0.0)

        table.insert(sprites, middleSprite)
    end

    local legacyBoost = entity.legacyBoost
    local topSprite = drawableSprite.fromTexture(legacyBoost and topTexture or topTextureAlt, entity)
    local bottomSprite = drawableSprite.fromTexture(legacyBoost and bottomTexture or bottomTextureAlt, entity)

    topSprite:addPosition(offsetX, 0)
    topSprite:setScale(scaleX, 1)
    topSprite:setJustification(0.0, 0.0)

    bottomSprite:addPosition(offsetX, (tileHeight - 1) * 8)
    bottomSprite:setScale(scaleX, 1)
    bottomSprite:setJustification(0.0, 0.0)

    table.insert(sprites, topSprite)
    table.insert(sprites, bottomSprite)

    return sprites
end

function attachedWallBooster.rectangle(room, entity)
    return utils.rectangle(entity.x, entity.y, 8, entity.height or 8)
end

return attachedWallBooster
