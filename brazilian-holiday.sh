#!/usr/bin/env bash

DATA_ATUAL=$(date +"%Y-%m-%d")

# Checando conectividaade de internet antes de fazer a requsição com o curl
wget -q --spider "https://www.google.com/" && {
  curl -skX GET "https://openholidaysapi.org/PublicHolidays?countryIsoCode=BR&languageIsoCode=PT&validFrom=$DATA_ATUAL&validTo=2025-12-30" | \
  jq -r '
    .[] |
    (
      # Formatando a data de inicio dia/mês/ano + adicionando cor verde e encerrando no final
      (.startDate | split("-") | "\u001b[32m" + .[2] + "/" + .[1] + "/" + .[0] + "\u001b[0m")
      + " até " +
      # Formatando a data final dia/mês/ano + adicionando cor azul e encerrando no final
      (.endDate | split("-") | "\u001b[34m" + .[2] + "/" + .[1] + "/" + .[0] + "\u001b[0m")
      + " -> " +
      # Nome do feriado
      .name[0].text
    )
  '
  #jq -r '.[] | "\u001b[32m" + .startDate + "\u001b[0m até \u001b[34m" + .endDate + "\u001b[0m -- " + .name[0].text'
}

# Formatação final:
# ...
# 24/12/2025 até 24/12/2025 -> Véspera do Natal
# 25/12/2025 até 25/12/2025 -> Natal
