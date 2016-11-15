<result>
{
  for $a in distinct-values(doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT/SCENE/SPEECH/SPEAKER)
where every $b in doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT
satisfies(some $c in $b/SCENE/SPEECH
      satisfies( $c/SPEAKER = $a and count($c/LINE) > 0))
      return
      <character>{fn:data($a)}</character>
}
</result>