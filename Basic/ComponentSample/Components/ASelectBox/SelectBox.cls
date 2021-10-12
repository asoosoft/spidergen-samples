
/**
Constructor
Do not call Function in Constructor.
*/
class SelectBox()
{
	super();

	//TODO:edit here

}
extends AView;


function SelectBox*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	1. addItem() 메소드를 사용해 SelectBox2에 아이템을 추가합니다.

	*/
	
	super.init(context, evtListener);
	
	this.SelectBox2.addItem('Item1 : 1', '1');
	this.SelectBox2.addItem('Item2 : 2', '2');
	this.SelectBox2.addItem('Item3 : 3', '3');
	this.SelectBox2.addItem('Item4 : 4', '4');
	this.SelectBox2.addItem('Item5 : 5', '5');
	
};

function SelectBox*onAddButtonClick(comp, info)
{

	/*

	:  Add 버튼을 클릭하면 호출되는 함수입니다.

	1. ItemText와 ItemValue 컴포넌트에 값이 있는지 확인
	2. addItem() 메소드를 사용해 입력된 값을 SelectBox1에 추가
	3. ItemText와 ItemValue 초기화

	*/

	// 1.
	if(this.ItemText.getText().length == 0 || this.ItemValue.getText().length == 0){
		alert('Item Text 또는 Item Value 를 입력하세요.');
		return false;
	}
	
	// 2.
	this.SelectBox1.addItem(this.ItemText.getText(), this.ItemValue.getText());
	
	// 3.
	this.ItemText.setText('');
	this.ItemValue.setText('');
	this.getItemSize();
};

function SelectBox*getItemSize(){
	// 아이템의 갯수를 라벨에 표시한다.
	this.ResultLabel2.setText('현재 아이템의 갯수는 ' + this.SelectBox1.getItemSize() + ' 입니다.');
};

function SelectBox*onSelectBox1Change(comp, info)
{
	// 선택된 값을 라벨에 표시한다.
	if(info){
		this.ResultLabel1.setText('선택된 값은 ' + info + ' 입니다.');
	}
	else{
		this.ResultLabel1.setText('');
	}
};

function SelectBox*onRemoveButtonClick(comp, info)
{
	// 셀렉트박스의 선택된 인덱스를 가져오거나 마지막 인덱스를 가져와서
 	var index = this.SelectBox1.element.selectedIndex || (this.SelectBox1.getItemSize()) - 1;
	// 해당 인덱스의 아이템을 삭제한다.
	this.SelectBox1.removeItem(index);
};

function SelectBox*onRemoveAllButtonClick(comp, info)
{
	// 셀렉스박스의 아이템을 전부 삭제한다.
	this.SelectBox1.removeAll();
	this.getItemSize();
};
function SelectBox*onDoSelectItemClick(comp, info)
{

	//TODO:edit here
	var value = this.txtSelectData.getText();
	
	if(!value){
		AfcMessageBox('알림', '선택할 value 값을 입력하세요.');
		return;
	}else{		
		 this.SelectBox2.selectItem(this.SelectBox2.indexOfValue(value));
	
	}

};
