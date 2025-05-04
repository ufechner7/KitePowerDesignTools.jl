module KitePowerDesignTools

using YAML, StructTypes

export se, wing_span, chord

SETTINGS::String = "data/settings.yaml"

mutable struct DTSettings
    radius
    area
    aspect_ratio
    DTSettings() = new()
end

function wing_span(set::DTSettings)
    set.area/chord(set)
end

function chord(set::DTSettings)
    set.area/set.aspect_ratio
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
