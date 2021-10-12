
/**
Constructor
Do not call Function in Constructor.
*/
class Label()
{

	super();

	//TODO:edit here
	
}
extends AView;


function Label*init(context, evtListener)
{

	super.init(context, evtListener);

	//TODO:edit here
	
};

function Label*onSetTextButtonClick(comp, info)
{
	
	/*

	:  Label1에 Text1의 내용을 추가하는 함수입니다.
	
	1. getText() 메소드를 사용해 Text1의 내용을 가져오고,
	   setText() 메소드를 사용해 가져온 내용을 Label1에 추가합니다.
	
	*/

	// 1.
	this.Label1.setText(this.Text1.getText());
	
};

function Label*onGetTextButtonClick(comp, info)
{
	
	/*

	:  Text2에 Label1의 내용을 추가하는 함수입니다.
	
	1. getText() 메소드를 사용해 Label1의 내용을 가져오고,
	   setText() 메소드를 사용해 가져온 내용을 Text2에 추가합니다.
	
	*/

	// 1.
	this.Text2.setText(this.Label1.getText());
	
};

function Label*onAlignButtonClick(comp, info)
{
	
	/*

	:  Label1의 정렬 방향을 지정해주는 함수입니다.
	
	1. AlignSelect의 getSelectedItem() 메소드를 사용해 정렬 방향의 정보를 가져오고,
	   setTextAlign() 메소드를 사용해 가져온 방향의 정보로 정렬합니다. 
	
	*/

	// 1.
	this.Label1.setTextAlign(this.AlignSelect.getSelectedItem().value);
	
};
