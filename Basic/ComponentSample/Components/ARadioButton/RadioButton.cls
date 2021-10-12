
/**
Constructor
Do not call Function in Constructor.
*/
class RadioButton()
{

	/*

	:  클래스 내부에 변수를 선언해 사용합니다.
	
	1. 라디오 버튼 매니저 변수 rdoBtnManager
	2. 버튼 배열 변수 btns

	*/

	super();
	
	// 1.
	this.rdoBtnManager = null;
	// 2.
	this.btns = null;

}
extends AView;

function RadioButton*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.
	
	1. 그룹 이름으로 레이아웃의 버튼 객체 얻기
	   > 객체는 배열로 리턴
	2. 라디오 매니저 생성

	*/

	super.init(context, evtListener);

	// 1.
	this.btns = this.findCompByGroup('btns');	
	// 2.
	this.rdoBtnManager = new RadioBtnManager();
	
};

function RadioButton*onInitDone()
{

	/*

	:  init 이후 실행되는 함수입니다.

	1. 현재 버튼 세팅
	
	*/
	
	// 1.
	this.rdoBtnManager.selectButton(this.btns[0]);
	
};

function RadioButton*onActiveDone()
{	

	/*

	:  뷰 활성화 완료 이후 실행되는 함수입니다.

	1. 세팅된 버튼 클릭 이벤트 발생
	
	*/
	
	// 1.
	this.onRdoBtnClick(this.rdoBtn01);
	
};

function RadioButton*onRdoBtnClick(comp, info)
{

	/*

	:  라디오 버튼 클릭 이벤트 함수입니다.

	1. 클릭 이벤트가 발생한 comp의 텍스트를 getText()를 사용해 가져옵니다.
	   setText() 메소드를 사용해, 가져온 값을 txtRdoText의 텍스트로 설정합니다.
	2. 클릭 이벤트가 발생한 comp의 value를 getValue()를 사용해 가져옵니다.
	   setText() 메소드를 사용해, 가져온 값을 txtRdoValue의 텍스트로 설정합니다.
	
	*/
	
	// 1.	
	this.txtRdoText.setText(comp.getText());
	// 2.
	this.txtRdoValue.setText(comp.getValue());
	
};

function RadioButton*onAButtonClick(comp, info)
{

	/*

	:  라디오 버튼을 클릭하면 해당 버튼을 선택하는 함수입니다.

	1. 라디오 버튼 매니저를 사용해 해당 버튼 comp를 선택합니다.
	
	*/
	
	// 1.
	this.rdoBtnManager.selectButton(comp);
	
};
