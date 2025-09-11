<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-ptr500" urn="urn:adsk.eagle:library:181">
<description>&lt;b&gt;PTR Connectors&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.&lt;p&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Alte Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Neue Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2DS,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2DS-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AKZ505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AKZ500/2-5.08-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TABLE&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AK300/2" urn="urn:adsk.eagle:footprint:9843/1" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="5.08" y1="6.223" x2="5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.223" x2="-5.08" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.223" x2="5.588" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.588" y1="6.223" x2="5.588" y2="1.397" width="0.1524" layer="21"/>
<wire x1="5.588" y1="1.397" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-5.461" x2="5.08" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-5.207" x2="5.08" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.81" x2="5.08" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-4.064" x2="5.08" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.81" x2="5.588" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-6.223" x2="0.4572" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="0.254" x2="4.5212" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-6.223" x2="4.5212" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="-6.223" x2="5.08" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-6.223" x2="-0.4826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-6.223" x2="0.4572" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="0.254" x2="-4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-6.223" x2="-4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-6.223" x2="-0.4826" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-4.318" x2="4.5212" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="-4.318" x2="0.4572" y2="0.254" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="-4.318" x2="4.5212" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-4.318" x2="-4.5466" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="-4.318" x2="-0.4826" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="-4.318" x2="-4.5466" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="-3.683" x2="4.1402" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="-3.683" x2="0.8382" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="0.8382" y1="-3.683" x2="0.8382" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-0.8636" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="-3.683" x2="-4.1656" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="-3.683" x2="-4.1656" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="-0.508" x2="-3.7846" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.508" x2="-1.2446" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="-0.508" x2="1.2192" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-0.508" x2="3.7592" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-6.223" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.651" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="3.429" x2="0.4572" y2="5.969" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="5.969" x2="4.5212" y2="5.969" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="5.969" x2="4.5212" y2="3.429" width="0.1524" layer="21"/>
<wire x1="4.5212" y1="3.429" x2="0.4572" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="3.429" x2="-0.4826" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="3.429" x2="-4.5466" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="3.429" x2="-4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="5.969" x2="-4.5466" y2="5.969" width="0.1524" layer="21"/>
<wire x1="3.9574" y1="4.0849" x2="4.0131" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="1.016" y1="4.1656" x2="4.0038" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="0.8636" y1="5.0038" x2="4.0178" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="0.9144" y1="5.0546" x2="1.0581" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="0.8636" y1="4.445" x2="3.9116" y2="5.08" width="0.1524" layer="21"/>
<wire x1="0.9906" y1="4.318" x2="4.0386" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-1.0464" y1="4.0849" x2="-0.9907" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-3.9878" y1="4.1656" x2="-1" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-4.1402" y1="5.0038" x2="-0.9858" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-4.0894" y1="5.0546" x2="-3.9457" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-4.1402" y1="4.445" x2="-1.0922" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.0132" y1="4.318" x2="-0.9652" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-4.5466" y1="0.254" x2="-4.1656" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.4826" y1="0.254" x2="-0.8636" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-0.8636" y1="0.254" x2="-4.1656" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="0.635" x2="-4.1656" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.1656" y1="0.635" x2="-0.8636" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.635" x2="0.8382" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="4.1402" y2="0.635" width="0.1524" layer="21"/>
<wire x1="4.1402" y1="0.635" x2="0.8382" y2="0.635" width="0.1524" layer="51"/>
<wire x1="4.5212" y1="0.254" x2="4.1402" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="0.254" x2="0.8382" y2="0.254" width="0.1524" layer="21"/>
<wire x1="0.8382" y1="0.254" x2="4.1402" y2="0.254" width="0.1524" layer="51"/>
<pad name="1" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="2.4892" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-5.08" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.4958" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="0.5842" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<rectangle x1="-3.7846" y1="-2.54" x2="-1.2446" y2="0.254" layer="51"/>
<rectangle x1="1.2192" y1="-2.54" x2="3.7592" y2="0.254" layer="51"/>
</package>
<package name="AK300/7" urn="urn:adsk.eagle:footprint:9847/1" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="17.5514" y1="6.223" x2="18.0594" y2="6.223" width="0.1524" layer="21"/>
<wire x1="18.0594" y1="6.223" x2="18.0594" y2="1.397" width="0.1524" layer="21"/>
<wire x1="18.0594" y1="1.397" x2="17.5514" y2="1.651" width="0.1524" layer="21"/>
<wire x1="18.0594" y1="-5.461" x2="17.5514" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="-5.207" x2="17.5514" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="18.0594" y1="-3.81" x2="17.5514" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="-4.064" x2="17.5514" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="18.0594" y1="-3.81" x2="18.0594" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="-6.223" x2="7.9756" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="12.0396" y1="0.254" x2="12.0396" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="-6.223" x2="12.0396" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.0396" y1="-6.223" x2="12.9794" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-6.223" x2="7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-6.223" x2="7.9756" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="0.254" x2="2.9718" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="-6.223" x2="2.9718" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-6.223" x2="7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="-4.318" x2="12.0396" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="-4.318" x2="7.9756" y2="0.254" width="0.1524" layer="21"/>
<wire x1="12.0396" y1="-4.318" x2="12.0396" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-4.318" x2="2.9718" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="-4.318" x2="7.0358" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-4.318" x2="2.9718" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="11.6586" y1="-3.683" x2="11.6586" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="11.6586" y1="-3.683" x2="8.3566" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="8.3566" y1="-3.683" x2="8.3566" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="-3.683" x2="6.6548" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="-3.683" x2="3.3528" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.3528" y1="-3.683" x2="3.3528" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="3.3528" y1="-0.508" x2="3.7338" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.6548" y1="-0.508" x2="6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="8.3566" y1="-0.508" x2="8.7376" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="11.6586" y1="-0.508" x2="11.2776" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="17.5514" y1="1.651" x2="17.5514" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="0.635" x2="17.5514" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="-6.223" x2="2.5146" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="0.635" x2="2.5146" y2="3.175" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="3.175" x2="2.5146" y2="6.223" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="6.223" x2="17.5514" y2="3.175" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="3.175" x2="17.5514" y2="1.651" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="3.429" x2="7.9756" y2="5.969" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="5.969" x2="12.0396" y2="5.969" width="0.1524" layer="21"/>
<wire x1="12.0396" y1="5.969" x2="12.0396" y2="3.429" width="0.1524" layer="21"/>
<wire x1="12.0396" y1="3.429" x2="7.9756" y2="3.429" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="3.429" x2="7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="3.429" x2="2.9718" y2="3.429" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="3.429" x2="2.9718" y2="5.969" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="5.969" x2="2.9718" y2="5.969" width="0.1524" layer="21"/>
<wire x1="11.4758" y1="4.0849" x2="11.5315" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="8.5344" y1="4.1656" x2="11.5222" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="8.382" y1="5.0038" x2="11.5362" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="8.4328" y1="5.0546" x2="8.5765" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="8.382" y1="4.445" x2="11.43" y2="5.08" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.318" x2="11.557" y2="4.953" width="0.1524" layer="21"/>
<wire x1="6.4974" y1="4.0849" x2="6.5531" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="3.556" y1="4.1656" x2="6.5438" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="3.4036" y1="5.0038" x2="6.5578" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="3.4544" y1="5.0546" x2="3.5981" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="3.4036" y1="4.445" x2="6.4516" y2="5.08" width="0.1524" layer="21"/>
<wire x1="3.5306" y1="4.318" x2="6.5786" y2="4.953" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="0.254" x2="3.3528" y2="0.254" width="0.1524" layer="21"/>
<wire x1="7.0358" y1="0.254" x2="6.6548" y2="0.254" width="0.1524" layer="21"/>
<wire x1="6.6548" y1="0.254" x2="3.3528" y2="0.254" width="0.1524" layer="51"/>
<wire x1="2.5146" y1="0.635" x2="3.3528" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.3528" y1="0.635" x2="6.6548" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.6548" y1="0.635" x2="8.3566" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="0.635" x2="16.6624" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.6586" y1="0.635" x2="8.3566" y2="0.635" width="0.1524" layer="51"/>
<wire x1="12.0396" y1="0.254" x2="11.6586" y2="0.254" width="0.1524" layer="21"/>
<wire x1="7.9756" y1="0.254" x2="8.3566" y2="0.254" width="0.1524" layer="21"/>
<wire x1="8.3566" y1="0.254" x2="11.6586" y2="0.254" width="0.1524" layer="51"/>
<wire x1="16.6624" y1="0.635" x2="13.3858" y2="0.635" width="0.1524" layer="51"/>
<wire x1="11.684" y1="0.635" x2="13.3604" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="-6.223" x2="17.5514" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="0.254" x2="17.0434" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="-4.318" x2="17.0434" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="0.254" x2="16.6624" y2="0.254" width="0.1524" layer="21"/>
<wire x1="13.3858" y1="0.254" x2="16.6624" y2="0.254" width="0.1524" layer="51"/>
<wire x1="12.9794" y1="0.254" x2="13.3858" y2="0.254" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="-6.223" x2="12.9794" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="-6.223" x2="17.0434" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="-4.318" x2="17.0434" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="16.6624" y1="-3.683" x2="13.3604" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="16.6624" y1="-3.683" x2="16.6624" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="16.6624" y1="-0.508" x2="16.2814" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="13.3604" y1="-0.508" x2="13.716" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="13.3604" y1="-3.683" x2="13.3604" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="3.429" x2="12.9794" y2="5.969" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="5.969" x2="17.0434" y2="5.969" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="5.969" x2="17.0434" y2="3.429" width="0.1524" layer="21"/>
<wire x1="17.0434" y1="3.429" x2="12.9794" y2="3.429" width="0.1524" layer="21"/>
<wire x1="16.4796" y1="4.0849" x2="16.5353" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="13.5382" y1="4.1656" x2="16.526" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="13.3858" y1="5.0038" x2="16.54" y2="5.0586" width="0.1524" layer="21" curve="-100.0232"/>
<wire x1="13.4366" y1="5.0546" x2="13.5803" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="13.3858" y1="4.445" x2="16.4338" y2="5.08" width="0.1524" layer="21"/>
<wire x1="13.5128" y1="4.318" x2="16.5608" y2="4.953" width="0.1524" layer="21"/>
<wire x1="12.9794" y1="-4.318" x2="12.9794" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="6.223" x2="-7.493" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-6.223" x2="-2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="2.032" y1="0.254" x2="2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-6.223" x2="2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-6.223" x2="2.5146" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-6.223" x2="-2.9718" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-6.223" x2="-2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="0.254" x2="-7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="-6.223" x2="-2.9718" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.318" x2="2.032" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-4.318" x2="-2.032" y2="0.254" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-4.318" x2="2.032" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-4.318" x2="-7.0358" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-4.318" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="-4.318" x2="-7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="1.651" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-3.683" x2="-1.651" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-3.683" x2="-1.651" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="-3.683" x2="-3.3528" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="-3.683" x2="-6.6548" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="-3.683" x2="-6.6548" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="-0.508" x2="-6.2738" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-0.508" x2="-3.7338" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-0.508" x2="-1.27" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.508" x2="1.27" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-7.493" y1="-6.223" x2="-7.493" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0.635" x2="-7.493" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="3.175" x2="2.5146" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="3.175" x2="-7.493" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="3.429" x2="-2.032" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="5.969" x2="2.032" y2="5.969" width="0.1524" layer="21"/>
<wire x1="2.032" y1="5.969" x2="2.032" y2="3.429" width="0.1524" layer="21"/>
<wire x1="2.032" y1="3.429" x2="-2.032" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="3.429" x2="-2.9718" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="3.429" x2="-7.0358" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="3.429" x2="-7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="5.969" x2="-7.0358" y2="5.969" width="0.1524" layer="21"/>
<wire x1="1.4682" y1="4.0849" x2="1.5239" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-1.4732" y1="4.1656" x2="1.5146" y2="4.1189" width="0.1524" layer="21" curve="75.530157"/>
<wire x1="-1.6256" y1="5.0038" x2="1.5288" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-1.5748" y1="5.0546" x2="-1.4311" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-1.6256" y1="4.445" x2="1.4224" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.4986" y1="4.318" x2="1.5494" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-3.5356" y1="4.0849" x2="-3.4799" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-6.477" y1="4.1656" x2="-3.4892" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-6.6294" y1="5.0038" x2="-3.475" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-6.5786" y1="5.0546" x2="-6.4349" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-6.6294" y1="4.445" x2="-3.5814" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="4.318" x2="-3.4544" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-7.0358" y1="0.254" x2="-6.6548" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-3.3528" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-3.3528" y1="0.254" x2="-6.6548" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-7.493" y1="0.635" x2="-6.6548" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.6548" y1="0.635" x2="-3.3528" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="0.635" x2="-1.651" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="0.635" x2="1.651" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.635" x2="-1.651" y2="0.635" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.254" x2="1.651" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="0.254" x2="-1.651" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.254" x2="1.651" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-17.5514" y1="6.223" x2="-7.493" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="-6.223" x2="-12.0396" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="0.254" x2="-7.9756" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="-6.223" x2="-7.9756" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="-6.223" x2="-7.493" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="-6.223" x2="-12.9794" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="-6.223" x2="-12.0396" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-17.0434" y1="0.254" x2="-17.0434" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-17.5514" y1="-6.223" x2="-17.0434" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-17.0434" y1="-6.223" x2="-12.9794" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="-4.318" x2="-7.9756" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="-4.318" x2="-12.0396" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="-4.318" x2="-7.9756" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="-4.318" x2="-17.0434" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="-4.318" x2="-12.9794" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-17.0434" y1="-4.318" x2="-17.0434" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-8.3566" y1="-3.683" x2="-8.3566" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-8.3566" y1="-3.683" x2="-11.6586" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-11.6586" y1="-3.683" x2="-11.6586" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-13.3604" y1="-3.683" x2="-13.3604" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-13.3604" y1="-3.683" x2="-16.6624" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="-16.6624" y1="-3.683" x2="-16.6624" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-16.6624" y1="-0.508" x2="-16.2814" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-13.3604" y1="-0.508" x2="-13.7414" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-11.6586" y1="-0.508" x2="-11.2776" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-8.3566" y1="-0.508" x2="-8.7376" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-17.5514" y1="-6.223" x2="-17.5514" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.5514" y1="0.635" x2="-17.5514" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-17.5514" y1="3.175" x2="-7.493" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-17.5514" y1="3.175" x2="-17.5514" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="3.429" x2="-12.0396" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="5.969" x2="-7.9756" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="5.969" x2="-7.9756" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-7.9756" y1="3.429" x2="-12.0396" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="3.429" x2="-12.9794" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="3.429" x2="-17.0434" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-17.0434" y1="3.429" x2="-17.0434" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="5.969" x2="-17.0434" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-8.5394" y1="4.0849" x2="-8.4837" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-11.4808" y1="4.1656" x2="-8.493" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-11.6332" y1="5.0038" x2="-8.4788" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-11.5824" y1="5.0546" x2="-11.4387" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-11.6332" y1="4.445" x2="-8.5852" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.5062" y1="4.318" x2="-8.4582" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-13.5432" y1="4.0849" x2="-13.4875" y2="5.0545" width="0.1524" layer="21" curve="90.564135"/>
<wire x1="-16.4846" y1="4.1656" x2="-13.4968" y2="4.1188" width="0.1524" layer="21" curve="75.528719"/>
<wire x1="-16.637" y1="5.0038" x2="-13.4826" y2="5.0588" width="0.1524" layer="21" curve="-100.022513"/>
<wire x1="-16.5862" y1="5.0546" x2="-16.4425" y2="4.1297" width="0.1524" layer="21" curve="104.208873"/>
<wire x1="-16.637" y1="4.445" x2="-13.589" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="4.318" x2="-13.462" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-17.0434" y1="0.254" x2="-16.6624" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-12.9794" y1="0.254" x2="-13.3604" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-13.3604" y1="0.254" x2="-16.6624" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-17.5514" y1="0.635" x2="-16.6624" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.6624" y1="0.635" x2="-13.3604" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-13.3604" y1="0.635" x2="-11.6586" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.3566" y1="0.635" x2="-11.6586" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.9756" y1="0.254" x2="-8.3566" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-12.0396" y1="0.254" x2="-11.6586" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-11.6586" y1="0.254" x2="-8.3566" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-7.493" y1="0.635" x2="-8.3566" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="-6.223" x2="-7.0358" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="3.175" x2="17.5514" y2="3.175" width="0.1524" layer="21"/>
<wire x1="17.5514" y1="6.223" x2="2.5146" y2="6.223" width="0.1524" layer="21"/>
<pad name="5" x="5.0038" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="6" x="10.0076" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="7" x="15.0114" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="3" x="-5.0038" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="1" x="-15.0114" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="-10.0076" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-17.5768" y="6.731" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.5768" y="-8.636" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-16.9926" y="1.27" size="1.27" layer="21" ratio="10">1</text>
<text x="-11.9126" y="1.27" size="1.27" layer="21" ratio="10">2</text>
<text x="-6.985" y="1.27" size="1.27" layer="21" ratio="10">3</text>
<text x="-1.905" y="1.27" size="1.27" layer="21" ratio="10">4</text>
<text x="3.0226" y="1.27" size="1.27" layer="21" ratio="10">5</text>
<text x="8.1026" y="1.27" size="1.27" layer="21" ratio="10">6</text>
<text x="13.1826" y="1.27" size="1.27" layer="21" ratio="10">7</text>
<rectangle x1="3.7338" y1="-2.54" x2="6.2738" y2="0.254" layer="51"/>
<rectangle x1="8.7376" y1="-2.54" x2="11.2776" y2="0.254" layer="51"/>
<rectangle x1="13.7414" y1="-2.54" x2="16.2814" y2="0.254" layer="51"/>
<rectangle x1="-6.2738" y1="-2.54" x2="-3.7338" y2="0.254" layer="51"/>
<rectangle x1="-1.27" y1="-2.54" x2="1.27" y2="0.254" layer="51"/>
<rectangle x1="-16.2814" y1="-2.54" x2="-13.7414" y2="0.254" layer="51"/>
<rectangle x1="-11.2776" y1="-2.54" x2="-8.7376" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="AK300/2" urn="urn:adsk.eagle:package:9881/1" type="box" library_version="3">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/2"/>
</packageinstances>
</package3d>
<package3d name="AK300/7" urn="urn:adsk.eagle:package:9893/1" type="box" library_version="3">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK300/7"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL" urn="urn:adsk.eagle:symbol:9788/2" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KLV" urn="urn:adsk.eagle:symbol:9842/1" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AK300/2" urn="urn:adsk.eagle:component:9912/3" prefix="X" uservalue="yes" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KLV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/2">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9881/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="16" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AK300/7" urn="urn:adsk.eagle:component:9924/3" prefix="X" uservalue="yes" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="22.86" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="17.78" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="12.7" addlevel="always"/>
<gate name="-4" symbol="KL" x="0" y="7.62" addlevel="always"/>
<gate name="-5" symbol="KL" x="0" y="2.54" addlevel="always"/>
<gate name="-6" symbol="KL" x="0" y="-2.54" addlevel="always"/>
<gate name="-7" symbol="KLV" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK300/7">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9893/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="1-U" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="2-L" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="3-R" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="4-D" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="5-T1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="6-T2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="7-T3" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="8-T4" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="9-V1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="10-V2" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="11-V3" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="12-V4" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/2" device="" package3d_urn="urn:adsk.eagle:package:9881/1"/>
<part name="S" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK300/7" device="" package3d_urn="urn:adsk.eagle:package:9893/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="1-U" gate="-1" x="7.62" y="83.82" smashed="yes">
<attribute name="NAME" x="6.35" y="84.709" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="1-U" gate="-2" x="7.62" y="78.74" smashed="yes">
<attribute name="NAME" x="6.35" y="79.629" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="75.057" size="1.778" layer="96"/>
</instance>
<instance part="2-L" gate="-1" x="7.62" y="71.12" smashed="yes">
<attribute name="NAME" x="6.35" y="72.009" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="2-L" gate="-2" x="7.62" y="66.04" smashed="yes">
<attribute name="NAME" x="6.35" y="66.929" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="62.357" size="1.778" layer="96"/>
</instance>
<instance part="3-R" gate="-1" x="7.62" y="58.42" smashed="yes">
<attribute name="NAME" x="6.35" y="59.309" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="3-R" gate="-2" x="7.62" y="53.34" smashed="yes">
<attribute name="NAME" x="6.35" y="54.229" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="49.657" size="1.778" layer="96"/>
</instance>
<instance part="4-D" gate="-1" x="7.62" y="45.72" smashed="yes">
<attribute name="NAME" x="6.35" y="46.609" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="4-D" gate="-2" x="7.62" y="40.64" smashed="yes">
<attribute name="NAME" x="6.35" y="41.529" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="36.957" size="1.778" layer="96"/>
</instance>
<instance part="5-T1" gate="-1" x="7.62" y="33.02" smashed="yes">
<attribute name="NAME" x="6.35" y="33.909" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="5-T1" gate="-2" x="7.62" y="27.94" smashed="yes">
<attribute name="NAME" x="6.35" y="28.829" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="24.257" size="1.778" layer="96"/>
</instance>
<instance part="6-T2" gate="-1" x="7.62" y="20.32" smashed="yes">
<attribute name="NAME" x="6.35" y="21.209" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="6-T2" gate="-2" x="7.62" y="15.24" smashed="yes">
<attribute name="NAME" x="6.35" y="16.129" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="11.557" size="1.778" layer="96"/>
</instance>
<instance part="7-T3" gate="-1" x="7.62" y="7.62" smashed="yes">
<attribute name="NAME" x="6.35" y="8.509" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="7-T3" gate="-2" x="7.62" y="2.54" smashed="yes">
<attribute name="NAME" x="6.35" y="3.429" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-1.143" size="1.778" layer="96"/>
</instance>
<instance part="8-T4" gate="-1" x="7.62" y="-5.08" smashed="yes">
<attribute name="NAME" x="6.35" y="-4.191" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="8-T4" gate="-2" x="7.62" y="-10.16" smashed="yes">
<attribute name="NAME" x="6.35" y="-9.271" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-13.843" size="1.778" layer="96"/>
</instance>
<instance part="9-V1" gate="-1" x="7.62" y="-17.78" smashed="yes">
<attribute name="NAME" x="6.35" y="-16.891" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="9-V1" gate="-2" x="7.62" y="-22.86" smashed="yes">
<attribute name="NAME" x="6.35" y="-21.971" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-26.543" size="1.778" layer="96"/>
</instance>
<instance part="10-V2" gate="-1" x="7.62" y="-30.48" smashed="yes">
<attribute name="NAME" x="6.35" y="-29.591" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="10-V2" gate="-2" x="7.62" y="-35.56" smashed="yes">
<attribute name="NAME" x="6.35" y="-34.671" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-39.243" size="1.778" layer="96"/>
</instance>
<instance part="11-V3" gate="-1" x="7.62" y="-43.18" smashed="yes">
<attribute name="NAME" x="6.35" y="-42.291" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="11-V3" gate="-2" x="7.62" y="-48.26" smashed="yes">
<attribute name="NAME" x="6.35" y="-47.371" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-51.943" size="1.778" layer="96"/>
</instance>
<instance part="12-V4" gate="-1" x="7.62" y="-55.88" smashed="yes">
<attribute name="NAME" x="6.35" y="-54.991" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="12-V4" gate="-2" x="7.62" y="-60.96" smashed="yes">
<attribute name="NAME" x="6.35" y="-60.071" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="3.81" y="-64.643" size="1.778" layer="96"/>
</instance>
<instance part="S" gate="-1" x="71.12" y="-2.54" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="-3.429" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-2" x="71.12" y="2.54" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="1.651" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-3" x="71.12" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="6.731" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-4" x="71.12" y="12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="11.811" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-5" x="71.12" y="17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="16.891" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-6" x="71.12" y="22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="21.971" size="1.778" layer="95"/>
</instance>
<instance part="S" gate="-7" x="71.12" y="27.94" smashed="yes" rot="R180">
<attribute name="NAME" x="72.39" y="27.051" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.93" y="31.623" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="4-D" gate="-1" pin="KL"/>
<wire x1="12.7" y1="45.72" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
<pinref part="6-T2" gate="-1" pin="KL"/>
<wire x1="15.24" y1="20.32" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="-2.54" width="0.1524" layer="91"/>
<junction x="15.24" y="20.32"/>
<pinref part="9-V1" gate="-2" pin="KL"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-22.86" x2="12.7" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="11-V3" gate="-2" pin="KL"/>
<wire x1="12.7" y1="-48.26" x2="15.24" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-48.26" x2="15.24" y2="-22.86" width="0.1524" layer="91"/>
<junction x="15.24" y="-22.86"/>
<pinref part="S" gate="-1" pin="KL"/>
<wire x1="15.24" y1="-2.54" x2="66.04" y2="-2.54" width="0.1524" layer="91"/>
<junction x="15.24" y="-2.54"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="2-L" gate="-2" pin="KL"/>
<wire x1="12.7" y1="66.04" x2="20.32" y2="66.04" width="0.1524" layer="91"/>
<pinref part="3-R" gate="-2" pin="KL"/>
<wire x1="20.32" y1="66.04" x2="20.32" y2="53.34" width="0.1524" layer="91"/>
<wire x1="20.32" y1="53.34" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
<pinref part="10-V2" gate="-2" pin="KL"/>
<wire x1="20.32" y1="53.34" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-35.56" x2="12.7" y2="-35.56" width="0.1524" layer="91"/>
<junction x="20.32" y="53.34"/>
<pinref part="7-T3" gate="-2" pin="KL"/>
<wire x1="12.7" y1="2.54" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<junction x="20.32" y="2.54"/>
<pinref part="S" gate="-2" pin="KL"/>
<wire x1="20.32" y1="2.54" x2="66.04" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="1-U" gate="-2" pin="KL"/>
<wire x1="12.7" y1="78.74" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
<pinref part="5-T1" gate="-2" pin="KL"/>
<wire x1="25.4" y1="78.74" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<wire x1="25.4" y1="27.94" x2="12.7" y2="27.94" width="0.1524" layer="91"/>
<pinref part="8-T4" gate="-2" pin="KL"/>
<wire x1="25.4" y1="27.94" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<wire x1="25.4" y1="7.62" x2="25.4" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-10.16" x2="12.7" y2="-10.16" width="0.1524" layer="91"/>
<junction x="25.4" y="27.94"/>
<pinref part="12-V4" gate="-2" pin="KL"/>
<wire x1="25.4" y1="-10.16" x2="25.4" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-60.96" x2="12.7" y2="-60.96" width="0.1524" layer="91"/>
<junction x="25.4" y="-10.16"/>
<pinref part="S" gate="-3" pin="KL"/>
<wire x1="66.04" y1="7.62" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<junction x="25.4" y="7.62"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="7-T3" gate="-1" pin="KL"/>
<pinref part="6-T2" gate="-2" pin="KL"/>
<wire x1="12.7" y1="7.62" x2="12.7" y2="12.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="12.7" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="7.62" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
<wire x1="17.78" y1="7.62" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<junction x="12.7" y="7.62"/>
<pinref part="8-T4" gate="-1" pin="KL"/>
<wire x1="17.78" y1="-5.08" x2="12.7" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="S" gate="-4" pin="KL"/>
<wire x1="12.7" y1="12.7" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<junction x="12.7" y="12.7"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="3-R" gate="-1" pin="KL"/>
<wire x1="12.7" y1="58.42" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="4-D" gate="-2" pin="KL"/>
<wire x1="30.48" y1="58.42" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<wire x1="30.48" y1="40.64" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
<wire x1="30.48" y1="40.64" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<junction x="30.48" y="40.64"/>
<pinref part="5-T1" gate="-1" pin="KL"/>
<wire x1="30.48" y1="33.02" x2="12.7" y2="33.02" width="0.1524" layer="91"/>
<wire x1="30.48" y1="33.02" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<junction x="30.48" y="33.02"/>
<pinref part="S" gate="-5" pin="KL"/>
<wire x1="30.48" y1="17.78" x2="66.04" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="1-U" gate="-1" pin="KL"/>
<wire x1="12.7" y1="83.82" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<pinref part="2-L" gate="-1" pin="KL"/>
<wire x1="35.56" y1="83.82" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
<wire x1="35.56" y1="71.12" x2="12.7" y2="71.12" width="0.1524" layer="91"/>
<pinref part="9-V1" gate="-1" pin="KL"/>
<wire x1="35.56" y1="71.12" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-17.78" x2="12.7" y2="-17.78" width="0.1524" layer="91"/>
<junction x="35.56" y="71.12"/>
<pinref part="S" gate="-6" pin="KL"/>
<wire x1="66.04" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<junction x="35.56" y="22.86"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="10-V2" gate="-1" pin="KL"/>
<wire x1="12.7" y1="-30.48" x2="30.48" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-30.48" x2="30.48" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="12-V4" gate="-1" pin="KL"/>
<wire x1="30.48" y1="-35.56" x2="30.48" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-43.18" x2="30.48" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-55.88" x2="12.7" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="11-V3" gate="-1" pin="KL"/>
<wire x1="12.7" y1="-43.18" x2="30.48" y2="-43.18" width="0.1524" layer="91"/>
<junction x="30.48" y="-43.18"/>
<wire x1="30.48" y1="-35.56" x2="40.64" y2="-35.56" width="0.1524" layer="91"/>
<junction x="30.48" y="-35.56"/>
<wire x1="40.64" y1="-35.56" x2="40.64" y2="27.94" width="0.1524" layer="91"/>
<pinref part="S" gate="-7" pin="KL"/>
<wire x1="40.64" y1="27.94" x2="66.04" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
