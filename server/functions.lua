function GetPlayerLicense(src)
    for _, id in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(id, 1, 8) == "license:" then
            return id
        end
    end
    return nil
end

function GetCharactersForPlayer(license)
    local result = MySQL.query.await("SELECT * FROM users_characters WHERE license = ?", {license})
    local characters = {}

    for i = 1, Config.MaxCharacters do
        characters[i] = {
            firstname = "",
            lastname = "",
            dob = "",
            gender = "",
            job = "unemployed"
        }
    end

    for _, row in ipairs(result) do
        characters[row.slot] = {
            firstname = row.firstname,
            lastname = row.lastname,
            dob = row.dob,
            gender = row.gender,
            job = row.job
        }
        SetCharacterInBucket(license, row.slot, characters[row.slot])
    end

    return characters
end

function GetCharacterBySlot(license, slot)
    return GetCharacterFromBucket(license, slot)
end
