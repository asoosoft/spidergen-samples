
/**
Constructor
Do not call Function in Constructor.
*/
class ListItemView()
{

	super();

	//TODO:edit here
	this.data = null;

}
extends AView;


function ListItemView:init(context, evtListener)
{

	super.init(context, evtListener);

};


function ListItemView:setData(data)
{

	/*

	:  리스트 아이템에 data를 바인딩하는 예제입니다.
	+  ListView.cls의 3번째에서 addItem을 사용할 때 넘겨주는 newData를 data 인자로 받습니다.

	1. this.data에 data를 할당합니다.
	2. ListItemView.lay에 정의되어 있는 컴포넌트에 data의 요소들을 바인딩 해줍니다.

	*/

	// 1.
	this.data = data;
	
	// 2.
	this.itemImage.setImage(data.img);
	this.itemLabel.setText(data.title);
	
};

function ListItemView*onDeleteButtonClick(comp, info, e)
{

	/*

	:  리스트 아이템을 개별 삭제하는 예제입니다.

	1. removeItem() 메소드를 사용해 리스트 아이템을 삭제합니다.
	2. 리스트 아이템의 개수를 보여주는 count 변수의 텍스트를 갱신합니다.

	*/

	// 1.
	this.owner.removeItem(this._item);
	
	// 2.
	var count = this.owner.parent.parent.parent.count.element.textContent;
	this.owner.parent.parent.parent.count.setText(count - 1);
	
};
