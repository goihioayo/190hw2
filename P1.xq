<result>
{
for $a in doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT
for $b in $a/SCENE/SPEECH/LINE
where $b = "Et tu, Brute! Then fall, Caesar."
  return
    <answer>
      <who>{fn:data($b/../SPEAKER)}</who>
      <when>{fn:data($a/TITLE)}</when>
    </answer>
    
}
</result>
