
/**
 * 
 */

class MyCompEvent(acomp)
{
	super(acomp);
	
}
extends AEvent;


//---------------------------------------------------------------------------------------------------
//	Component Event Functions
//	events: ['click']

//	MyComp.CONTEXT.events 변수에 추가적으로 명시한 이벤트는 interface 함수를 정의해야 합니다.
//	이 interface 함수는 MyComp 객체에 click 이벤트를 등록한 경우 
//	객체가 초기화(init) 될 때 한번만 호출됩니다.
function MyCompEvent*click()
{
	//	실제 구현은 AEvent 의 _click 함수에 구현 되어져 있습니다.
	//	click 이벤트 구현을 변경 하려면 아래와 같이 _click 함수를 재구현 하십시요.
	
	this._click();
};


//---------------------------------------------------------------------------------------------------

function MyCompEvent*_click()
{
	//	this.acomp 는 MyComp 객체입니다.
	var acomp = this.acomp;
	
	//	jQuery click 을 사용하여 구현.
	acomp.$ele.click(function(e)
	{
		acomp.reportEvent('click', acomp.getText(), e);
	});
};