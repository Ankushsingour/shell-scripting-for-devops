#!/bin/bash
#
#
#
  error-handaling()
  {
    mkdir demo
  }

  if ! error-handaling; then
	  echo "the code iws being is exitd as the directary is already exit"
	  exit 1
  fi

