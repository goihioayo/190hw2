<speakers>
{
  for $a in distinct-values(doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT/SCENE/SPEECH/SPEAKER)
  where some $c in doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT/SCENE/SPEECH
  satisfies (count($c/LINE) > 0 and $c/SPEAKER = $a)
  return
    <character> {fn:data($a)}</character>
    

}
</speakers>