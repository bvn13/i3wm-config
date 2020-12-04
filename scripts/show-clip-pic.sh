#!/bin/bash

uuid=$(uuidgen)

xclip -out -selection clipboard > /tmp/$uuid && feh /tmp/$uuid
