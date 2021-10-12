
/**
Constructor
Do not call Function in Constructor.
*/
class Button()
{
	
	super();

}
extends AView;


function Button*init(context, evtListener)
{

	super.init(context, evtListener);

	//TODO:edit here

};


function Button*onbtnNormalClick(comp, info)
{

	/*

	:  Normal 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. clearStateClass() 메소드를 사용해 버튼의 상태를 초기화
	2. doSetBtnStateText() 메소드를 사용해 버튼의 텍스트를 현재 컴포넌트(==Normal 버튼)의 텍스트로 설정
	   > getText() 메소드를 버튼 컴포넌트에서 사용하면, 버튼에 쓰여 있는 텍스트의 내용을 가져옵니다.

	*/
	
	// 1.
	this.btnState.clearStateClass();
	// 2.
	this.doSetBtnStateText(comp.getText());
	
};


function Button*onbntOverClick(comp, info)
{

	/*

	:  Over 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. changeBtnState() 메소드를 사용해 변경하고자 하는 상태의 값을 인자로 전달
	2. doSetBtnStateText() 메소드를 사용해 버튼의 텍스트를 현재 컴포넌트(==Over 버튼)의 텍스트로 설정
	   > getText() 메소드를 버튼 컴포넌트에서 사용하면, 버튼에 쓰여 있는 텍스트의 내용을 가져옵니다.

	*/
	
	// 1.
	this.btnState.changeBtnState(AButton.OVER);
	// 2.
	this.doSetBtnStateText(comp.getText());
};


function Button*onbtnDownClick(comp, info)
{

	/*

	:  Down 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. changeBtnState() 메소드를 사용해 변경하고자 하는 상태의 값을 인자로 전달
	2. doSetBtnStateText() 메소드를 사용해 버튼의 텍스트를 현재 컴포넌트(==Down 버튼)의 텍스트로 설정
	   > getText() 메소드를 버튼 컴포넌트에서 사용하면, 버튼에 쓰여 있는 텍스트의 내용을 가져옵니다.

	*/
	
	// 1.
	this.btnState.changeBtnState(AButton.DOWN);
	// 2.
	this.doSetBtnStateText(comp.getText());

};

function Button*onbtnDisableClick(comp, info)
{

	/*

	:  Disable 버튼을 클릭했을 때 실행되는 함수입니다.
	
	1. changeBtnState() 메소드를 사용해 변경하고자 하는 상태의 값을 인자로 전달
	2. doSetBtnStateText() 메소드를 사용해 버튼의 텍스트를 현재 컴포넌트(==Disable 버튼)의 텍스트로 설정
	   > getText() 메소드를 버튼 컴포넌트에서 사용하면, 버튼에 쓰여 있는 텍스트의 내용을 가져옵니다.

	*/
	
	// 1.
	this.btnState.changeBtnState(AButton.DISABLE);
	// 2.
	this.doSetBtnStateText(comp.getText());
	
};

