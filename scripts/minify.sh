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

# DANGER: Safe-unquote HTML attributes
find "$dir" -type f -regex '.*\.html$' -exec perl -i -pe 's,([\w:-]+=)"([\w.#%/-]+)"(\s*/(?=>))?,\1\2,g' {} \;
find "$dir" -type f -regex '.*\.html$' -exec perl -i -pe 's,(?<=\w)=""(?=\s),,g' {} \;

# Collapse lines
find "$dir" -type f -regex '.*\.html$' -exec perl -i -p0e 's,\n+\s*, ,g' {} \;

# Redundant CSS semicolons
find "$dir" -type f -regex '.*\.css$' -exec perl -i -p0e 's,;\s*(?=[;}])|,,g' {} \;
find "$dir" -type f -regex '.*\.css$' -exec perl -i -pe 's,\s+(?={),,g' {} \;
