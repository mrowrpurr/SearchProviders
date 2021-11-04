scriptName Search_SpellSearchProvider extends SearchProvider

int function PerformSearch(string query, int storeResults)
    Spell[] theSpells = PO3_SKSEFunctions.GetAllSpells(abIsPlayable = true)
    int i = 0
    while i < theSpells.Length
        Spell theSpell = theSpells[i]
        string spellName = theSpell.GetName()
        if StringUtil.Find(spellName, query) > -1
            AddSearchResult(                     \
                storeResults,                    \
                category  = "Spells with Tomes", \
                text      = spellName,           \
                formValue = theSpell             \
            )
        endIf
        i += 1
    endWhile
    return storeResults
endFunction
