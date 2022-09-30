#!/bin/bash

set -eux

# DANGER THROUGHOUT

dir="${1:-output}"

# Consecutive whitespace
find "$dir" -type f -regex '.*\.\(html\|js\|css\)$' -exec sed -i -E -e 's/^\s+//g' \
                                                                    -e 's/\s+/ /g' {} \;
# Consecutive line breaks
find "$dir" -type f -regex '.*\.\(html\|js\|css\)$' -exec perl -i -p0e 's,\n+\s*,\n,g' {} \;

# DANGER: Comments
find "$dir" -type f -regex '.*\.html$' -exec perl -i -p0e 's/<!--.*?-->//msg' {} \;
find "$dir" -type f -regex '.*\.js$' -exec sed -i -E 's,/\*.*?\*/|/\*.*|.*\*/|//.*,,g' {} \;
find "$dir" -type f -regex '.*\.css$' -exec sed -i -E 's,/\*.*?\*/,,g' {} \;

# DANGER: Safe-unquote HTML attributes, but not inside <pre>, <textarea> or <script>
find "$dir" -type f -regex '.*\.html$' -exec perl -i -pe 's,(?s)<(pre|textarea|script)\b[^<]*>.*?<\/\1>(*SKIP)(*FAIL)|([\w:-]+=)"([\w.#%/-]+)"(\s*/(?=>))?,\2\3,g' {} \;
find "$dir" -type f -regex '.*\.html$' -exec perl -i -pe 's,(?s)<(pre|textarea|script)\b[^<]*>.*?<\/\1>(*SKIP)(*FAIL)|(?<=\w)=""(?=\s),,g' {} \;

# DANGER: Collapse lines, but not inside <pre> or <textarea>
find "$dir" -type f -regex '.*\.html$' -exec perl -i -p0e 's,(?s)<(pre|textarea)\b[^<]*>.*?<\/\1>(*SKIP)(*FAIL)|\n+\s*, ,g' {} \;

# Redundant CSS semicolons
find "$dir" -type f -regex '.*\.css$' -exec perl -i -p0e 's,;\s*(?=[;}])|,,g' {} \;
find "$dir" -type f -regex '.*\.css$' -exec perl -i -pe 's,\s+(?={),,g' {} \;
