#!/bin/bash

DIR=${0%%/render.sh}

function render {
    ADOC=${1}
    shift
    HTML=${ADOC%.*}.html
    HTML=html/${HTML##*/}
    HTML=${1-$HTML}
    shift
    OFFSET=${1-+1}
    shift
    BASE_URL="https://github.com/benkeil/neo4j-sample"
    shift
    echo rendering $ADOC to $HTML   
    echo asciidoctor $ADOC -T $DIR/templates -a allow-uri-read -a experimental -a guides=$BASE_URL -a current=$BASE_URL -a img=$BASE_URL/img -a leveloffset=${OFFSET} -a env-guide= -a guide= -o ${HTML} "$@"
    asciidoctor $ADOC -T $DIR/templates -a allow-uri-read -a guides=$BASE_URL -a icons=font -a current=$BASE_URL -a img=$BASE_URL/img -a leveloffset=${OFFSET} -a env-guide= -a guide= -o ${HTML} "$@"
}

render "$@"