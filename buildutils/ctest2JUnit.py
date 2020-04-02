from lxml import etree
import io
import sys

TAGfile = open(sys.argv[1]+"/Testing/TAG", 'r')
dirname = TAGfile.readline().strip()

xmlfile = open(sys.argv[1]+"/Testing/"+dirname+"/Test.xml", 'r')
xslfile = open(sys.argv[2], 'r')

xmlcontent = xmlfile.read()
xslcontent = xslfile.read()

#xmldoc = etree.parse(io.StringIO(xmlcontent))
xmldoc = etree.parse(sys.argv[1]+"/Testing/"+dirname+"/Test.xml")
xslt_root = etree.XML(xslcontent)
transform = etree.XSLT(xslt_root)

result_tree = transform(xmldoc)
print(result_tree)
