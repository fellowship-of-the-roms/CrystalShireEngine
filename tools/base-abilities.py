import requests
from bs4 import BeautifulSoup
import glob

filenames = glob.glob("../data/pokemon/base_stats/*.asm")
base_url = "https://pokemondb.net/pokedex/"

for filename in filenames:
    pokemon = filename.split("/")[4]
    pokemon = pokemon.replace(".asm", "")
    mod_url = base_url + pokemon + "/"
    
    response = requests.get(mod_url)
    request = BeautifulSoup(response.text, "html.parser")
    
    # We will always find this first ability
    abilities = str(request.findAll("span", {"class": "text-muted"}))
    ability1 = abilities.replace("[<span class=\"text-muted\">1. <a href=\"/ability/", "").replace("\"", "").replace("-","_").split(" ")[0].upper()
    
    # A second ability isn't always guaranteed...
    try:
        ability2 = abilities.split("2. ")[1].replace("<a href=\"/ability/", "").replace("\"", "").replace("-","_").split(" ")[0].upper()
    except:
        ability2 = ability1

    with open(filename, 'r', encoding='utf8') as file:
        lines = file.readlines()

    with open(filename, 'w', encoding='utf8') as file:
        for line in lines:
            if line == '\tdw NULL, NULL ; unused (beta front/back pics)\n':
                file.write("\tdb " + ability1 + ", " + ability2 + " ; wBaseAbility1, wBaseAbility2\n")
                file.write("\tdw NULL ; Padding left-over from the unused back pic\n")
            else:
                file.write(line)