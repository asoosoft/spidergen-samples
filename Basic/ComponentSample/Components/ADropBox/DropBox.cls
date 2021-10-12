
/**
Constructor
Do not call Function in Constructor.
*/
class DropBox()
{
	super();

	//TODO:edit here

}
extends AView;


function DropBox*init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here

};


function DropBox*onInitDone()
{

	//TODO:edit here
	this.DropBox2.addItem('Item1','Item1');
	this.DropBox2.addItem('Item2','Item2');
	this.DropBox2.addItem('Item3','Item3');
	this.DropBox2.addItem('Item4','Item4');
	this.DropBox2.addItem('Item5','Item5');

};


function SelectBox*getItemSize(){
	// 아이템의 갯수를 라벨에 표시한다.
	this.ResultLabel2.setText('현재 아이템의 갯수는 ' + this.DropBox1.getItemSize() + ' 입니다.');
};

function DropBox*onAddButtonClick(comp, info)
{
	// 아이템 텍스트 / 벨류 값 검사
	if(this.ItemText.getText().length == 0 || this.ItemData.getText().length == 0){
		alert('Item Text 또는 Item Value 를 입력하세요.');
		return false;
	}
	
	// 셀렉트박스에 입력한 텍스트와 값으로 아이템을 추가한다.
	this.DropBox1.addItem(this.ItemText.getText(), this.ItemData.getText());
	// 입력값 초기화
	this.ItemText.setText('');
	this.ItemData.setText('');
	this.getItemSize();
};

function DropBox*onRemoveButtonClick(comp, info)
{
	// 셀렉트박스의 선택된 인덱스를 가져오거나 마지막 인덱스를 가져와서
 	var index = this.DropBox1.getSelectedIndex() || (this.DropBox1.getItemSize()) - 1;
	// 해당 인덱스의 아이템을 삭제한다.
	this.DropBox1.removeItem(index);
// 	this.DropBox1.clearSelectItem();
};

function DropBox*onRemoveAllButtonClick(comp, info)
{
	// 셀렉스박스의 아이템을 전부 삭제한다.
	this.DropBox1.removeAll();
// 	this.DropBox1.clearSelectItem();
	this.getItemSize();
};

function DropBox*onDropBox1Select(comp, info)
{
	// 선택된 값을 라벨에 표시한다.
	this.ResultLabel1.setText('선택된 텍스트는 ' + comp.getSelectedItemText() + ' 값은 ' + comp.getSelectedItemData() + ' 입니다.');
};



function DropBox*onDoSelectItemClick(comp, info)
{

	//TODO:edit here
	var text = this.txtSelectData.getText();
	
	if(!text){
		AfcMessageBox('알림', '선택할 텍스트를 입력하세요.');
		return;
	}else{
		console.log(text);
		this.DropBox2.selectItemByText(text);
	
	}
	
};
