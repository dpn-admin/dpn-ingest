# Copyright (c) 2015 The Regents of the University of Michigan.
# All Rights Reserved.
# Licensed according to the terms of the Revised BSD License
# See LICENSE.md for details.

require "dpn/client"
require "dpn/ingest/bridge"

module DPN

  class Ingest

    # Get the api version, based on the major version of this library.
    def self.api_version
      DPN::Ingest::VERSION.split(".")[0]
    end


    def initialize()
    end
  end
end
