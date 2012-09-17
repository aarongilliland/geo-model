package geo.model.wps
{
	import flash.display.Sprite;
	
	import mx.collections.ArrayCollection;
	import mx.controls.List;
	
	public class Description
	{
		public function Description()
		{
			super();
		}
		
		/**
		 * Supported output formats.
		 */
		public var outputFormats:List;
		
		/**
		 * Supported input formats.
		 */
		public var inputFormats:List;
		
		/**
		 * Abstract actual description of the process.
		 * 		&lt;ows:Abstract>Returns the intersectoin between a and b (eventually an
		 *	empty collection if there is no intersection)&lt;/ows:Abstract>
		 */
		public var abstract:String;
		
		/**
		 * Human readable version of identifiier.
		 * 		&lt;ows:Title>Returns the intersectoin between a and b (eventually an
		 *	empty collection if there is no intersection)&lt;/ows:Title>
		 */
		public var title:String;
		
		/**
		 * String identifier (process name).
		 * &lt;ows:Identifier>JTS:intersection&lt;/ows:Identifier>
		 * By Default exclude namespace... 'JTS:intersection' becomes 'intersection' to the user.
		 */
		public var identifier:String;
		
		/**
		 * DataInputs ArrayCollection of data elements for input.
		 * This can contain another process (subprocessing).
		 *       &lt;wps:Data>
		 *			&lt;wps:ComplexData mimeType="text/xml; subtype=gml/3.1.1"><![CDATA[...]]>&lt;/wps:ComplexData>
		 *		&lt;/wps:Data>
		 */
		public var dataInputs:ArrayCollection;
	}
}