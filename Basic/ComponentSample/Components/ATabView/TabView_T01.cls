
/**
Constructor
Do not call Function in Constructor.
*/
class SubView1()
{
	super();

	//TODO:edit here

}
extends AView;


function SubView1:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function SubView1:onButtonSetTitleClick(comp, info)
{

	//TODO:edit here
	
	this.owner.getRootView().setTitle('Hello Sub View 1~!');

};

//뷰의 활성화가 완료되면 호출된다.
function SubView1:onActiveDone(reload) 
{
	// 메인뷰 라벨을 변경한다.
	this.owner.getRootView().setTitle(this.TitleLabel.getText());
};