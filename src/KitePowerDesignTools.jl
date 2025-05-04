module KitePowerDesignTools

using YAML

export se

SETTINGS::String = "data/settings.yaml"

function se()
    YAML.load_file(SETTINGS)
end

end
