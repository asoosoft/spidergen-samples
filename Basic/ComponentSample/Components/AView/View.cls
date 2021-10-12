
/**
Constructor
Do not call Function in Constructor.
*/
class View()
{
	super();

	//TODO:edit here

}
extends AView;


function View:init(context, evtListener)
{
	super.init(context, evtListener);

	var thisObj = this,
		getPath = function(path){
			var len = path.length;
			var last = path.lastIndexOf("/");
			return path.substring(0,last);
		};
	
	this.urlPath = getPath(this.url);
	
	//컴포넌트 선언
	this.blankView = this.findCompById('BlankView');
	
	//가운데..
	this.blankView.setStyleObj({
		'border' : '2px solid rgb(132,132,132)'
	});
	
};

function View:onCreateViewBtnClick(comp, info)
{
	//초기화
	this.onInitViewBtnClick();

	//새로만들 뷰의 url을 이용하여 뷰 객체를 만들고 저장한다.
	var innerView = AView.createView(null, this.urlPath + '/InnerView.lay');

	innerView.setStyleObj({
		'margin' : 'auto',
		'width' : '400px',
		'height' : '200px',
		'border' : '2px solid #666'
	});
	
	
	//비어있는 뷰에 새로만든 뷰 객체를 추가한다.
	this.blankView.addComponent(innerView);

	this.blankView.setStyleObj({
		'width' : 'auto',
		'height' : 'auto',
	});
};


//플렉스 뷰 생성
function View:onFlexViewBtnClick(comp, info)
{
	//초기화
	this.onInitViewBtnClick();

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
	this.blankView.addComponent(flexView);
	
	this.blankView.setStyleObj({
		'width' : '100%',
		'height' : '400px'
	});
	
	// 플렉스뷰에 표시될 뷰를 url을 이용하여 추가한다.
	flexView.insertView(this.urlPath + '/InnerView.lay');
	flexView.insertView(this.urlPath + '/InnerView.lay');
	
};



//뷰 초기화(지우기)
function View:onInitViewBtnClick(comp, info)
{
	this.blankView.setStyleObj({
		'width' : 'auto',
		'height' : 'auto',
	});
	
	//빈 뷰
	this.blankView.$ele.html("");
};




