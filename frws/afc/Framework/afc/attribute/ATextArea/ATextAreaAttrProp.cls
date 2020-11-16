
/**
Constructor
Do not call Function in Constructor.
*/
class ATextAreaAttrProp()
{
	super();

	this.attrPath = BaseProp.ATTR_PATH + 'ATextArea/';

}
extends BaseProp;


function ATextAreaAttrProp*init(context, evtListener)
{
	super.init(context, evtListener);
	
	this.acc.insertItem('Data', this.attrPath+'Data.lay');

	//common
	this.insertCommonAttr();
};

function ATextAreaAttrProp*onTextValueChange(comp, info)
{
	var compId = comp.getComponentId();
	var view = theApp.getLayoutView();
	
	if(compId=='InnerText')
	{
		this.applyValue(comp, info);
		if(view)
		{
			for(var i=0; i<this.selCompArr.length; i++)
			{
				var selComp = this.selCompArr[i];
				var id = selComp.getComponentId();
				view.getDocument().treeRename(selComp, id!=''?id:(selComp.getAttr(afc_.ATTR_CLASS) + ' "' + selComp.getText() + '"'));
			}
		}

		return;
	}
	
	super.onTextValueChange(comp, info);
};