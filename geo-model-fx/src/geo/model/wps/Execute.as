package geo.model.actions
{
	import flash.geom.Rectangle;
	
	import geo.model.wps.ProcessDescription;
	
	import mx.collections.ArrayList;
	
	/**
	 * Execute extends the flash.geom.Rectangle object. That way it is easily diagrammable.
	 */
	public class Execute extends Rectangle
	{
		public function Execute(x:Number=0, y:Number=0, width:Number=0, height:Number=0)
		{
			super(x, y, width, height);
		}
		
		/**
		 * String identifier (process name).
		 * &lt;ows:Identifier>JTS:intersection&lt;/ows:Identifier>
		 * By Default exclude namespace... 'JTS:intersection' becomes 'intersection' to the user.
		 */
		public var identifier:String;
		
		/**
		 * Description object contains the response from Describe Process.
		 * Provides input, output, abstract.
		 * @see Description
		 */
		public var description:ProcessDescription;
		
		/**
		 * DataInputs ArrayCollection of Input objects.
		 * This can contain another process (subprocessing).
		 *       &lt;wps:Data>
         	 *		&lt;wps:ComplexData mimeType="text/xml; subtype=gml/3.1.1"><![CDATA[...]]>&lt;/wps:ComplexData>
         	 *	&lt;/wps:Data>
		 */
		public var dataInputs:ArrayList;
		
		/**
		 * Response format is the output format selected from the Description.outputFormat List.
		 *   <code>&lt;wps:ResponseForm>
   		 * 		&lt;wps:RawDataOutput mimeType="text/xml; subtype=gml/3.1.1">
      		 *			&lt;ows:Identifier>result&lt;/ows:Identifier>
    		 *		&lt;/wps:RawDataOutput>
  		 *	&lt;/wps:ResponseForm><code>
		 */
		public var responseFormat:String;
		

	}
}