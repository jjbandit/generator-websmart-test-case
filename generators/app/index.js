var generators = require('yeoman-generator');
var fs = require('fs');

module.exports = generators.Base.extend({
	constructor: function () {
		// Super constructor so our new generator gets set up properly
		generators.Base.apply(this, arguments);

		// Which .h file are we looking for
		this.argument("headerName", { type: String, required: true });

		// Where are we going to put the generated files
		this.option("unicode", { alias: "U" });
	},
	
	generateHeader: function () {

		var outputPath = this.options.unicode ? "UnitTesterUnicode\\UnitTester\\" : "UnitTester\\UnitTester\\" ;

		var headerName = this.headerName
		var headerPath = `Common\\${headerName}.h`;

		var fileName = `${headerName}Tester`;
		var className = `C${fileName}`;





		/*

		var fileStream = fs.createReadStream(headerPath, {encoding: 'utf8'});
		var headerFileData = "";

		fileStream.on('data', (data) => { headerFileData += data; } );

		fileStream.on('end', () => { console.log(headerFileData); } );

		*/






		// /*

		// Copy the header file
		this.fs.copyTpl(
			this.templatePath('header.h.tpl'),
			this.destinationPath( outputPath + fileName + '.h'),
			{ className }
		);

		// Copy the cpp source file
		this.fs.copyTpl(
			this.templatePath('source.cpp.tpl'),
			this.destinationPath( outputPath + fileName + '.cpp'),
			{ className, fileName, headerName }
		);

		// */

	}
});
