
/**
Constructor
Do not call Function in Constructor.
*/
class WindowView2()
{

	super();

	//TODO:edit here

}
extends AView;


function WindowView2*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	*/
	
	super.init(context, evtListener);

	//TODO:edit here

};

function WindowView2*onButtonCloseClick(comp, info)
{

	/*

	:  AWindow/WindowView2.lay에서 X버튼을 눌렀을 때,
	   현재 View의 컨테이너를 닫는 함수입니다.

	1. 현재 View의 컨테이너를 찾아 닫기

	*/
	
	// 1.
	this.getContainer().close();

};
