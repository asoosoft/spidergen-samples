
/**
 *	AComponent 를 상속받아 새로운 컴포넌트를 생성하는 예
 */
class MyComp()
{
	super();

	//TODO:edit here
	
	//	자신이 포함되어져 있는 프레임웍 이름을 지정합니다.
	this.frwName = 'tfc';

}
extends AComponent;

MyComp.CONTEXT = 
{
	//	실제로 구현하고자 하는 컴포넌트의 태그로 변경하십시요.
	tag:'<div data-base="MyComp" data-class="MyComp" class="MyComp-Style">MyComp</div>',//'@componentTag@',

	//	컴포넌트를 lay 파일에 최초로 추가한 후 적용될 속성을 나열합니다.
	//	주로 컴포넌트 사이즈에 관련된 속성을 선언합니다.
    defStyle: 
    {
    	width:'80px', height:'22px' 
    },
   
   	//	AEvent.defEvents = ['actiondown', 'actionmove', 'actionup', 'actioncancel', 'actionenter', 'actionleave', 'keydown', 'keyup'];
   	//	기본 이벤트 즉, AEvent.defEvents 에 정의된 이벤트 외에 
	//	추가적으로 발생시키고자 하는 이벤트 명을 나열합니다.
	
    events: ['click']
};

function MyComp*init(context, evtListener)
{
	super.init(context, evtListener);


};
