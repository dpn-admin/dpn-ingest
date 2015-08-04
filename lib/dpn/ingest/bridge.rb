# Copyright (c) 2015 The Regents of the University of Michigan.
# All Rights Reserved.
# Licensed according to the terms of the Revised BSD License
# See LICENSE.md for details.

require "dpn/client"

module DPN
 class Ingest
  class Bridge

    # globals
    BRIDGE_HOST = 'duracloud.tdl.org'
    BRIDGE_PORT = ':443'
    BRIDGE_URL = 'https://' + BRIDGE_HOST + BRIDGE_PORT
    BRIDGE_ENDPOINT = BRIDGE_URL + "/bridge"
    #BRIDGE_SNAPSHOT_LOCATION = '/ebs/duracloud/bridge/content/snapshots'
    #BRIDGE_RESTORE_LOCATION = '/ebs/duracloud/bridge/content/restorations'
    #BRIDGE_TMP_LOCATION = '/ebs/duracloud/tmp'
    #BRIDGE_SSH_USER = 'gad'
    #BRIDGE_TOMCAT_USER = 'tomcat'
    #BRIDGE_SSH_KEY = '/home/gad/PROD/credentials/TDL/ssh.pem'
    #MY_DOWNLOAD_LOCATION = '/home/gad/work/duracloud_workspace/dpn_bridge_client/bags'
    #SNAPSHOTS = []
    #RESTORES = []

    def initialize()
       base_header = {
          "Content-Type" => "application/json"
       }
       @client = ::HTTPClient.new( agent_name: DPN::Ingest::Bridge.name,  # the module's name
                                base_url: BRIDGE_ENDPOINT,
                                default_header: base_header)      
    end

    def getSnapshots()
      # It will automatically add this to the api root and api version.
      response = @client.get("/snapshot", :query => { 'host' => BRIDGE_HOST }, follow_redirect: true)
      status = response.status
      body = response.body
    end

    def getSnapshotContents(snapshotId)

    end
    
    def getSnapshotDetails(snapshotId)
      
    end

    def sendSnapshotComplete(snapshotId)

    end

    def updateSnapshotHistory(snapshotId, isAlternate)

    end

    def getRestores()

    end

    def sendRestoreComplete(restoreId)

    end

  end
 end
end
