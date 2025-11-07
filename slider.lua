-- Filter images with this function if the target format is HTML
if FORMAT:match 'revealjs' then
    function Image(elem)
        local attributes = ""
        for k, v in pairs(elem.attributes) do
            if k ~= "compare" and k ~= "before" and k ~= "after" then
                attributes = attributes .. k .. "=\"" .. v .. "\" "
            end
        end

        if elem.attributes.compare == nil then
            return elem
        else
            local result = {
                pandoc.RawInline("html",
                    "<div id=\"" ..
                    elem.identifier ..
                    "\" class=\"beer-slider\" data-beer-label=\"" .. elem.attributes.before .. "\">"),
                pandoc.RawInline("html", "  <img src=\"" .. elem.src .. "\"" .. attributes .. "/>"),
                pandoc.RawInline("html",
                    "  <div class=\"beer-reveal\" data-beer-label=\"" .. elem.attributes.after .. "\">"),
                pandoc.RawInline("html", "    <img src=\"" .. elem.attributes.compare .. "\"" .. attributes .. "/>"),
                pandoc.RawInline("html", "  </div>"),
                pandoc.RawInline("html", "</div>"),
                pandoc.RawInline("html", "<script>"),
                pandoc.RawInline("html",
                    "  var slider_" ..
                    elem.identifier .. " = new BeerSlider(document.getElementById(\"" .. elem.identifier .. "\"));"),
                pandoc.RawInline("html", "</script>")
            }
            return result
        end
    end
end
