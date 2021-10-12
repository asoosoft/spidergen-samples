
/**
Constructor
Do not call Function in Constructor.
*/
class MainView()
{
	super();

	//TODO:edit here
	
	this.componentList = [
		'ALabel',
		'AButton',
		'ACheckBox',
		'ARadioButton',
		//'ARadioGroup',
		'ADropBox',
		'ASelectBox',
		'ASwitchButton',
		'AListView',
		'ATabView',
		'AWindow',
		'ASlider',
		'AProgress',		
		'AView',
		'AViewLoadEvent',
		'AGridLayout',
		'AFlexLayout',
		'ANavigation',
		'ATextField',
		'ATextArea',
		'AImage'
		//'ACanvas',
// 		'AGrid',
		//'ATree',
		//'AWebView',
		//'ADatePicker',
//		'AFlexView',
//		'ASplitView',
//		'AAccordion',
	];

}
extends AView;


//------------------------------------------------------
// 페이지뷰가 로드될때 처음 한번만 호출되는 init 이벤트입니다.
//------------------------------------------------------
function MainView:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here	
	var i=0, imax = this.componentList.length;
	
	for(i; i < imax; i++){
	
		var data = this.componentList[i].substr(1); //첫글자 'A'를 빼기 위함
		
		//그리드에 row 데이터를 추가합니다.
		this.GridView.addRow([data]);
		
		//탭뷰에 탭을 데이터와 같은 이름으로 추가합니다.
		this.TabView.addTab(data, ['Source/Components/A', data, '/', data, '.lay'].join(''), data);
		
	}
	
	
	
};


//------------------------------------------------------
// init 이 완료되면 발생하는 이벤트 입니다.
//------------------------------------------------------
function MainView:onInitDone(){	
	
	this.GridView.selectCell(this.GridView.getCell(0,0));
	this.TabView.selectTabById('Label');
	
};



function MainView:onActiveDone(){	

	
	
};



//------------------------------------------------------
// 그리드의 select 이벤트에 바인딩된 함수입니다. 
//------------------------------------------------------
function MainView:onGridViewSelect(comp, info)
{
	
	//선택된 아이템에서 텍스트를 가져옴
	var tabId = info.text();	
	
	if(tabId == 'Navigation')
	{
		theApp.navigator.goPage('SubView1');
	}
	else
	{
		//현재 탭 변경
		this.TabView.selectTabById(tabId);
	}
	
};
