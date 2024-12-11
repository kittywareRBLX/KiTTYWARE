local FindFirstDescendant = {}

function FindFirstDescendant:FindFirstDescendant(name)
    assert(typeof(self) == "Instance", "Expected ':' to call FindFirstDescendant as a method of an Instance")

    for _, descendant in pairs(self:GetDescendants()) do
        if descendant.Name == name then
            return descendant
        end
    end

    return nil
end

return FindFirstDescendant
