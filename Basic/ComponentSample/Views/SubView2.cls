
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

//최초 실행시 한번만 불려지는 함수
function SubView2:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};


//페이지가 불려진 후 처리되는 함수
function SubView2:onActiveDone(reload){
	// 페이지데이터를 저장한다.
	var data = this.getContainer().getPageData();
	
	if(data){
		AToast.show('Hello ' + data.textData + '~');
	}
};


//Prev 버튼을 클릭을 했을 경우..
function SubView2:onButtonPrevClick(comp, info)
{

	//컨테이너에 있는 네비게이터를 찾아서 
	//이전페이지로 이동하는 방법
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = this.getContainer().navigator;
	if(navi.canGoPrev()) navi.goPrevPage();
	else AToast.show("이전 페이지 히스토리 정보가 없습니다.");

};

//Next 버튼을 클릭을 했을 경우..
function SubView2:onButtonNextClick(comp, info)
{

	//TODO:edit here
	//컨테이너에 있는 네비게이터를 찾아서
	//다음페이지로 이동한다.
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = this.getContainer().navigator;
	if(navi.canGoNext()) navi.goNextPage();
	else AToast.show("다음 페이지 히스토리 정보가 없습니다.");
	
};


//바로 서브뷰3 페이지로 이동
function SubView2:onButtonSubView3Click(comp, info)
{

	//TODO:edit here
	// 컨테이너에 있는 네비게이터를 찾아서 SubView3 로 이동한다.
	this.getContainer().navigator.goPage('SubView3');
};