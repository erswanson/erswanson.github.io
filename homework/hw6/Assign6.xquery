declare default element namespace "urn:isbn:1-931666-22-9";

<files>
{for $x in collection("file:///c:/Users/erswa/OneDrive/Desktop/xquery-assignment?select=*.xml")

order by (count($x/ead/archdesc/dsc/c01/c02/did))descending  
(: I couldn't figure out how to sort by volume, to extract the extent information in a readable way, so ordered by amount of files descending, which technically doesn't always give the largest volume :)

return 


<file>

<idno>{data($x/ead/eadheader/eadid/@identifier)} </idno>
<title>{string-join(data($x/ead/eadheader/filedesc/titlestmt/titleproper),';')}</title>
<date>{data($x/ead/eadheader/filedesc/titlestmt/titleproper/date/@normal)}</date>
<date-span>{number(substring-after($x/ead/eadheader/filedesc/titlestmt/titleproper/date/@normal, '/')) - number(substring-before($x/ead/eadheader/filedesc/titlestmt/titleproper/date/@normal, '/'))}</date-span>
<author>{string-join(data($x/ead/frontmatter/titlepage/author),';')}</author>
<change>{string-join(data($x/ead/eadheader/revisiondesc/change/date),';')}</change>
<change-count>{count($x/ead/eadheader/revisiondesc/change/date)}</change-count>
<extent>{data($x/ead/archdesc/did/physdesc/extent)}</extent>
<restriction>{string-join(data($x/ead/archdesc/accessrestrict/p),'|')}</restriction>
<file-count>{string-join(count($x/ead/archdesc/dsc/c01/c02/did))}</file-count>

<indexing-terms>

{for $head in $x/ead/archdesc/controlaccess/controlaccess/head

return 
<index-terms>{data($head)}</index-terms>
}




</indexing-terms>


</file>



}
</files>