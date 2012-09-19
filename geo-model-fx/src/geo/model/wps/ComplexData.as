package geo.model.wps
{
	import mx.collections.ArrayList;

	/**
	 * Class representing the input data elements for WPS Processing.
	 * Used Indirectly from the Input object for the Execute via the Data object.
	 * Used Directly from the Input object for the ProcessDescription result.
	 */
	public class ComplexData
	{
		public function ComplexData()
		{
		}
		
		/**
		 * The String representation of the Mime Type selected for input.
		 * Typically used on the Execute object to set the 'input type' selected.
		 * xml attribute 'mimeType="text/xml; subtype=gml/3.1.1"'
		 */
		public var mimeType:String;
		
		/**
		 * XML subelement containing the input. Commonly CDATA...
		 * Typically used on the Execute object to set the 'input type' selected.
		 * &lt;![CDATA[POLYGON ((10.0 5.0, 25.0 5.0, 20.0 0.0, 10.0 5.0))]]>
		 */
		public var element:String;
		
		/**
		 * ArrayList of Strings representing the supported formats.
		 * Typically on a Describe Process returned ProcessDescription Object.
		 * 			&lt;wps:Supported>
		 *				&lt;wps:Format>
		 *					&lt;<wps:MimeType>text/xml; subtype=gml/3.1.1&lt;/wps:MimeType>
		 *				&lt;/wps:Format>
		 * ...
		 * 			&lt;/wps:Supported>
		 */
		public var supportedFormatList:ArrayList;
		
		/**
		 * ArrayList (usually containing one) of the default formats.
		 * Typically on a Describe Process returned ProcessDescription Object.
		 * 			&lt;wps:Default>
		 *				&lt;wps:Format>
		 *					&lt;wps:MimeType>text/xml; subtype=gml/3.1.1&lt;/wps:MimeType>
		 *				&lt;/wps:Format>
		 *			&lt;/wps:Default>
		 */
		public var defaultFormatList:ArrayList;
	}
}