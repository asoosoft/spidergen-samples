
/**
Constructor
Do not call Function in Constructor.
*/
class SubView3()
{
	super();

	//TODO:edit here

}
extends AView;


//최초 실행시 한번만 불려지는 함수
function SubView3:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

//Prev 버튼을 클릭을 했을 경우..
function SubView3:onButtonPrevClick(comp, info)
{

	//TODO:edit here
	// 컨테이너에 있는 네비게이터를 찾아서 이전페이지로 이동한다.
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = this.getContainer().navigator;
	if(navi.canGoPrev()) navi.goPrevPage();
	else AToast.show("이전 페이지 히스토리 정보가 없습니다.");

};


//Next 버튼을 클릭을 했을 경우..
function SubView3:onButtonNextClick(comp, info)
{

	//TODO:edit here
	// 컨테이너에 있는 네비게이터를 찾아서 다음페이지로 이동한다.
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = this.getContainer().navigator;
	if(navi.canGoNext()) navi.goNextPage();
	else AToast.show("다음 페이지 히스토리 정보가 없습니다.");

};


//바로 서브뷰1 페이지로 이동
function SubView3:onButtonSubView1Click(comp, info)
{

	//TODO:edit here
	// 컨테이너에 있는 네비게이터를 찾아서 SubView1 로 이동한다.
	this.getContainer().navigator.goPage('SubView1');
};