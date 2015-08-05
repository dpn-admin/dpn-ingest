# DPN::Ingest


## Configuration

    $ bundle install --path=.bundle

## Usage

```
bridge = DPN::Ingest::Bridge.new()

# It will automatically add this to the api root and api version.
response = bridge.getSnapshots()
status = response.status
body = response.body

```

## License

Copyright (c) 2015 The Regents of the University of Michigan.
All Rights Reserved.
Licensed according to the terms of the Revised BSD License
See LICENSE.md for details.

