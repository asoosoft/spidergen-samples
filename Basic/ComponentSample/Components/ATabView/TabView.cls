
/**
Constructor
Do not call Function in Constructor.
*/
class TabView()
{

	/*

	:  클래스 내부에 변수를 선언해 사용합니다.
	
	1. 버튼 그룹 변수 btnGroup
	2. 버튼 토글에 사용할 변수 btnArr, btnIdx

	*/
	
	super();

	this.urlPath = null;
	this.selectBtn = null;
	
	// 1.
	this.btnGroup = null;
	
	// 2.
	this.btnArr = ['TAB 1', 'TAB 2', 'TAB 3'];
	this.btnIdx = 0;
	
}
extends AView;


function TabView*init(context, evtListener)
{

	/*

	:  최초 한 번 실행되는 함수입니다.
	+  Library(우클릭)/Add System LIB/RadioBtnManager.js 추가,
	   Framework/afc(우클릭)/Default Load Settings/component/AGridLayout.js 체크 후 저장을 선행해야 합니다.

	1. TabView.lay의 컴포넌트 TabView1을 tabView 변수에 할당
	   (this.tabView = this.TabView1; 도 사용할 수 있습니다.)
	2. RadioBtnManager를 생성해 rbManager에 할당, TabView1.lay의 컴포넌트 그룹 TabBtnGroup을 btnGroup에 할당
	3. addTab(name, url, tabId, data) 메소드를 사용해 TabView를 등록

	*/
	
	super.init(context, evtListener);

	var thisObj = this,
		getPath = function(path){
			var len = path.length;
			var last = path.lastIndexOf("/");
			return path.substring(0,last);
		};
	
	this.urlPath = getPath(this.url);
	
	// 1.
	this.tabView = this.findCompById('TabView1');
	
	// 2.
	this.rbManager = new RadioBtnManager(this);
	this.btnGroup = this.findCompByGroup('TabBtnGroup');
	
	// 3.
	this.tabView.addTab('Tab1', this.urlPath + '/SubView1.lay', 'ButtonTab1');
	this.tabView.addTab('Tab2', this.urlPath + '/SubView2.lay', 'ButtonTab2');
	this.tabView.addTab('Tab3', this.urlPath + '/SubView3.lay', 'ButtonTab3');
	
};

function TabView*onInitDone()
{

	/*

	:  init 이후 실행되는 함수입니다.

	1. 현재 버튼 세팅 및 탭뷰 처리
	
	*/
	
	// 1.
	this.onBtnClickInit();
	
};

@function TabView*onBtnClickInit()
{

	/*

	:  탭 컨트롤 버튼 처리하는 함수입니다.

	1. 추가한 서브 뷰 중에서 첫 번째 뷰 표시
	2. 현재 버튼을 설정
	
	*/
	
	// 1.
	this.tabView.selectTabByIndex(this.btnIdx);
	
	// 2.
	this.rbManager.selectButton(this.btnGroup[this.btnIdx]);
	
};

function TabView*onButtonTabShowClick(comp, info)
{

	/*

	:  탭 영역을 표시하는 함수입니다.

	1. showTabArea() 메소드를 사용해 탭 영역을 표시
	
	*/
	
	// 1.	
	this.tabView.showTabArea();
	
};

function TabView*onButtonTabHideClick(comp, info)
{

	/*

	:  탭 영역을 숨기는 함수입니다.

	1. hideTabArea() 메소드를 사용해 탭 영역을 숨기기
	
	*/
	
	// 1.
	this.tabView.hideTabArea();
	
};

function TabView*setTitle(title)
{

	/*

	:  라벨의 내용을 변경하는 함수입니다.

	1. TabView.lay의 TitleLabel 변수를 titleLabel에 할당
	2. setText() 메소드를 사용해 라벨의 텍스트 변경
	
	*/
	
	// 1.
	var titleLabel = this.findCompById('TitleLabel');
	// 2.
	titleLabel.setText(title);
	
};

function TabView*onBtnSelectClick(comp, info)
{

	/*

	:  버튼을 탭 버튼과 같이 구현되도록 커스텀하는 함수입니다.

	1. 
	
	*/
	
	// 1.
	for(var i = 0; i < this.btnArr.length; i++)
	{
		if($.trim(comp.getText()) == this.btnArr[i])
		{
			this.btnIdx = i;
			break;
		}
	}
	
	this.onBtnClickInit();

};




