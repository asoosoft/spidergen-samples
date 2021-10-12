
/**
Constructor
Do not call Function in Constructor.
*/
class Grid()
{
	super();

	//TODO:edit here
	this.simpleGridData = null;
	this.optionGridData = null;
	this.cnt = 0;

}
extends AView;


function Grid:init(context, evtListener)
{
	super.init(context, evtListener);

	this.simpleGridData = 
	[
		['Test1', 'Test2', 'Test3'],
		['Test4', 'Test5', 'Test6'],
		['Test7', 'Test8', 'Test9']
	];
	
	this.optionGridData = 
	[
		['Test1', '20150001', 40, '아수소프트', '개발'],
		['Test2', '20150002', 30, '아수소프트', '개발'],
		['test3', '20150003', 20, '아수소프트', '개발']
	];

};


function Grid:onAddButtonClick(comp, info)
{
	//해당 그리드 컴포넌트의 row 객체를 추가한다.
	this.SimpleGrid.addRow(this.simpleGridData[this.cnt]);
	this.OptionGrid.addRow(this.optionGridData[this.cnt]);
	
	this.cnt++;
	if(this.cnt == 3) this.cnt = 0;
};

function Grid:onDeleteButtonClick(comp, info)
{
	//row의 index 값을 넣으면 해당 그리드 컴포넌트의 row 객체를 삭제한다.
	this.SimpleGrid.removeRow(this.SimpleGrid.getRowCount()-1);
	this.OptionGrid.removeRowSet(this.OptionGrid.getRowSetCount()-1);
};


//심플그리드의 셀을 선택했을 시...
function Grid:onSimpleGridSelect(comp, info)
{
	//파라미터로 넘어온 cell 의 row, col index 를 배열로 리턴한다. -> [row, col]
	var pos = comp.indexOfCell(info);
	
	//셀의 텍스트를 가져온다.
	alert( comp.getCellText(pos[0], pos[1]) );

};

//속성에서 2개의 row > Fullrow Select 체크가 되어 있는 그리드 컴포넌트라면....
function Grid:onOptionGridSelect(comp, info)
{
	//info 정보는 row의 정보이며 2개의 row를 한 묶음으로 넘어옴.
	//column의 정보를 가져오지 못하기 때문에 고정된 column index로 정보를 가져와야 함.
	//var rowIdx = comp.indexOfRow(info);	//0,2,4,6.....index로 반환(전체 row)
	var rowIdx1 = comp.indexOfRow(info[0]);	//0번째 row index 를 리턴(개별 row)
	var rowIdx2 = comp.indexOfRow(info[1]);	//1번째 row index 를 리턴(개별 row)

	//헤더부분을 선택시에는 반응하지 않게 한다.
	if(rowIdx1 < 0) return;
	
	//첫번째 row
	var colText1 = comp.getCellText(rowIdx1, 0);	//첫번째 셀 텍스트
	var colText2 = comp.getCellText(rowIdx1, 1);	//두번째 셀 텍스트
	var colText3 = comp.getCellText(rowIdx1, 2);	//세번째 셀 텍스트
	
	//두번째 row
	var colText4 = comp.getCellText(rowIdx2, 1);	//네번째 셀 텍스트
	var colText5 = comp.getCellText(rowIdx2, 2);	//다섯번째 셀 텍스트

	var msg = [colText1, colText2, colText3, colText4, colText5].join(" / ");
	alert( msg );

};
