CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
	config.toolbar_MyToolbar =
	[	
		{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
		{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
		{ name: 'links', items : [ 'Link','Unlink' ] },
		{ name: 'insert', items : [ 'Image','Table','HorizontalRule' ] },
		'/',
		{ name: 'styles', items : [ 'Styles','Format','FontSize' ] },
		{ name: 'colors', items : [ 'TextColor' ] },
		{ name: 'tools', items : [ 'Maximize', 'ShowBlocks' ] }
	];
	config.dialog_backgroundCoverColor = 'rgb(0, 0, 0)';
	config.colorButton_colors = '1eb1d7,ed1d7a,b9d548,fdf235';
};

CKEDITOR.on( 'dialogDefinition', function( ev ) {
	// Take the dialog name and its definition from the event data.
	var dialogName = ev.data.name;
	var dialogDefinition = ev.data.definition;
	
	// Check if the definition is from the dialog we're interested on (the Link dialog).
	if ( dialogName == 'link' ) {
		// FCKConfig.LinkDlgHideAdvanced = true
		dialogDefinition.removeContents( 'advanced' );

		// FCKConfig.LinkDlgHideTarget = true
		dialogDefinition.removeContents( 'target' );
	}

	// Check if the definition is from the dialog we're interested in (the 'image' dialog).
	if ( dialogName == 'image' ){
		// Remove the 'Link' and 'Advanced' tabs from the 'Image' dialog.
		dialogDefinition.removeContents( 'Link' );
		dialogDefinition.removeContents( 'advanced' );

		// Get a reference to the 'Image Info' tab.
		var infoTab = dialogDefinition.getContents( 'info' );

		// Remove unnecessary widgets/elements from the 'Image Info' tab.         
		// infoTab.remove( 'txtUrl');
		// infoTab.remove( 'txtAlt');
		// infoTab.remove( 'txtHeight');
		// infoTab.remove( 'txtWidth');
		infoTab.remove( 'txtBorder');
		// infoTab.remove( 'htmlPreview');
		infoTab.remove( 'txtHSpace');
		infoTab.remove( 'txtVSpace');
		// infoTab.remove( 'cmbAlign');
	}

});