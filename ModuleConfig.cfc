/**
 *********************************************************************************
 * Copyright Since 2014 CommandBox by Ortus Solutions, Corp
 * www.coldbox.org | www.ortussolutions.com
 ********************************************************************************
 * @author Brad Wood, Luis Majano
 */
component {

	this.cfmapping      = "contentbox-cli";
	this.modelNamespace = "contentbox-cli";

	function configure(){
		settings = { templatesPath : modulePath & "/templates" }
		interceptors = []
	}

	function onLoad(){
		// log.info('Module loaded successfully.' );
	}

	function onUnLoad(){
		// log.info('Module unloaded successfully.' );
	}

}
