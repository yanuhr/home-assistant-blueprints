# home-assistant-blueprints
My Home Assistant Blueprints
# 🪟 Adaptívne tienenie - Home Assistant Blueprint

Automatické ovládanie roliet pre viacero miestností na základe jedného senzora osvetlenia.

Zohľadňuje:
- otváranie ráno, ak je dostatočne svetlo
- zatváranie večer, ak je málo svetla a okno je zatvorené
- upozornenie, ak je okno otvorené pri stmievaní
- zamedzenie otvorenia po západe slnka
- zdieľaný senzor osvetlenia pre všetky miestnosti

## 📥 Import do Home Assistant

1. Otvorte **Home Assistant → Nastavenia → Automations & Scenes → Blueprints**
2. Kliknite **Import Blueprint**
3. Vložte URL: https://raw.githubusercontent.com/<yourusername>/home-assistant-blueprints/main/blueprints/automation/<yourusername>/adaptive_shading.yaml
4. Nahradiť `<yourusername>` vaším GitHub používateľským menom.

## ⚙️ Konfigurácia

Po importe zadajte:

- **Senzor osvetlenia** – spoločný svetelný senzor (napr. `sensor.senzor_osvetlenia_exterier`)
- **Miestnosti a zariadenia** – napr.:
  ```yaml
  - name: Obývačka
    window_sensor: binary_sensor.okno_obyvacka
    cover: cover.roleta_obyvacka
  - name: Spálňa
    window_sensor: binary_sensor.okno_spalna
    cover: cover.roleta_spalna

