
/**
Constructor
Do not call Function in Constructor.
*/
class SwitchButton()
{
	super();

	//TODO:edit here

}
extends AView;


function SwitchButton:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};
function SwitchButton:onOnButtonClick(comp, info)
{
	// 스위치 버튼을 on 상태로 바꾼다.
	this.SwitchButton1.setValue(true);
};

function SwitchButton:onOffButtonClick(comp, info)
{
	// 스위치 버튼을 off 상태로 바꾼다.
	this.SwitchButton1.setValue(false);
};

function SwitchButton:onGetValueButtonClick(comp, info)
{
	// 스위치 버튼의 값을 가져온다.
	this.ResultLabel1.setText('선택된 값은 ' + this.SwitchButton1.getValue() + ' 입니다.');
};
