CharacterBucket = {}

function LoadCharacterBucket(license)
    if not CharacterBucket[license] then
        CharacterBucket[license] = {}
        for i = 1, Config.MaxCharacters do
            CharacterBucket[license][i] = nil
        end
    end
end

function SetCharacterInBucket(license, slot, data)
    LoadCharacterBucket(license)
    CharacterBucket[license][slot] = data
end

function GetCharacterFromBucket(license, slot)
    LoadCharacterBucket(license)
    return CharacterBucket[license][slot]
end

function GetAllCharactersFromBucket(license)
    LoadCharacterBucket(license)
    return CharacterBucket[license]
end
