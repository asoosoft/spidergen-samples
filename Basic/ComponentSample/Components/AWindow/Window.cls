
/**
Constructor
Do not call Function in Constructor.
*/
class Window()
{

	super();

	//TODO:edit here

}
extends AView;


function Window*init(context, evtListener)
{

	super.init(context, evtListener);

	var thisObj = this,
		getPath = function(path){
			var len = path.length;
			var last = path.lastIndexOf("/");
			return path.substring(0,last);
		};
	
	this.urlPath = getPath(this.url);

};

function Window*onButtonDialogClick(comp, info)
{
	
	/*

	:  AWindow를 생성해 데이터를 받고 알람으로 띄우는 예제입니다.
	
	1. 컨테이너 id값을 가진 AWindow 객체 생성, 변수에 할당
	2. openAsDialog(url, parent, width, height) 메소드를 사용해 다이얼로그 형식의 AWindow 오픈
	3. sendData 메소드를 사용해 AWindow 객체에 파라미터 전송
	4. setResultCallback 함수를 사용해 결과값을 받았을 경우, AToast를 사용해 알람 띄우기
	
	*/

	// 1.
	var wnd = new AWindow('dialog-window');
	// 2.
	wnd.openAsDialog(this.urlPath + '/WindowView1.lay', this.getContainer(), 400, 210);
	// 3.
	wnd.getView().sendData = {
		id: "guestId",
		pw: "guestPw"
	};
	// 4.
	wnd.setResultCallback(function(result)
  	{
		if(result){
			AToast.show('User ID : ' + result.userId + '\n User PW : ' + result.userPw);
		}
	});
	
};

function Window*onButtonFullWindowClick(comp, info)
{

	/*

	:  화면 전체를 채우는 AWindow 예제입니다.
	+  Window.lay 파일에서 Full View 옵션 선택을 선행해야 합니다.
	
	1. 컨테이너 id값을 가진 AWindow 객체 생성, 변수에 할당
	2. AWindow를 닫을 때, this의 onWindowResult 함수 호출 (119번째 줄 참조)
	3. open(url, parent, top, left, width, height) 메소드를 사용해 AWindow 띄우기
	
	*/

	// 1.
	var wnd = new AWindow('full-window');
	// 2.
	wnd.setResultListener(this);
	// 3.
	wnd.open(this.urlPath + '/WindowView2.lay', this.getContainer(), 0, 0, '100%', '100%');
	
};

function Window*onButtonWindowOptionClick(comp, info)
{

	/*

	:  AWindow의 옵션을 사용하는 예제입니다. 옵션 설정을 변경해보며 사용해 보세요.
	   (modalBgOption 기본값 'none'
	    overflow      기본값 'hidden'
		dragHandle    기본값 null
		focusOnInit   기본값 true
		위 옵션 이외의 기본값은 모두 false입니다.
		기본값을 변경하는 옵션의 경우만 남기고 사용하시면 됩니다.)
	
	1. setWindowOption({options}) 메소드를 사용해 AWindow 옵션 설정
	2. open(url, parent, top, left, width, height) 메소드를 사용해 AWindow 띄우기
	
	*/

	var wnd = new AWindow('option-window');
	// 1.
	wnd.setWindowOption({
		isModal: true,             	// modal 여부
		isFocusLostClose: false,    // modal이 포커스를 잃을 경우 창 닫기 여부
		isFocusLostHide: false,     // modal이 포커스를 잃을 경우 창 숨기기 여부
		isCenter: true,            	// modal 중앙 배치 여부
		isResizable: true,         	// modal 크기 resize 여부
		isDraggable: true,        	// modal 드래그 여부
		modalBgOption: 'none',      // modal 주변 배경색을 none, light, dark 중에서 설정
		overflow: 'hidden',         // overflow일 경우 hidden, auto, visible, scroll 중에서 설정
		dragHandle: null,           // drag handle을 적용할 container 이름 혹은 class 이름 기입
		focusOnInit: false,         // init 될 때 자동으로 AWindow의 (tabIndex기준)첫 번째 컴포넌트에 포커스 여부
		inParent: false,            /* 부모 컨테이너 안에 창을 띄울 경우 사용
									   + isModal: false 일 것
									   + 부모 컨테이너보다 위에 뜨게 하기 위해서는 true 설정 */
	});
	// 2.
	wnd.open(this.urlPath + '/WindowView3.lay', this.getContainer());

};

function Window*onWindowResult(result, data, awindow)
{

	/*

	:  AWindow를 띄울 때 setResultListener 호출한 경우,
	   close시 이 함수를 통해 결과값이 처리가 됩니다.

	1. 호출한 AWindow의 컨테이너 id 저장
	2. 결과값이 있을 경우 해당 값을 AToast를 사용해 알람 띄우기
	3. 결과값이 없을 경우 AToast를 사용해 close 알람 띄우기

	*/
	
	// 1.
	var winId = awindow.getContainerId();
	// 2.
	if(winId == 'dialog-window'){
		if(result){
			AToast.show('User ID : ' + result.userId + '\n User PW : ' + result.userPw);
		}
	}
	// 3.
	else if(winId == 'full-window'){
		setTimeout(function(){
			AToast.show('Full Window Closed');
		},500);
	}
	
};
