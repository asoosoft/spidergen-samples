
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

//최초 한번만 호출
function WindowView1:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
};
//init 실행 후 호출되는 함수
function WindowView1:onInitDone()
{
	//opener에서 넘어온 파라멘터 정보
	if(this.sendData)
	{
		this.TextId.setText(this.sendData.id||"");
		this.TextPwd.setText(this.sendData.pw||"");
	}
};


function WindowView1:onButtonOkClick(comp, info)
{

	//TODO:edit here
	var uid = this.findCompById('TextId').getText(),
		upw = this.findCompById('TextPwd').getText();

	// 텍스트박스 체크
	if(!uid || !upw){
		alert('정보를 입력해주세요.');
		return false;
	};
	
	// 뷰의 컨테이너를 찾아서 닫는다. 닫을때 텍스트박스의 데이터를 보낸다.
	var data = {
		userId : uid,
		userPw : upw
	};
	this.getContainer().close(data);
};

function WindowView1:onButtonCancelClick(comp, info)
{

	//TODO:edit here
	
	//뷰의 컨테이너를 찾아서 닫는다.
	this.getContainer().close(0);
};

function WindowView1:onButtonCloseClick(comp, info)
{

	//TODO:edit here
	this.getContainer().close(0);
};
