package geo.model.wps
{
	/**
	 * Input object containing the Data or ComplexData elements.
	 */
	public class Input
	{
		public function Input()
		{
		}
		
		/**
		 * Identifier of the parameter name.
		 * &lt;ows:Identifier>a&lt;/ows:Identifier>
		 */
		public var identifier:String;
		
		/**
		 * Identifier of the parameter name.
		 * &lt;ows:Title>A:&lt;/ows:Title>
		 */
		public var title:String;
		
		/**
		 * Identifier of the parameter name.
		 * &lt;ows:Abstract>First polygon to interset.&lt;/ows:Abstract>
		 */
		public var abstract:String;
		
		/**
		 * Data Object containing the ComplexData used for the Execute Object.
		 * @see Data
		 * @see ComplexData
		 */
		public var data:Data;
		
		/**
		 * ComplexData Object containing the formatLists used for the ProcessDescription result Object.
		 * @see ComplexData
		 */
		public var complexData:ComplexData;
	}
}