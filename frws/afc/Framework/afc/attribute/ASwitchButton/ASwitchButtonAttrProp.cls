
/**
Constructor
Do not call Function in Constructor.
*/
class ASwitchButtonAttrProp()
{
	super();

	this.attrPath = BaseProp.ATTR_PATH + 'ASwitchButton/';

}
extends BaseProp;


function ASwitchButtonAttrProp*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
	//this.acc.insertItem('Style', this.attrPath+'Style.lay');

	//common
	this.insertCommonAttr();
};
