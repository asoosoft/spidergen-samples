
/**
Constructor
Do not call Function in Constructor.
*/
class Progress()
{
	super();

	//TODO:edit here

}
extends AView;


function Progress:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
};

function Progress:onSetValueButtonClick(comp, info)
{
	var val = this.Text1.getText();
	if(isNaN(val)) return false;
	
	// 해당 값을 프로그레스에 표시한다.
	this.Progress1.setValue(val);
};

function Progress:onGetValueButtonClick(comp, info)
{
	// 프로그레스의 현재 값을 라벨에 표시한다.
	this.ResultLabel1.setText('현재 프로그레스의 넓이값은 ' + this.Progress1.getValue() + ' px 입니다.');
};
