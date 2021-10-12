
/**
Constructor
Do not call Function in Constructor.
*/
class ListView()
{

	super();

	//TODO:edit here
	this.urlPath = null;

}
extends AView;


function ListView*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.

	*/
	
	super.init(context, evtListener);

	var thisObj = this,
		getPath = function(path){
			var len = path.length;
			var last = path.lastIndexOf("/");
			return path.substring(0,last);
		};
	
	this.urlPath = getPath(this.url);
	
	this.listData = [
		{img : this.urlPath + '/img/door.png', title : 'List Content Title 1'},
		{img : this.urlPath + '/img/page_white_add.png', title : 'List Content Title 2'},
		{img : this.urlPath + '/img/page_white_copy.png', title : 'List Content Title 3'},
		{img : this.urlPath + '/img/page_white_delete.png', title : 'List Content Title 4'},
		{img : this.urlPath + '/img/page_white_edit.png', title : 'List Content Title 5'},
		{img : this.urlPath + '/img/page_white_paste.png', title : 'List Content Title 6'}
	];

};

function ListView*onAddButtonClick(comp, info)
{

	/*

	:  개별 리스트 아이템을 추가하는 예제입니다.

	1. listData에서 랜덤 인덱스로 값을 가져올 수 있도록, 랜덤 숫자를 생성합니다.
	2. newData 배열을 생성한 후, 랜덤 숫자를 인덱스로 listData에서 가져온 배열을 저장합니다.
	3. addItem() 메소드를 사용해 listView에 newData를 데이터로 하는 리스트 아이템을 추가합니다.
	4. getTotalCount() 메소드를 사용해 리스트 아이템의 개수를 갱신합니다.

	*/
	
	// 1.
	var randomNumber = Math.floor(Math.random() * this.listData.length);
		
	// 2.
	var newData = [];
	newData.push(this.listData[randomNumber]);
	
	// 3.
	this.listView.addItem(this.urlPath + '/Items/ListItemView.lay', newData);
	
	// 4.
	this.count.setText(this.listView.getTotalCount());
	
};

function ListView*onListViewSelect(comp, item)
{

	/*

	:  리스트 아이템을 클릭했을 때, 리스트 아이템의 타이틀을 알람으로 띄우는 예제입니다.

	1. 클릭한 리스트 아이템의 데이터를 변수에 할당합니다.
	2. alert를 사용해 리스트 아이템의 타이틀을 띄웁니다.

	*/

	// 1.
	var data = item.view.data;
	// 2.
	alert(`List Item Info : ${data.title}`);
	
};


function ListView*onDeleteAllButtonClick(comp, info)
{

	/*

	:  리스트뷰를 초기화하는 예제입니다.

	1. removeAllItems 메소드르 사용해 리스트뷰의 모든 아이템을 삭제합니다.
	2. getTotalCount 메소드를 사용해 리스트뷰 내부 아이템의 개수를 갱신합니다.

	*/

	// 1.
	this.listView.removeAllItems();
	// 2.
	this.count.setText(this.listView.getTotalCount());
	
};


