CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
 
	config.toolbar_MyToolbar =
	[	
		{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
		{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv',
		'-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
		{ name: 'links', items : [ 'Link','Unlink' ] },
		{ name: 'insert', items : [ 'Image','Table','HorizontalRule' ] },
		'/',
		{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
		{ name: 'colors', items : [ 'TextColor','BGColor' ] },
		{ name: 'tools', items : [ 'Maximize', 'ShowBlocks' ] }
	];

	config.dialog_backgroundCoverColor = 'rgb(0, 0, 0)';

	config.colorButton_colors = '1eb1d7,ed1d7a,b9d548,fdf235';

};