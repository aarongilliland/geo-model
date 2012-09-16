package geo.model.utils
{
	import mx.utils.XMLUtil;
	
	public class XMLUtil 
	{
		
		public static function toProcessTree(xml:XML):XMLList {
			var nsRegEx:RegExp = new RegExp(" xmlns(?:.*?)?=\".*?\"", "wps");
			
			var resultXML:XML = new XML(String(XML).replace(nsRegEx, "")); 
			return xml.children();
		}
		
	}
}