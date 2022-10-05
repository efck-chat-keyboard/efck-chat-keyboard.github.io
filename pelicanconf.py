#!/usr/bin/env python

## Development ######################################################

RELATIVE_URLS = False
DELETE_OUTPUT_DIRECTORY = True

CACHE_CONTENT = False
LOAD_CONTENT_CACHE = True
GZIP_CACHE = False

SITEURL = 'https://efck-chat-keyboard.github.io'

assert not SITEURL.endswith('/')

## Pelican settings #################################################

SITENAME = 'EF*CK'
SITEDESC = 'Emoji Filter / Unicode Chat Keyboard'

PATH = 'content'
OUTPUT_PATH = 'output/'
READERS = dict(rst=None, html=None)  # Disable docutils/reST, disable interpreting HTML redirects

TIMEZONE = 'Europe/London'

DEFAULT_LANG = 'en'

DEFAULT_METADATA = {
    'lang': 'en',
    'page_order': '9',
}

THEME = 'theme'
THEME_STATIC_DIR = 'static'

PAGE_ORDER_BY = 'page_order'

FEED_DOMAIN = SITEURL
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

DEFAULT_PAGINATION = False

DIRECT_TEMPLATES = ['index']

SLUGIFY_SOURCE = 'basename'

PAGE_URL = '{slug}/'
PAGE_SAVE_AS = PAGE_URL + 'index.html'

STATIC_LANG_URL = '{path}'  # == STATIC_URL
STATIC_LANG_SAVE_AS = '{path}'  # == STATIC_SAVE_AS

AUTHOR_SAVE_AS = ''
CATEGORY_SAVE_AS = ''
TAG_SAVE_AS = ''
ARCHIVES_SAVE_AS = ''
AUTHORS_SAVE_AS = ''
CATEGORIES_SAVE_AS = ''
TAGS_SAVE_AS = ''

TYPOGRIFY = False

MARKDOWN = dict(
    output_format='html5',
    extensions=[
        'markdown.extensions.meta',
        'markdown.extensions.toc',  # For header-id
        'markdown.extensions.abbr',
        'markdown.extensions.md_in_html',
        'markdown.extensions.def_list',
        'markdown.extensions.attr_list',
        'markdown.extensions.footnotes',
    ],
    extension_configs={
        "markdown.extensions.smarty": dict(
            smart_dashes=True,
            smart_ellipses=True,
            smart_quotes=False,
            smart_angled_quotes=False,
        ),
    },
)

STATIC_PATHS = [
    'images',
    'static',
]
EXTRA_PATH_METADATA = {
    'static/dl': {'path': 'dl/'},
    'static': {'path': ''},
}
