
//super class 를 import 합니다.
import "Framework/afc/event/AButtonEvent.js"

/**
 * 
 */

class MyButtonEvent(acomp)
{
	super(acomp);
	
}
extends AButtonEvent;


//---------------------------------------------------------------------------------------------------
//	Component Event Functions
//	events: ['click', 'longtab', 'myclick']


//	click, longthab 은 AButtonEvent 에 정의되어 있으므로 추가로 등록할 필요가 없습니다.
//	이벤트 구현을 변경 하려면 _click, _longthab 함수를 재구현 하면 됩니다.

//	MyButton.CONTEXT.events 변수에 추가적으로 명시한 이벤트는 interface 함수를 정의해야 합니다.
//	이 interface 함수는 MyButton 객체에 myclick 이벤트를 등록한 경우 
//	객체가 초기화(init) 될 때 한번만 호출됩니다.


function MyButtonEvent*myclick()
{
	//	이벤트 명에 대한 외부 인터페이스는 myclick 으로 노출되지만
	//	실제 구현은 MyButtonEvent 의 _myclick 함수에 구현해야 합니다.

	this._myclick();
};

//---------------------------------------------------------------------------------------------------


function MyButtonEvent*_myclick()
{
	var acomp = this.acomp;
	
	//jQuery click 을 사용하여 myclick 을 구현함.
	acomp.$ele.click(function(e)
	{
		//이벤트 리스너에게 이벤트가 발생했음을 알림
		acomp.reportEvent('myclick', null, e);
		
		//컴포넌트 객체에 설정된 정보를 얻어와 적용
		var proto = acomp.getAttr('data-proto'),
			link = acomp.getAttr('data-link');
			
		if(!proto) proto = 'http';
		if(!link) link = 'www.spidergen.org';
		
		window.open(proto+'://'+link, 'MyButton');
	});
};
