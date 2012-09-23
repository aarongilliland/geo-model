package geo.model.wps
{
	import mx.controls.List;

	/**
	 * Class representing the input data elements for WPS Processing.
	 * Typically on a Execute (WPSExecute).
	 * The Data Object is simply a wrapper for the ComplexData object containing further information.
	 */
	public class Data
	{
		public function Data()
		{
		}
		
		/**
		 * Complex Data element used in the WPS Execute.
		 * @see ComplexData.
		 */
		public var complexData:ComplexData;
	}
}