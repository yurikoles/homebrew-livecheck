class TomcatNative
  livecheck :url   => "https://archive.apache.org/dist/tomcat/tomcat-connectors/native/",
            :regex => %r{href="v?(\d+(?:\.\d+)+)/"}
end