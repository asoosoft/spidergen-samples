
/**
Constructor
Do not call Function in Constructor.
*/
class MainView()
{
	super();

	//TODO:edit here

}
extends AView;


function MainView:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};

function MainView:onButtonDialogClick(comp, info)
{

	//TODO:edit here
	// 컨테이너 id 를 설정하고 AWindow 를 생성한다.
	var wnd = new AWindow('dialog-window');
	// 다이얼로그 형식의 윈도우를 오픈한다.
	// 화면단에서 Full View 옵션이 비선택으로 해야 한다.
	// url, parent, width, height
	wnd.openAsDialog('Views/WindowView1.lay', this.getContainer(), 400, 210);
	//윈도우에 파라메터 전송
	wnd.getView().sendData = {
		id: "guestId",
		pw: "guestPw"
	};
	wnd.setResultCallback(function(result)
  	{
		//결과값이 있을겨우
		if(result){
			AToast.show('User ID : ' + result.userId + '\n User PW : ' + result.userPw);
		};
	});
};

function MainView:onButtonFullWindowClick(comp, info)
{

	//TODO:edit here
	// 컨테이너 id 를 설정하고 AWindow 를 생성한다.
	var wnd = new AWindow('full-window');
	// 윈도우를 닫을때 this의 onWindowResult  함수를 호출하도록 한다.
	wnd.setResultListener(this);
	// 윈도우를 오픈한다.
	// 화면단에서 Full View 옵션이 선택되어야 한다.
	// url, parent, top, left, width, height
	wnd.open('Views/WindowView2.lay', this.getContainer(), 0, 0, '100%', '100%');
};

//window option 
//	{
//		isModal: false,				//모달 모드로 오픈할 지
//		isCenter: false,			//자동 중앙정렬 할지
//		isFocusLostClose: false,	//모달인 경우 포커스를 잃을 때 창을 닫을지
//		isFocusLostHide: false,		//모달인 경우 포커스를 잃을 때 창을 숨길지
//		modalBgOption: 'dark',		//none, light, dark 모달인 경우 배경을 어둡기 정도
//		overflow: 'hidden',			//hidden, auto, visible, scroll
//	};
function MainView:onButtonWindowOptionClick(comp, info)
{

	//TODO:edit here
	// 컨테이너 id 를 설정하고 AWindow 를 생성한다.
	var wnd = new AWindow('option-window');
	// 윈도우의 옵션을 설정한다.
	wnd.setWindowOption({
		isModal : true,
		isCenter : true,
		isFocusLostClose : true,
		modalBgOption : 'light'
	});
	// 윈도우를 오픈한다.
	// url, parnt, top, left, width, height
	wnd.open('Views/WindowView1.lay', this.getContainer(), 0, 0, 400, 210);

};

//윈도우을 띄울때 setResultListener 호출을 했다면.
//close시 여기로 결과값이 처리가 됩니다.
function MainView:onWindowResult(result, data, awindow)
{
	// 호출한 윈도우의 컨테이너id를 저장한다.
	var winId = awindow.getContainerId();
	
	if(winId == 'dialog-window'){
		//결과값이 있을겨우
		if(result){
			AToast.show('User ID : ' + result.userId + '\n User PW : ' + result.userPw);
		};
	}
	else if(winId == 'full-window'){
		setTimeout(function(){
			AToast.show('Full Window Closed');
		},500);
	};
};