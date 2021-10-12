
/**
Constructor
Do not call Function in Constructor.
*/
class WindowView1()
{

	super();

	//TODO:edit here

}
extends AView;

function WindowView1*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	*/

	super.init(context, evtListener);

	//TODO:edit here
	
};

function WindowView1*onInitDone()
{

	/*

	:  init 실행 후 호출되는 함수입니다.

	1. AWindow/Window.cls의 52번째 줄에서 전달받은 데이터의 값 == this.sendData
	2. this.sendData의 값이 있다면, this의 TextId와 TextPwd에 값 할당
	   (AWindow/WindowView1.lay에서 TextId와 TextPwd에 해당하는 컴포넌트를 확인해 보세요.)

	*/
	
	// 1.
	if(this.sendData)
	{
		// 2.
		this.TextId.setText(this.sendData.id||"");
		this.TextPwd.setText(this.sendData.pw||"");
	}
	
};


function WindowView1*onButtonOkClick(comp, info)
{

	/*

	:  AWindow/WindowView1.lay에서 확인 버튼을 눌렀을 때,
	   현재 컨테이너를 닫으며 TextId와 TextPwd의 값을 전달하는 함수입니다.

	1. 새로운 변수에 TextId와 TextPwd의 값을 할당
	2. TextId와 TextPwd의 값이 둘 중 하나라도 없다면 알람 띄운 후 함수 종료
	3. TextId와 TextPwd의 값이 둘 다 있다면 새로운 변수에 값을 담아 전달

	*/
	
	// 1.
	var uid = this.findCompById('TextId').getText(),
		upw = this.findCompById('TextPwd').getText();

	// 2.
	if(!uid || !upw){
		alert('정보를 입력해주세요.');
		return false;
	}
	
	// 3.
	var data = {
		userId : uid,
		userPw : upw
	};
	
	this.getContainer().close(data);
	
};

function WindowView1*onButtonCancelClick(comp, info)
{

	/*

	:  AWindow/WindowView1.lay에서 취소 버튼을 눌렀을 때,
	   현재 View의 컨테이너를 닫는 함수입니다.

	1. 현재 View의 컨테이너를 찾아 닫기

	*/
	
	// 1.
	this.getContainer().close(0);
	
};

function WindowView1*onButtonCloseClick(comp, info)
{

	/*

	:  AWindow/WindowView1.lay에서 X버튼을 눌렀을 때,
	   현재 View의 컨테이너를 닫는 함수입니다.

	1. 현재 View의 컨테이너를 찾아 닫기

	*/
	
	// 1.
	this.getContainer().close(0);
	
};
