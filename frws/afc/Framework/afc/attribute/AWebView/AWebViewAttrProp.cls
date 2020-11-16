
/**
Constructor
Do not call Function in Constructor.
*/
class AWebViewAttrProp()
{
	super();

	this.attrPath = BaseProp.ATTR_PATH + 'AWebView/';
}
extends BaseProp;


function AWebViewAttrProp*init(context, evtListener)
{
	super.init(context, evtListener);
	
	this.acc.insertItem('Data', this.attrPath+'Data.lay');

	//common
	//this.insertCommonAttr();
};

