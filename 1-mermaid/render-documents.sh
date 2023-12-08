#!/bin/zsh

DOCUMENT_PREVIEW="rendered-documents"

rm -rf "$DOCUMENT_PREVIEW"

mkdir "$DOCUMENT_PREVIEW"

pandoc -F mermaid-filter -o "./$DOCUMENT_PREVIEW/readme.pdf" "./readme.md"
pandoc -F mermaid-filter -o "./$DOCUMENT_PREVIEW/readme.html" "./readme.md"