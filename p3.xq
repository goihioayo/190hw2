<result>
{
  for $a in distinct-values(doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT/SCENE/SPEECH/SPEAKER)
where some $b in doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT/SCENE/SPEECH
      satisfies($b/SPEAKER = $a and count($b/LINE) > 0)
  return 
    <answer>
      <who>
      {fn:data($a)}
      </who>
      {
        for $x in doc("http://cseweb.ucsd.edu/classes/fa16/cse190-d/xml/j_caesar.xml")/PLAY/ACT
        where $a = $x//SPEAKER
        return 
        <when>
        {fn:data($x/TITLE)}
        </when>
      }
    </answer>
}
</result>