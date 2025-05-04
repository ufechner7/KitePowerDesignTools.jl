module KitePowerDesignTools

using YAML, StructTypes

export se

SETTINGS::String = "data/settings.yaml"

mutable struct DTSettings
    radius
    area
    aspect_ratio
    DTSettings() = new()
end

StructTypes.StructType(::Type{DTSettings}) = StructTypes.Mutable()

function se()
    dts = DTSettings()
    dict = YAML.load_file(SETTINGS)
    dict1 = Dict(Symbol(k) => v for (k, v) in dict["carousel"])
    dict2 = Dict(Symbol(k) => v for (k, v) in dict["kite"])
    StructTypes.constructfrom!(dts, merge(dict1, dict2))
end

end
