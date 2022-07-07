<?php

return [
    'auth' => [
        'title' => 'Ylläpitoalue'
    ],
    'field' => [
        'invalid_type' => 'Kentän tyyppi :type ei ole sallittu.',
        'options_method_invalid_model' => "Attribuutti ':field' ratkaise kelvollista mallia. Spesifioit vaihtoehtoinen metodi mallille :model explisiittisesti.",
        'options_method_not_exists' => "Luokan :model täytyy määritellä metodi :method(), joka palauttaa ':field' lomakekentän ehdot."
    ],
    'widget' => [
        'not_registered' => "Vimpaimen luokan nimi ':name' ei ole rekisteröity",
        'not_bound' => "Vimpaimen luokkaa nimellä ':name' ei ole löydetty ohjaimeen"
    ],
    'page' => [
        'untitled' => 'Nimetön',
        'access_denied' => [
            'label' => 'Pääsy kielletty',
            'help' => "Sinulla ei ole tarvittavia oikeuksia tälle sivulle.",
            'cms_link' => 'Palaa ylläpitopuolelle'
        ],
        'no_database' => [
            'label' => 'Tietokanta puuttuu',
            'help' => "Tietokanta on pakollinen. Varmista, että tietokanta on olemassa ja pystyssä kunnes kokeilet uudelleen.",
            'cms_link' => 'Palaa kotisivulle'
        ],
    ],
    'partial' => [
        'not_found_name' => "Osiota ':name' ei löydy."
    ],
    'account' => [
        'signed_in_as' => 'Kirjauduit nimellä :full_name',
        'sign_out' => 'Kirjaudu ulos',
        'login' => 'Kirjaudu',
        'reset' => 'Nollaa',
        'restore' => 'Palauta',
        'login_placeholder' => 'tunnus',
        'password_placeholder' => 'salasana',
        'remember_me' => 'Pysy kirjautuneena',
        'forgot_password' => 'Unohditko salasanasi?',
        'enter_email' => 'Kirjoita sähköpostiosoitteesi',
        'enter_login' => 'Kirjautumisesi',
        'email_placeholder' => 'sähköposti',
        'enter_new_password' => 'Anna uusi salasana',
        'password_reset' => 'Salasanan nollaus',
        'restore_success' => 'Viesti on lähetetty sähköpostiosoitteeseesi. Seuraa ohjeita.',
        'reset_success' => 'Salasana nollattu. Voit kirjautua nyt sisään.',
        'reset_error' => 'Virheellinen salasanan nollausdata. Ole hyvä ja yritä uudelleen!',
        'reset_fail' => 'Salasanaasi ei voida nollata!',
        'apply' => 'Käytä',
        'cancel' => 'Peruuta',
        'delete' => 'Poista',
        'ok' => 'OK'
    ],
    'dashboard' => [
        'menu_label' => 'Dashboard',
        'widget_label' => 'Vimpain',
        'widget_width' => 'Leveys',
        'full_width' => 'täysleveä',
        'manage_widgets' => 'Hallinnoi vimpaimia',
        'add_widget' => 'Lisää vimpain',
        'widget_inspector_title' => 'Vimpainten konfigurointi',
        'widget_inspector_description' => 'Konfiguroi raporttivimpain',
        'widget_columns_label' => 'Leveys :columns',
        'widget_columns_description' => 'Vimpaimen leveys, numero 1 ja 10 väliltä.',
        'widget_columns_error' => 'Anna vimpaimen leveys numeerisena 1–10 väliltä.',
        'columns' => '{1} palsta|[2,Inf] palstaa',
        'widget_new_row_label' => 'Pakota uusi rivi',
        'widget_new_row_description' => 'Laita vimpain uudelle riville.',
        'widget_title_label' => 'Vimpaimen nimi',
        'widget_title_error' => 'Vimpaimen nimi on pakollinen.',
        'reset_layout' => 'Nollaa ulkoasu',
        'reset_layout_confirm' => 'Palauta oletusulkoasu?',
        'reset_layout_success' => 'Ulkoasu on palautettu',
        'make_default' => 'Aseta oletukseksi',
        'make_default_confirm' => 'Tee nykyisestä ulkoasusta oletus?',
        'make_default_success' => 'Nykyinen ulkoasu on nyt oletus',
        'collapse_all' => 'Kutista kaikki',
        'expand_all' => 'Laajenna kaikki',
        'status' => [
            'widget_title_default' => 'Järjestelmän tila',
            'update_available' => '{0} päivitystä saatavilla!|{1} päivitys saatavilla!|[2,Inf] päivitystä saatavilla!',
            'updates_pending' => 'Odottavat ohjelmistopäivitykset',
            'updates_nil' => 'Ohjelmisto on ajantasalla',
            'updates_link' => 'Päivitä',
            'warnings_pending' => 'Muutama asia vaatii huomiotasi',
            'warnings_nil' => 'Ei varoituksia näytettäväksi',
            'warnings_link' => 'Näytä',
            'core_build' => 'Järjestelmän versio',
            'event_log' => 'Tapahtumaloki',
            'request_log' => 'Pyyntöloki',
            'app_birthday' => 'Linjoilla alkaen',
        ],
        'welcome' => [
            'widget_title_default' => 'Tervetuloa',
            'welcome_back_name' => 'Tervetuloa takaisin :app, :name.',
            'welcome_to_name' => 'Tervetuloa takaisin :app, :name.',
            'first_sign_in' => 'Tämä on ensimmäinen kirjautumisesi.',
            'last_sign_in' => 'Viimeisin kirjautumisesi',
            'view_access_logs' => 'Tarkastele kirjautumislokiasi',
            'nice_message' => 'Hauskaa päivää!',
        ]
    ],
    'user' => [
        'name' => 'Ylläpitäjä',
        'menu_label' => 'Ylläpitäjät',
        'menu_description' => 'Hallinnoi ylläpitäjiä, ryhmiä ja oikeuksia.',
        'list_title' => 'Hallinnoi ylläpitäjiä',
        'new' => 'Uusi Ylläpitäjä',
        'login' => 'Kirjautumistunnus',
        'first_name' => 'Etunimi',
        'last_name' => 'Sukunimi',
        'full_name' => 'Koko nimi',
        'email' => 'Sähköposti',
        'role_field' => 'Rooli',
        'role_comment' => 'Rooli määrittelee käyttöoikeustason, joka voidaan yliajaa käyttäjätasolla Oikeudet välilehdellä.',
        'groups' => 'Ryhmät',
        'groups_comment' => 'Valitse ryhmät, joihin tilin tulisi kuulua. Ryhmät määrittelevät oikeudet, jotka voidaan yliajaa käyttäjäkohtaisesti Oikeudet välilehdeltä.',
        'avatar' => 'Avatar',
        'password' => 'Salasana',
        'password_confirmation' => 'Vahvista salasana',
        'permissions' => 'Oikeudet',
        'account' => 'Tili',
        'superuser' => 'Superkäyttäjä',
        'superuser_comment' => 'Anna tilille rajoittamattomat pääkäyttäjän oikeudet. Pääkäyttäjä voi hallinnoida käyttäjiä. ',
        'send_invite' => 'Lähetä kutsu sähköpostitse',
        'send_invite_comment' => 'Lähetä tervetuloviesti kirjautumistiedoilla.',
        'delete_confirm' => 'Poista tämä ylläpitäjä?',
        'return' => 'Palaa ylläpitäjälistaukseen',
        'allow' => 'Salli',
        'inherit' => 'Periytä',
        'deny' => 'Kiellä',
        'activated' => 'Aktivoitu',
        'last_login' => 'Viimeisin kirjautuminen',
        'created_at' => 'Luontipäivä',
        'updated_at' => 'Päivityspäiväys',
        'group' => [
            'name' => 'Ryhmä',
            'name_comment' => 'Nimi näytetään ryhmän listauksessa Luo/Muokkaa ylläpitolomakkeella.',
            'name_field' => 'Nimi',
            'description_field' => 'Kuvaus',
            'is_new_user_default_field_label' => 'Oletusryhmä',
            'is_new_user_default_field_comment' => 'Lisää uudet ylläpitäjät tähän ryhmään automaattisesti',
            'code_field' => 'Koodi',
            'code_comment' => 'Lisää uniikkikoodi jolla päästään ryhmäobjektin API:in.',
            'menu_label' => 'Hallinnoi ryhmiä',
            'list_title' => 'Hallinnoi ryhmiä',
            'new' => 'Uusi ryhmä',
            'delete_confirm' => 'Poista tämä ylläpitoryhmä?',
            'return' => 'Palaa ryhmälistaukseen',
            'users_count' => 'Käyttäjät'
        ],
        'role' => [
            'name' => 'Rooli',
            'name_field' => 'Nimi',
            'name_comment' => 'Nimi näytetään roolilistauksessa Hallintalomakkeella.',
            'description_field' => 'Kuvaus',
            'code_field' => 'Koodi',
            'code_comment' => 'Anna uniikkikoodi, mikäli haluat päästä kiinni API:n kautta rooli objektiin.',
            'menu_label' => 'Hallitse Rooleja',
            'list_title' => 'Hallitse Rooleja',
            'new' => 'Uusi Rooli',
            'delete_confirm' => 'Poista tämä hallintarooli?',
            'return' => 'Palaa roolilistaukseen',
            'users_count' => 'Käyttäjät'
        ],
        'preferences' => [
            'not_authenticated' => 'Sallittua käyttäjää, joka voisi tallentaa asetukset, ei löydy.'
        ]
    ],
    'list' => [
        'default_title' => 'Lista',
        'search_prompt' => 'Etsi...',
        'no_records' => 'Ei tietueita tässä näkymässä.',
        'missing_model' => 'Luokalle :class ei löydy mallia.',
        'missing_column' => 'Sarakkeille :columns ei ole määritelmiä.',
        'missing_columns' => 'Lista luokassa :class ei määrittele sarakkeita.',
        'missing_definition' => "Lista ei sisällä saraketta ':field'.",
        'missing_parent_definition' => "Lista ei sisällä määritelmää ':definition'.",
        'behavior_not_ready' => 'Luettelokäyttäytymistä ei ole alustettu, tarkista, että olet kutsunut makeLists() ohjaimessasi',
        'invalid_column_datetime' => "Sarakkeen ':column' arvo ei ole DateTime objekti. Puuttuuko sinulta \$dates referenssimallistasi?",
        'pagination' => 'Näytetään tiedot: :from-:to / :total',
        'first_page' => 'Ensimmäinen sivu',
        'last_page' => 'Viimeinen sivu',
        'prev_page' => 'Edellinen sivu',
        'next_page' => 'Seuraava sivu',
        'refresh' => 'Päivitä',
        'updating' => 'Päivitetään...',
        'loading' => 'Ladataan...',
        'setup_title' => 'Listan asetukset',
        'setup_help' => 'Käytä valintalaatikkoja valitaksesi sarakkeet, jotka haluat nähdä listassa. Voit muuttaa sarakkeiden järjestystä vetämällä ylös tai alas.',
        'records_per_page' => 'Tietuetta per sivu',
        'records_per_page_help' => 'Valitse kohteiden määrä per sivu. Huomaathan, että suurempi numero voi vähentää suorituskykyä.',
        'check' => 'Valitse',
        'delete_selected' => 'Poista valitut',
        'delete_selected_empty' => 'Yhtään tietuetta ei ole valittu poistettavaksi.',
        'delete_selected_confirm' => 'Poistetaan valitut tietueet?',
        'delete_selected_success' => 'Tietueet poistettu.',
        'column_switch_true' => 'Kyllä',
        'column_switch_false' => 'Ei'
    ],
    'fileupload' => [
        'attachment' => 'Liite',
        'help' => 'Lisää nimi ja kuvaus tälle liitteelle.',
        'title_label' => 'Nimi',
        'description_label' => 'Kuvaus',
        'default_prompt' => 'Napsauta %s tai raahaa tiedosto tähän siirtoa varten',
        'attachment_url' => 'Liitteen URL-osoite',
        'upload_file' => 'Siirrä tiedosto',
        'upload_error' => 'Virhe siirrossa',
        'remove_confirm' => 'Oletko varma?',
        'remove_file' => 'Poista tiedosto'
    ],
    'form' => [
        'create_title' => 'Uusi :name',
        'update_title' => 'Muokkaa :name',
        'preview_title' => 'Esikatsele :name',
        'create_success' => ':name luotu',
        'update_success' => ':name siirretty',
        'delete_success' => ':name poistettu',
        'reset_success' => 'Palautus valmis',
        'missing_id' => 'Lomakkeen tietue ID ei ole määritelty.',
        'missing_model' => 'Lomake luokassa :class ei ole mallia määriteltynä.',
        'missing_definition' => "Lomake ei sisällä kenttää ':field'.",
        'not_found' => 'Lomaketta ID:llä :id ei voitu löytää.',
        'action_confirm' => 'Oletko aivan varma?',
        'create' => 'Luo',
        'create_and_close' => 'Luo ja sulje',
        'creating' => 'Luodaan...',
        'creating_name' => 'Luodaan :name...',
        'save' => 'Tallenna',
        'save_and_close' => 'Tallenna ja sulje',
        'saving' => 'Tallennetaan...',
        'saving_name' => 'Tallennetaan :name...',
        'delete' => 'Poista',
        'deleting' => 'Poistetaan...',
        'confirm_delete' => 'Poista tietue?',
        'confirm_delete_multiple' => 'Poista valitut tietueet?',
        'deleting_name' => 'Poistetaan :name...',
        'reset_default' => 'Palauta oletukseksi',
        'resetting' => 'Palautetaan',
        'resetting_name' => 'Palautetaan :name',
        'undefined_tab' => 'Muuta',
        'field_off' => 'Pois',
        'field_on' => 'Päällä',
        'add' => 'Lisää',
        'apply' => 'Ota käyttöön',
        'cancel' => 'Peruuta',
        'close' => 'Sulje',
        'confirm' => 'Vahvista',
        'reload' => 'Lataa uudelleen',
        'complete' => 'Valmista',
        'ok' => 'OK',
        'or' => 'tai',
        'confirm_tab_close' => 'Sulje välilehti? Tallentamattomat muutokset häviävät.',
        'behavior_not_ready' => 'Lomaketta ei ole alustettu, tarkista, että olet kutsunut initForm() ohjaimessasi.',
        'preview_no_files_message' => 'Ei siirrettyjä tiedostoja.',
        'preview_no_media_message' => 'Ei valittua mediaa.',
        'preview_no_record_message' => 'Ei valittua tietuetta.',
        'select' => 'Valitse',
        'select_all' => 'Valitse kaikki',
        'select_none' => 'Älä valitse mitään',
        'select_placeholder' => 'ole hyvä ja valitse',
        'insert_row' => 'Lisää rivi',
        'insert_row_below' => 'Lisää rivi alapuolelle',
        'delete_row' => 'Poista rivi',
        'concurrency_file_changed_title' => 'Tiedosto muutettu',
        'concurrency_file_changed_description' => "Toinen käyttäjä on muokannut samaa tiedostoa, jota olet muokkaamassa. Voit joko ladata tiedoston ja menettää tekemäsi muutokset tai ylikirjoittaa toisen käyttäjän tekemät muutokset.",
        'return_to_list' => 'Palaa listaukseen'
    ],
    'recordfinder' => [
        'find_record' => 'Etsi tietue',
        'cancel' => 'Peruuta',
    ],
    'pagelist' => [
        'page_link' => 'Linkki sivuun',
        'select_page' => 'Valitse sivu...'
    ],
    'relation' => [
        'missing_config' => "Suhteella ei ole mitään asetuksia ':config'.",
        'missing_definition' => "Suhteella ei ole määritelmää ':field'.",
        'missing_model' => 'Suhde luokassa :class ei määrittele mallia.',
        'invalid_action_single' => 'Tätä toimintoa ei voida suorittaa yksisuuntaisessa suhteessa.',
        'invalid_action_multi' => 'Tätä toimintoa ei voida suorittaa monisuuntaisessa suhteessa.',
        'help' => 'Valitse kohde lisättäväksi',
        'related_data' => 'Liittyvä data: :name',
        'add' => 'Lisää',
        'add_selected' => 'Lisää valitut',
        'add_a_new' => 'Lisää uusi :name',
        'link_selected' => 'Linkitä valittu',
        'link_a_new' => 'Linkitä uusi :name',
        'cancel' => 'Peruuta',
        'close' => 'Sulje',
        'add_name' => 'Lisää :name',
        'create' => 'Luo',
        'create_name' => 'Luo :name',
        'update' => 'Päivitä',
        'update_name' => 'Päivitä :name',
        'preview' => 'Esikatsele',
        'preview_name' => 'Esikatsele :name',
        'remove' => 'Poista',
        'remove_name' => 'Poista :name',
        'delete' => 'Poista',
        'delete_name' => 'Poista :name',
        'delete_confirm' => 'Oletko varma?',
        'link' => 'Linkki',
        'link_name' => 'Linkki :name',
        'unlink' => 'Poista linkki',
        'unlink_name' => 'Poista linkki :name',
        'unlink_confirm' => 'Oletko varma?'
    ],
    'reorder' => [
        'default_title' => 'Järjestä tietueet uudelleen',
        'no_records' => 'Ei järjestettäviä tietueita.'
    ],
    'model' => [
        'name' => 'Malli',
        'not_found' => "Mallia ':class' ID:llä :id ei löydy",
        'missing_id' => 'Mallikohteiden tarkastelemiseen ei ole määritetty ID:tä.',
        'missing_relation' => "Malli ':class' ei sisällä määritelmää suhteelle ':relation'.",
        'missing_method' => "Malli ':class' ei sisällä metodia ':method'.",
        'invalid_class' => "Mallia :model luokassa :class ei ole kelvollinen, sen täytyy periä \Model luokka.",
        'mass_assignment_failed' => "Massan osoittaminen epäonnistui malli attribuutille ':attribute'."
    ],
    'warnings' => [
        'tips' => 'Järjestelmän kokoonpanovinkkejä',
        'tips_description' => 'On olemassa ongelmia, joihin sinun on kiinnitettävä huomiota järjestelmän oikein määrittelemiseksi.',
        'permissions'  => 'Hakemisto :name tai sen alihakemistot ei ole PHP:n kirjoitettavissa. Aseta vastaavat oikeudet tälle hakemistolle verkkopalvelimella.',
        'extension' => 'PHP laajennus :name ei ole asennettuna. Asenna ja aktivoi kyseinen laajennus.',
        'plugin_missing' => 'Lisäosa :name on riippuvuus, mutta sitä ei ole asennettu. Asenna lisäosa.',
    ],
    'editor' => [
        'menu_label' => 'Editorin asetukset',
        'menu_description' => 'Kustomoi peruasetuksia, kuten kirjasinkoko ja väriteema.',
        'font_size' => 'Kirjasimen koko',
        'tab_size' => 'Tabulaattorin koko',
        'use_hard_tabs' => 'Sisennä tabulaattorin avulla',
        'code_folding' => 'Koodin taitto',
        'code_folding_begin' => 'Merkitse alku',
        'code_folding_begin_end' => 'Merkitse alku ja loppu',
        'autocompletion' => 'Automaattinen täydennys',
        'word_wrap' => 'Tekstin rivitys',
        'highlight_active_line' => 'Korosta aktiivinen rivi',
        'auto_closing' => 'Sulje tagit automaattisesti',
        'show_invisibles' => 'Näytä piilomerkit',
        'show_gutter' => 'Näytä palstojen väli',
        'basic_autocompletion'=> 'Perus automaattinen täydennys (Ctrl + Space)',
        'live_autocompletion'=> 'Reaaliaikainen automaattinen täydennys',
        'enable_snippets'=> 'Ota koodinpätkät käyttöön (Sarkain)',
        'display_indent_guides'=> 'Näytä sisennyslinjat',
        'show_print_margin'=> 'Näytä tulostusmarginaali',
        'mode_off' => 'Pois pältä',
        'mode_fluid' => 'Venyvä',
        '40_characters' => '40 merkkiä',
        '80_characters' => '80 merkkiä',
        'theme' => 'Väriteema',
        'markup_styles' => 'Markup-tyylit',
        'custom_styles' => 'Oma tyylitiedosto',
        'custom styles_comment' => 'Omat tyylit jotka käytetään HTML-editorissa.',
        'markup_classes' => 'Markup-luokat',
        'paragraph' => 'Kappale',
        'link' => 'Linkki',
        'table' => 'Taulukko',
        'table_cell' => 'Taulukon solu',
        'image' => 'Kuva',
        'label' => 'Nimi',
        'class_name' => 'Luokan nimi',
        'markup_tags' => 'Markup-tagit',
        'allowed_empty_tags' => 'Sallitut tyhjät tagit',
        'allowed_empty_tags_comment' => 'Lista tageista, joita ei poisteta vaikka niiden sisällä ei ole sisältöä.',
        'allowed_tags' => 'Sallitut tagit',
        'allowed_tags_comment' => 'Lista sallituista tageista.',
        'no_wrap' => 'Älä kääri tageja',
        'no_wrap_comment' => 'Lista tageista, joita ei tulisi kääriä block tagin sisälle.',
        'remove_tags' => 'Poista tagit',
        'remove_tags_comment' => 'Lista tageista, jotka poistetaan sisältöineen.',
        'toolbar_buttons' => 'Työkalurivin Nappulat',
        'toolbar_buttons_comment' => 'Työkalurivin nappulat, jotka näytetään editorissa oletuksena.',
    ],
    'tooltips' => [
        'preview_website' => 'Esikatsele verkkosivusto'
    ],
    'mysettings' => [
        'menu_label' => 'Omat asetukset',
        'menu_description' => 'Ylläpitäjän tiliin liittyvät asetukset.'
    ],
    'myaccount' => [
        'menu_label' => 'Oma tili',
        'menu_description' => 'Päivitä tilisi asetukset, kuten nimesi, sähköpostisi ja salasanasi.',
        'menu_keywords' => 'tietoturvakirjautuminen'
    ],
    'branding' => [
        'menu_label' => 'Kustomoi ylläpito',
        'menu_description' => 'Muokkaa ylläpitoaluetta, kuten nimeä, värejä ja logo.',
        'brand' => 'Brändi',
        'logo' => 'Logo',
        'logo_description' => 'Siirrä haluamasi logo ylläpitopuolelle.',
        'app_name' => 'Sovelluksen nimi',
        'app_name_description' => 'Tämä näytetään ylläpidon Title-rivillä',
        'app_tagline' => 'Sovelluksen esittelylause',
        'app_tagline_description' => 'Tämä näytetään hallintapaneelin kirjautumissivulla',
        'colors' => 'Värit',
        'primary_color' => 'Primaariväri',
        'secondary_color' => 'Sekundaariväri',
        'accent_color' => 'Korostusväri',
        'styles' => 'Tyylit',
        'custom_stylesheet' => 'Oma CSS-tyyli',
        'navigation' => 'Navigaatio',
        'menu_mode' => 'Valikon tyyli',
        'menu_mode_inline' => 'Rivissä',
        'menu_mode_tile' => 'Laatat',
        'menu_mode_collapsed' => 'Taitettu'
    ],
    'backend_preferences' => [
        'menu_label' => 'Hallinnan asetukset',
        'menu_description' => 'Hallitse oman tilisi asetuksia, kuten kieltä.',
        'region' => 'Alue',
        'code_editor' => 'Koodieditori',
        'timezone' => 'Aikavyöhyke',
        'timezone_comment' => 'Säätää kellonajat tähän aikavyöhykkeeseen.',
        'locale' => 'Kieli',
        'locale_comment' => 'Valitse haluttu käyttöliittymän kieli.'
    ],
    'access_log' => [
        'hint' => 'Tämä loki näyttää listan onnistuneista kirjautumisista järjestelmänvalvojilta. Tiedot pidetään tallessa :days päivää.',
        'menu_label' => 'Käyttöloki',
        'menu_description' => 'Näytä lista onnistuneista kirjautumisista hallintapaneeliin.',
        'created_at' => 'Pvm & aika',
        'login' => 'Kirjautuminen',
        'ip_address' => 'IP-osoite',
        'first_name' => 'Etunimi',
        'last_name' => 'Sukunimi',
        'email' => 'Sähköposti'
    ],
    'filter' => [
        'all' => 'kaikki',
        'options_method_not_exists' => "Mallin :model täytyy määritellä metodi :method(), joka palauttaa ehdot ':filter' suodattimelle.",
        'date_all' => 'kaikilta ajoilta'
    ],
    'import_export' => [
        'upload_csv_file' => '1. Vie CSV-tiedosto',
        'import_file' => 'Tuo tiedosto',
        'first_row_contains_titles' => 'Ensimmäinen rivi sisältää sarakkeiden nimet',
        'first_row_contains_titles_desc' => 'Jätä tämä valituksi jos ensimmäinen rivi on käytössä sarakkeiden nimiin.',
        'match_columns' => '2. Sovita tiedostosarakkeet tietokannan kenttiin',
        'file_columns' => 'Tiedostosarakkeet',
        'database_fields' => 'Tietokannan kentät',
        'set_import_options' => '3. Aseta tuontiasetukset',
        'export_output_format' => '1. Vientiformaatti',
        'file_format' => 'Tiedostoformaatti',
        'standard_format' => 'Oletusformaatti',
        'custom_format' => 'Oma formaatti',
        'delimiter_char' => 'Erotinmerkki',
        'enclosure_char' => 'Sisällytysmerkki',
        'escape_char' => 'Escape-merkki',
        'select_columns' => '2. Valitse sarakkeet vientiin',
        'column' => 'Sarake',
        'columns' => 'Sarakkeet',
        'set_export_options' => '3. Aseta vientiasetukset',
        'show_ignored_columns' => 'Näytä ohitetut sarakkeet',
        'auto_match_columns' => 'Hae sarakkeet automaattisesti',
        'created' => 'Luotu',
        'updated' => 'Päivitetty',
        'skipped' => 'Hypätty yli',
        'warnings' => 'Varoitukset',
        'errors' => 'Virheet',
        'skipped_rows' => 'Ylihypätyt rivit',
        'import_progress' => 'Tuontiprosessi',
        'processing' => 'Prosessoidaan',
        'import_error' => 'Virhe tuonnissa',
        'upload_valid_csv' => 'Siirrä oikeassa muodossa oleva CSV-tiedosto.',
        'drop_column_here' => 'Pudota sarake tähän...',
        'ignore_this_column' => 'Ohita tämä sarake',
        'processing_successful_line1' => 'Tiedoston vientiprosessi valmis!',
        'processing_successful_line2' => 'Selain ohjaa sinut seuraavaksi tiedoston lataukseen.',
        'export_progress' => 'Vienti käynnissä',
        'export_error' => 'Virhe viennissä',
        'column_preview' => 'Sarakkeen esikatselu',
        'file_not_found_error' => 'Tiedostoa ei löytynyt',
        'empty_error' => 'Tietoja ei toimitettu vientiin',
        'empty_import_columns_error' => 'Valitse joitain sarakkeita tuontiin.',
        'match_some_column_error' => 'Sovita joitain sarakkeita ensin.',
        'required_match_column_error' => 'Määrittele vastike vaaditulle kentälle :label.',
        'empty_export_columns_error' => 'Valitse joitain sarakkeita vientiin.',
        'behavior_missing_uselist_error' => 'Sinun täytyy toteuttaa ohjaimen toiminto ListController, jossa viennin "useList" asetus on päällä.',
        'missing_model_class_error' => 'Määritä modelClass omaisuus :type',
        'missing_column_id_error' => 'Sarakkeen tunniste puuttuu',
        'unknown_column_error' => 'Tuntematon sarake',
        'encoding_not_supported_error' => 'Koodausta ei tunnisteta. Valitse Mukautettu formaatti -vaihtoehto kelvollisella koodauksella.',
        'encoding_format' => 'Tiedoston koodaus',
        'encodings' => [
            'utf_8' => 'UTF-8',
            'us_ascii' => 'US-ASCII',
            'iso_8859_1' => 'ISO-8859-1 (Latin-1, Länsi-Eurooppalainen)',
            'iso_8859_2' => 'ISO-8859-2 (Latin-2, Keski-Eurooppalainen)',
            'iso_8859_3' => 'ISO-8859-3 (Latin-3, Etelä-Eurooppalainen)',
            'iso_8859_4' => 'ISO-8859-4 (Latin-4, Pohjois-Eurooppalainen)',
            'iso_8859_5' => 'ISO-8859-5 (Latin, Kyrillinen)',
            'iso_8859_6' => 'ISO-8859-6 (Latin, arabialainen)',
            'iso_8859_7' => 'ISO-8859-7 (Latin, Kreikkalainen)',
            'iso_8859_8' => 'ISO-8859-8 (Latin, Heprealainen)',
            'iso_8859_9' => 'ISO-8859-9 (Latin-5, Turkkilainen)',
            'iso_8859_10' => 'ISO-8859-10 (Latin-6, Pohjoismainen)',
            'iso_8859_11' => 'ISO-8859-11 (Latin, Thaimaalainen)',
            'iso_8859_13' => 'ISO-8859-13 (Latin-7, Balttilainen)',
            'iso_8859_14' => 'ISO-8859-14 (Latin-8, Kelttiläinen)',
            'iso_8859_15' => 'ISO-8859-15 (Latin-9, Länsi-Eurooppalainen vedos euro symbolilla)',
            'windows_1251' => 'Windows-1251 (CP1251)',
            'windows_1252' => 'Windows-1252 (CP1252)'
        ]
    ],
    'permissions' => [
        'manage_media' => 'Siirrä ja hallitse mediaa - kuvat, videot, äänet, dokumentit'
    ],
    'mediafinder' => [
        'label' => 'Mediaetsin',
        'default_prompt' => 'Klikkaa %s nappulaa etsiäksesi media'
    ],
    'media' => [
        'menu_label' => 'Media',
        'upload' => 'Siirrä palvelimelle',
        'move' => 'Siirrä',
        'delete' => 'Poista',
        'add_folder' => 'Lisää kansio',
        'search' => 'Etsi',
        'display' => 'Näytä',
        'filter_everything' => 'Kaikki',
        'filter_images' => 'Kuvat',
        'filter_video' => 'Videot',
        'filter_audio' => 'Audio',
        'filter_documents' => 'Dokumentit',
        'library' => 'Kirjasto',
        'size' => 'Koko',
        'title' => 'Otsikko',
        'last_modified' => 'Viimeksi muokattu',
        'public_url' => 'URL',
        'click_here' => 'Klikkaa tässä',
        'thumbnail_error' => 'Virhe luotaessa esikatselukuvaa.',
        'return_to_parent' => 'Palaa isäntäkansioon',
        'return_to_parent_label' => 'Siirry ylös ..',
        'nothing_selected' => 'Ei valintaa.',
        'multiple_selected' => 'Useita valittu.',
        'uploading_file_num' => 'Siirretään :number tiedosto(a)...',
        'uploading_complete' => 'Siirto valmis',
        'uploading_error' => 'Siirto epäonnistui',
        'type_blocked' => 'Tietoturvasyistä tiedosto muoto ei ole sallittu.',
        'order_by' => 'Järjestä',
        'direction' => 'Suunta',
        'direction_asc' => 'Nouseva',
        'direction_desc' => 'Laskeva',
        'folder' => 'Kansio',
        'no_files_found' => 'Pyynnölläsi ei löytynyt tiedostoja.',
        'delete_empty' => 'Ole hyvä ja valitse poistettavat tiedostot.',
        'delete_confirm' => 'Poistetaan tiedosto(t)?',
        'error_renaming_file' => 'Virhe nimettäessä tiedostoa.',
        'new_folder_title' => 'Uusi kansio',
        'folder_name' => 'Kansion nimi',
        'error_creating_folder' => 'Virhe luotaessa kasiota',
        'folder_or_file_exist' => 'Samanniminen tiedosto tai kansio on jo olemassa.',
        'move_empty' => 'Valitse siirrettävät tiedostot.',
        'move_popup_title' => 'Siirrä tiedotoja tai kansioita',
        'move_destination' => 'Kohdekansio',
        'please_select_move_dest' => 'Ole hyvä ja valitse kohdekansio.',
        'move_dest_src_match' => 'Ole hyvä ja valitse toinen kohdekansio.',
        'empty_library' => 'Näyttää tyhjälle – alkajaisiksi, siirrä tiedosto tai luo kansio.',
        'insert' => 'Liitä',
        'crop_and_insert' => 'Rajaa & Liitä',
        'select_single_image' => 'Valitse vain yksi kuva.',
        'selection_not_image' => 'Valittu tiedosto ei ole kuva.',
        'restore' => 'Hylkää kaikki muutokset',
        'resize' => 'Muuta kokoa...',
        'selection_mode_normal' => 'Normaali',
        'selection_mode_fixed_ratio' => 'Säilytä mittasuhteet',
        'selection_mode_fixed_size' => 'Säilytä koko',
        'height' => 'Korkeus',
        'width' => 'Leveys',
        'selection_mode' => 'Valintamoodi',
        'resize_image' => 'Muuta kuvakokoa',
        'image_size' => 'Kuvakoko:',
        'selected_size' => 'Valittuna:',
        'rename_popup_title' => 'Nimeä uudelleen',
        'rename_new_name' => 'Uusi nimi',
        'move_please_select' => 'ole hyvä ja valitse',
        'move_button' => 'Siirrä',
    ],
];