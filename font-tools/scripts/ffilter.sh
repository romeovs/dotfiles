#!/bin/sh

sed '/^Copyright.*/d' | sed '/^ License.*/d' | sed '/^ with many.*/d' | sed '/^ Based on.*/d'
