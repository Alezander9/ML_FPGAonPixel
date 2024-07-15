<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="my_prj" top="my_prj">
  <files>
    <file name="../../tb_data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../my_prj_test.cpp" sc="0" tb="1" cflags=" -I../../firmware/.  -std=c++0x -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="firmware/my_prj.cpp" sc="0" tb="false" cflags="-std=c++0x" blackbox="false" csimflags=""/>
    <file name="firmware/BDT.cpp" sc="0" tb="false" cflags="-std=c++0x" blackbox="false" csimflags=""/>
    <file name="firmware/BDT.h" sc="0" tb="false" cflags="-std=c++0x" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="solution1" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation argv="">
    <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
