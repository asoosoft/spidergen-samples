
/**
Constructor
Do not call Function in Constructor.
*/
class Image()
{
	super();

	//TODO:edit here
	this.showIndex = 0;
}
extends AView;


function Image:init(context, evtListener)
{
	super.init(context, evtListener);

	//TODO:edit here
};

function Image:onSeButtonClick(comp, info)
{
	// 샘플 이미지
	var sampleImage = [
		'image/chiron1.jpg',
		'image/chiron2.jpg',
		'image/chiron3.jpg'
	];
	// 이미지 컴포넌트에 이미지파일을 지정한다.
	this.Image1.setImage(sampleImage[this.showIndex % 3]);
	this.showIndex++;
};

function Image:onGetButtonClick(comp, info)
{
	// 이미지 컴포넌트에 지정된 이미지 경로를 라벨에 표시한다.
	this.ResultLabel1.setText('이미지의 경로는 ' + this.Image1.getImage() + ' 입니다.');
};
