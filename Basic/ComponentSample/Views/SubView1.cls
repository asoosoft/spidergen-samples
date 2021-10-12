
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


//최초 실행시 한번만 불려지는 함수
function SubView1:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

//Prev 버튼을 클릭을 했을 경우..
function SubView1:onButtonPrevClick(comp, info)
{
	//컨테이너에 있는 네비게이터를 찾아서 
	//이전페이지로 이동하는 방법
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = this.getContainer().navigator;
	
	//이전페이지로 이동가능한지 체크
	if(navi.canGoPrev()) navi.goPrevPage();
	else
	{
		if(toastIs) return;
		Toast.show("이전 페이지 히스토리 정보가 없습니다.");
	}
};


//Next 버튼을 클릭을 했을 경우..
function SubView1:onButtonNextClick(comp, info)
{
	//네비게이터 이름으로 네비게이터를 찾은다음 
	//다음페이지로 이동하는 방법
	//페이지 히스토리가 있어야 페이지 이동이 됩니다.
	var navi = ANavigator.find('mainNavigator');
	
	//다음페이지로 이동가능한지 체크
	if(navi.canGoNext()) navi.goNextPage();
	else AToast.show("다음 페이지 히스토리 정보가 없습니다.");
};


//바로 서브뷰2 페이지로 이동
function SubView1:onButtonSubView2Click(comp, info)
{
	// 입력된 값을 SubView2 로 넘기면서 페이지 이동하는 방법
	var data = {
		textData: this.TextData.getText()
	};
	this.getContainer().navigator.goPage('SubView2', data);

};

//페이지 히스토리 삭제
function SubView1:onHistoryClearClick(comp, info)
{

	this.getContainer().navigator.clearHistory();
	
	AToast.show("페이지 히스토리 삭제되었습니다.");

};
