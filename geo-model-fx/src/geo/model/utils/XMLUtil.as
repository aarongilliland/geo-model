package geo.model.utils
{
	import mx.collections.ArrayCollection;
	import mx.utils.XMLUtil;
	
	public class XMLUtil 
	{
		private static var WPS:Namespace = new Namespace("wps", "http://www.opengis.net/wps/1.0.0");
		private static var OGC:Namespace = new Namespace("ogc", "http://www.opengis.net/ogc");
		private static var OWS:Namespace = new Namespace("ows", "http://www.opengis.net/ows/1.1");
		private static var WFS:Namespace = new Namespace("wfs", "http://www.opengis.net/wfs");
		private static var GML:Namespace = new Namespace("gml", "http://www.opengis.net/gml");
		
		public static function toProcessTree(xml:XML):XMLList {
			var nsRegEx:RegExp = new RegExp(" xmlns(?:.*?)?=\".*?\"", "wps");
			
			var resultXML:XML = new XML(String(XML).replace(nsRegEx, "")); 
			return xml.children();
		}
		
		public static function toAC(xml:XML):ArrayCollection {
			var ac:ArrayCollection = new ArrayCollection();
			for each(var p:String in xml..WPS::Process..OWS::Identifier){
				var procArr:Array = p.split(":");
				//var ns:String = p.split(":",1)[0];
				//var process:String = p.split(":",1)[2];
				var obj:Object = {Process:procArr[1]};
				ac.addItem(obj);
			}
			return ac;
		}
		
	}
}