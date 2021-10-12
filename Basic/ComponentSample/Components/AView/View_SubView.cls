
/**
Constructor
Do not call Function in Constructor.
*/
class SubView()
{
	super();

	//TODO:edit here

}
extends AView;


function SubView:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
	
	// 플렉스뷰를 초기화한다.
	var flexView = new AFlexView();
	flexView.init();
	// 플렉스뷰의 방향을 설정한다. row : 가로방향, column : 세로방향
	flexView.setViewDirection('column');
	// 플렉스뷰의 스타일값을 설정한다.
	flexView.setStyleObj({
		'width' : '100%',
		'height' : '100%'
	});
	
	// 플렉스뷰를 비어있는 뷰에 추가한다.
	this.BlankFlexView1.addComponent(flexView);
	
	// 플렉스뷰에 표시될 뷰를 url을 이용하여 추가한다.
	flexView.insertView('Source/Items/View_InnerView.lay');
	flexView.insertView('Source/Items/View_InnerView.lay');
	
	flexView.getView(0).TitleLabel1.setText('Inner View 1');
	flexView.getView(1).TitleLabel1.setText('Inner View 2');

};

function SubView:onPrevButtonClick(comp, info)
{
	//TODO:edit here
	// 컨테이너의 네비게이터를 이용하여 페이지를 이전 페이지로 이동한다.
	this.getContainer().navigator.goPrevPage();
};