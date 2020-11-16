
//super class 를 import 합니다.
import "Framework/afc/component/AButton.js"

/**
 *	기존 컴포넌트를 상속받아 기능을 확장하는 예
 */
class MyButton()
{
	super();

	//	자신이 포함되어져 있는 프레임웍 이름을 지정합니다.
	this.frwName = 'tfc';

}
extends AButton;

MyButton.CONTEXT = 
{
	//	실제로 구현하고자 하는 컴포넌트의 태그로 변경하십시요.
	tag:'<button data-base="MyButton" data-class="MyButton" class="AButton-Style MyButton-Style">MyButton</button>',//'@componentTag@',

	//	컴포넌트를 lay 파일에 최초로 추가한 후 적용될 속성을 나열합니다.
	//	주로 컴포넌트 사이즈에 관련된 속성을 선언합니다.
    defStyle: 
    {
    	width:'80px', height:'22px' 
    },
   
   	//	AEvent.defEvents = ['actiondown', 'actionmove', 'actionup', 'actioncancel', 'actionenter', 'actionleave', 'keydown', 'keyup'];
   	//	기본 이벤트 즉, AEvent.defEvents 에 정의된 이벤트 외에 
	//	추가적으로 발생시키고자 하는 이벤트 명을 나열합니다.
	
	//	이 예에서는 AEvent 에 이미 정의되어져 있는 이벤트 click, longtab 과, 
	//	MyButton 에서 새롭게 정의할 myclick 이벤트를 설정했습니다.
    events: ['click', 'longtab', 'myclick']
};

function MyButton*init(context, evtListener)
{
	super.init(context, evtListener);


};
