
/**
Constructor
Do not call Function in Constructor.
*/
class ATextFieldAttrProp()
{
	super();

	this.attrPath = BaseProp.ATTR_PATH + 'ATextField/';

}
extends BaseProp;


function ATextFieldAttrProp*init(context, evtListener)
{
	super.init(context, evtListener);
	
	this.acc.insertItem('Data', this.attrPath+'Data.lay');
	this.acc.insertItem('Option', this.attrPath+'Option.lay');

	//common
	this.insertCommonAttr();
};

function ATextFieldAttrProp*onTextValueChange(comp, info)
{
	var compId = comp.getComponentId();
	var view = theApp.getLayoutView();
	
	if(compId=='AttrValue')
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

function ATextFieldAttrProp*applyValueToSelComp(selComp, dataKey, valGroup, value)
{
	//BaseProp에서 dataKey가 data-option- 이 포함되면 뒷부분의 글자로 옵션이 자동으로 설정된다면 제거해도 됨
	//data-option-focus-selection : 'is' + Focus + Selection -> isFocusSelection 을 옵션에 저장
	//위처럼 처리되면 옵션을 설정할 때 컴포넌트에서 특별한 처리가 필요한 경우는 불가능하므로 다른 방법을 생각해봐야한다
	if(dataKey=='data-option-focus-selection')
	{
		selComp.option['isFocusSelection'] = value;
		//selComp.setOption({isFocusSelection: value});
	}
	
	return super.applyValueToSelComp(selComp, dataKey, valGroup, value);
};
