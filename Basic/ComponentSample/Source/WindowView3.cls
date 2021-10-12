
/**
Constructor
Do not call Function in Constructor.
*/
class WindowView3()
{

	super();

	//TODO:edit here

}
extends AView;


function WindowView3*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	*/
	
	super.init(context, evtListener);

	//TODO:edit here

};

function WindowView3*onInitDone()
{

	super.onInitDone();

	//TODO:edit here

};

function WindowView3*onActiveDone(isFirst)
{

	super.onActiveDone(isFirst);

	//TODO:edit here

};

function WindowView3*onButtonCloseClick(comp, info, e)
{

	/*

	:  AWindow/WindowView3.lay에서 X버튼을 눌렀을 때,
	   현재 View의 컨테이너를 닫는 함수입니다.

	1. 현재 View의 컨테이너를 찾아 닫기

	*/
	
	// 1.
	this.getContainer().close(0);
	
};
