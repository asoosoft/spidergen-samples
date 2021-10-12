
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

	//TODO:edit here
	
	//뷰안에 컴포넌트들을 사용하기
	/*this.img = this.findCompByGroup('ListItemViewGroup')[0];
	this.title = this.findCompByGroup('ListItemViewGroup')[1];*/
	this.img = this.findCompById('ItemImage');
	this.title = this.findCompById('ItemLabel');
};

function ListItemView:setData(data){
	// 리스트뷰에서 호출할때 넘긴 파라미터로 리스트아이템에 데이터를 바인딩한다.
	
	this.img.setImage(data.img);
	this.title.setText(data.title);
	
	this.data = data;
};

function ListItemView:getData(){
	// 데이터를 리턴한다.
	return this.data;
};

function ListItemView:onDeleteButtonClick(comp, info)
{
	//TODO:edit here
	this.owner.removeItem(this.item);

};
