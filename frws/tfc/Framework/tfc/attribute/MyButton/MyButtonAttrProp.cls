
afc.loadScript("Framework/afc/attribute/AButton/AButtonAttrProp.js");

/**
 * 구현에 대한 설명은 ~ attribute/MyComp/MyCompAttrProp.cls 파일을 참고하시기 바랍니다.
*/
class MyButtonAttrProp()
{
	super();


}
extends AButtonAttrProp;


function MyButtonAttrProp:init(context, evtListener)
{
	super.init(context, evtListener);
	
	var attrPath = 'Framework/tfc/attribute/MyButton/';

	this.acc.insertItem('Info', attrPath + 'Info.lay', null, null, true);

};

