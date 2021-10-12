
/**
Constructor
Do not call Function in Constructor.
*/
class SubView2()
{

	super();

	//TODO:edit here

}
extends AView;

function SubView2*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	*/
	
	super.init(context, evtListener);

	//TODO:edit here

};

function SubView1*onButtonSetTitleClick(comp, info)
{

	/*

	:  Title 텍스트를 변경하는 함수입니다.

	1. setTitle() 메소드를 사용해 title의 텍스트를 변경
	
	*/
	
	// 1. 
	this.owner.getRootView().setTitle('Hello Sub View 2~!');

};

function SubView1*onActiveDone(reload) 
{

	/*

	:  View 활성화가 끝나면 호출되는 함수입니다.

	1. SubView2.lay의 TitleLabel을 subViewLabel 변수에 할당
	2. setTitle() 메소드를 사용
	
	*/
	
	// 1.
	var subViewLabel = this.findCompById('TitleLabel');
	
	// 2.
	this.owner.getRootView().setTitle(subViewLabel.getText());
	
};