/**
 * A CLI based ContentBox installer. This is an automated approac to installing ContentBox.
 * If you want a wizard like setup then use the `install-wizard` command.
 * .
 * {code:bash}
 * contentbox install name=MySite cfmlEngine=lucee@5 database=mysql username=root password=password
 * {code}
 *
 **/
 component {

	property name="settings" inject="box:modulesettings:contentbox-cli";

	/**
	 * @name The name of the site to build
	 * @cfmlEngine The CFML engine to bind the installed ContentBox instance to.
	 * @cfmlEngine.options lucee@5,adobe@2016,adobe@2018,adobe@2021
	 **/
	function run(
		required name
		cfmlEngine = "lucee@5"
	){

	}

}
