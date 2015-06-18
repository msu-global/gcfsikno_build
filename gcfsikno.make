; Begin documentation



; This is a comment. Anything starting with a semicolon is a comment
; and will be ignored by the parser. Blank lines are also ignored.
; The file uses standard info file format:
; attribute = value


; REQUIRED ATTRIBUTES


; The Drush Make API version. This should always be 2.
; api = 2


; The version of Drupal the profile is built for. Although you can leave this
; as '7.x', it's better to be precise and define the exact version of core your
; distribution works with.
; core = 7.x


; However, if you're trying to define patches for core, need a -dev release,
; or want anything more fancy than an official release, you need to put all
; of that into a separate 'drupal-org-core.make' file. See below for details.
; In that case, leaving this as 'core = 7.x' is fine.


; OPTIONAL ATTRIBUTES


; Here you see the format of an array in a .make file. Text enclosed
; in brackets are array keys, and each set to the right of the last is
; a layer deeper in the array. Note that the root array element is
; not enclosed in brackets:
; root_element[first_key][next_key] = value


; The 'projects' attribute is where you define the modules/themes that
; are to be packaged with the profile. The first key is the short name
; of the project (as seen in the drupal.org/project/{projectshortname}
; URI).


; These projects are defined using the short form definition. You can
; use this form if you only want to declare the version of the project.
; The version is the value to the right of the core Drupal version in a full
; version string. For example, if you wanted to specify Views 7.x-3.1,
; you would use:
; projects[views] = 3.1


; For pre-releases, like CTools 7.x-1.0-rc1, use this format:
; projects[ctools] = 1.0-rc1


; You can also specify -dev releases of projects; however, this is
; generally NOT recommended, since it results in end users getting
; different sets of files at different times that distribution is
; built, which can cause confusing bug reports. If you really must use
; a -dev release, it's better to specify a Git revision (see below).
; projects[media] = 2.x-dev


; To define more attributes for a specific project than just the version,
; create another layer of array keys. In the example below, both the
; projects will be placed in a subdirectory of the modules folder.
; Note that if the long form is used, the 'version' key *must* be defined
; for the project!
; projects[media_youtube][version] = 1.0-alpha5
; projects[media_youtube][subdir] = media_plugins
; projects[media_flickr][version] = 1.0-alpha1
; projects[media_flickr][subdir] = media_plugins


; Defining a theme is no different.
; projects[rubik] = 4.0-beta7


; You can also include patches in your profile by using a 'patch' key
; for the project to be patched. Any patches applied to a given
; distribution release are displayed on the release node.
; Note that the patch *must* reside on Drupal.org.
; projects[rubik][patch][] = "http://drupal.org/files/rubik-print-css.patch"


; You can define multiple patches for the same project and they will
; be applied in the order they are listed:
; projects[nodequeue][subdir] = contrib
; projects[nodequeue][version] = 2.0-alpha1
; projects[nodequeue][patch][] = "http://drupal.org/files/issues/1023606-qid-to-name-6.patch"
; projects[nodequeue][patch][] = "http://drupal.org/files/issues/nodequeue_d7_autocomplete-872444-6.patch"


; To include a code library external to the Drupal project, such as
; jQuery UI or TinyMCE, you can include them using the 'libraries'
; attribute, specifying at least the download 'type' and 'url'.
; Note that any referenced third-party libraries *must* be listed at
; http://drupal.org/packaging-whitelist
; libraries[jquery.cycle][download][type] = get
; libraries[jquery.cycle][download][url] = http://malsup.com/jquery/cycle/release/jquery.cycle.zip?v2.99
; libraries[jquery.cycle][destination] = libraries


; You can even specify patches to be applied to external library code,
; so long as the patches themselves live on Drupal.org.
; libraries[ckeditor][download][type] = get
; libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
; libraries[ckeditor][destination] = libraries
; libraries[ckeditor][directory_name] = ckeditor
; libraries[ckeditor][patch][] = "http://drupal.org/files/1337004-ckeditor-remove-samples-3.patch"


; Finally, you can also reference code from a Drupal.org git repository;
; either a branch, tag or specific revision. If you want to use a branch,
; it's better to also define a specific 'revision' to maintain reproducible
; builds for your make file. Note that if you define a 'revision' key, you
; *must* also specify the branch so the packaging system knows which
; project version you're using.
; projects[draggableviews][type] = module
; projects[draggableviews][download][type] = git
; projects[draggableviews][download][revision] = 9677bc18b7255e13c33ac3cca48732b855c6817d
; projects[draggableviews][download][branch] = 7.x-2.x


; projects[ns_core][type] = module
; projects[ns_core][download][type] = git
; projects[ns_core][download][branch] = 7.x-2.x






; Begin the actual file



core = 7.x

api = 2
projects[drupal][version] = "7.38"


projects[addressfield][version] = "1.1"

projects[admin_menu][version] = "3.0-rc5"

projects[adminimal_admin_menu][version] = "1.5"

projects[advanced_forum][version] = "2.5"

projects[better_exposed_filters][version] = "3.2"

projects[ctools][version] = "1.7"

projects[ckeditor][version] = "1.16"

projects[facetapi][version] = "1.5"

projects[date][version] = "2.8"

projects[devel][version] = "1.5"

projects[diff][version] = "3.2"

projects[email][version] = "1.3"

projects[entity][version] = "1.6"

projects[entityreference][version] = "1.1"

projects[facetapi][version] = "1.5"

projects[features][version] = "2.5"

projects[file_entity][version] = "2.0-beta1"

projects[filefield_paths][version] = "1.0-beta4"

projects[flag][version] = "3.6"

projects[panels][version] = "3.5"

projects[jquery_update][version] = "2.5"

projects[libraries][version] = "2.2"

projects[link][version] = "1.3"

projects[masquerade][version] = "1.0-rc7"

projects[media][version] = "2.x-dev"

projects[media_oembed][version] = "2.3"

projects[migrate][version] = "2.7"

projects[module_filter][version] = "2.0"

projects[name][version] = "1.9"

projects[panels][version] = "3.5"

projects[pathauto][version] = "1.2"

projects[phone][version] = "1.0-beta1"

projects[rules][version] = "2.9"

projects[search_api][version] = "1.14"

projects[search_api_db][version] = "1.4"

projects[] = "select2"

projects[shib_auth][version] = "4.1"

projects[simplehtmldom][version] = "1.12"

projects[strongarm][version] = "2.0"

projects[token][version] = "1.6"

projects[transliteration][version] = "3.2"

projects[uuid][version] = "1.0-alpha6"

projects[uuid_features][version] = "1.0-alpha4"

projects[views][version] = "3.11"




; Themes
projects[adminimal_theme][version] = "1.21"

projects[bootstrap][version] = "3.0"

projects[responsive][version] = "1.7"


; libraries
libraries[select2][type] = library
libraries[select2][download][type] = git
libraries[select2][download][tag] = 3.5.2
libraries[select2][download][url] = "https://github.com/select2/select2.git"

libraries[ckeditor][type] = library
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.7/ckeditor_4.4.7_full.zip"


; Custom modules
projects[gcfsikno_blog][type] = module
projects[gcfsikno_blog][download][type] = git
projects[gcfsikno_blog][download][branch] = 7.x-1.x
projects[gcfsikno_blog][download][url] = "git://github.com/msu-global/gcfsikno_blog.git"
projects[gcfsikno_blog][options][working-copy] = TRUE

projects[gcfsikno_forum][type] = module
projects[gcfsikno_forum][download][type] = git
projects[gcfsikno_forum][download][branch] = 7.x-1.x
projects[gcfsikno_forum][download][url] = "git://github.com/msu-global/gcfsikno_forum.git"
projects[gcfsikno_forum][options][working-copy] = TRUE

projects[gcfsikno_home][type] = module
projects[gcfsikno_home][download][type] = git
projects[gcfsikno_home][download][branch] = 7.x-1.x
projects[gcfsikno_home][download][url] = "git://github.com/msu-global/gcfsikno_home.git"
projects[gcfsikno_home][options][working-copy] = TRUE

projects[gcfsikno_library][type] = module
projects[gcfsikno_library][download][type] = git
projects[gcfsikno_library][download][branch] = 7.x-1.x
projects[gcfsikno_library][download][url] = "git://github.com/msu-global/gcfsikno_library.git"
projects[gcfsikno_library][options][working-copy] = TRUE

projects[gcfsikno_search][type] = module
projects[gcfsikno_search][download][type] = git
projects[gcfsikno_search][download][branch] = 7.x-1.x
projects[gcfsikno_search][download][url] = "git://github.com/msu-global/gcfsikno_search.git"
projects[gcfsikno_search][options][working-copy] = TRUE

projects[gcfsikno_team][type] = module
projects[gcfsikno_team][download][type] = git
projects[gcfsikno_team][download][branch] = 7.x-1.x
projects[gcfsikno_team][download][url] = "git://github.com/msu-global/gcfsikno_team.git"
projects[gcfsikno_team][options][working-copy] = TRUE

projects[spartan][type] = theme
projects[spartan][download][type] = git
projects[spartan][download][branch] = 7.x-1.x
projects[spartan][download][url] = "git://github.com/msu-global/spartan.git"
projects[spartan][options][working-copy] = TRUE

projects[spartan_layout][type] = module
projects[spartan_layout][download][type] = git
projects[spartan_layout][download][branch] = 7.x-1.x
projects[spartan_layout][download][url] = "git://github.com/msu-global/spartan_layout.git"
projects[spartan_layout][options][working-copy] = TRUE

