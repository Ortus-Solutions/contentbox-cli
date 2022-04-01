/**
 * A CLI based ContentBox installer Wizard.
 *
 * This will ask you step by step all the necesssary information to install ContentBox.
 *
 * The supported CFML Engines are "lucee@5", "adobe@2016", "adobe@2018", "adobe@2021"
 * The supported Databases are: "HyperSonicSQL (Lucee Only)", "MySQL5", "MySQL8", "MicrosoftSQL", "PostgreSQL", "Oracle"
 *
 * .
 * {code:bash}
 * contentbox install-wizard
 * {code}
 *
 **/
component extends="install" {

	/**
	 * Install a ContentBox instance on the current working directory
	 **/
	function run(){
		var args = {};

		args.name = ask( "What is the name of the site you want to create? " );
		if ( !args.name.len() ) {
			error( "Please enter a valid site name" )
		}

		args.cfmlEngine = multiSelect()
			.setQuestion( "What CFML engine will the site run on? " )
			.setOptions( [
				{
					display  : "Lucee 5",
					value    : "lucee@5",
					selected : true
				},
				{
					display : "Adobe 2016",
					value   : "adobe@2016"
				},
				{
					display : "Adobe 2018",
					value   : "adobe@2018"
				},
				{
					display : "Adobe 2021",
					value   : "adobe@2021"
				}
			] )
			.ask();

		args.cfmlPassword = ask(
			message = "Enter the password for the CFML Engine administrator (Leave empty to use 'contentbox', only if deployed on CommandBox)? ",
			mask = "*"
		);
		if ( !args.cfmlPassword.len() ) {
			args.cfmlPassword = "contentbox";
		}

		args.coldboxPassword = ask(
			message = "Enter the password for the ColdBox HMVC Reinits (Leave empty to use 'contentbox')? ",
			mask = "*"
		);
		if ( !args.coldboxPassword.len() ) {
			args.coldboxPassword = "contentbox";
		}

		args.databaseType = multiSelect()
			.setQuestion( "What Database will you be using? " )
			.setOptions( [
				{
					display : "HypersonicSQL",
					value   : "HypersonicSQL"
				},
				{
					display : "MySQL 5.7",
					value   : "MySQL5"
				},
				{
					display  : "MySQL 8+",
					value    : "MySQL8",
					selected : true
				},
				{
					display : "Microsoft SQL Server",
					value   : "MicrosoftSQL"
				},
				{
					display : "PostgreSQL",
					value   : "PostgreSQL"
				},
				{ display : "Oracle", value : "Oracle" }
			] )
			.ask();

		args.databaseHost = ask( "Enter the database host (Leave empty to use 'localhost') ? " )
		if ( !args.databaseHost.len() ) {
			args.databaseHost = "localhost";
		}

		args.databasePort = ask( "Enter the database port (Leave empty to use the default for #args.databaseType#) ? " )
		if ( !args.databasePort.len() ) {
			args.databasePort = "";
		}

		args.databaseUsername = ask( "Enter the database username to use for the connection? " )
		if ( !args.databaseUsername.len() ) {
			error( "You must enter a username to continue" );
		}

		args.databasePassword = ask( 
			message = "Enter the database password to use for the connection? ",
			mask = "*"
		)
		if ( !args.databasePassword.len() ) {
			error( "You must enter a password to continue" );
		}

		args.databaseName = ask(
			"Enter the database name to use for the connection (Leave empty to use 'contentbox') ? "
		)
		if ( !args.databaseName.len() ) {
			args.databaseName = "contentbox";
		}

		args.deployServer = multiSelect()
			.setQuestion( "Do you want us to deploy and start a CFML Engine (#args.cfmlEngine#) on CommandBox for you? " )
			.setOptions( [
				{
					display  : "Yes",
					value    : true,
					selected : true
				},
				{ display : "False", value : false }
			] )
			.ask();

		args.production = multiSelect()
			.setQuestion( "Is this a development or production site? " )
			.setOptions( [
				{
					display  : "Development",
					value    : "false",
					selected : true
				},
				{
					display : "Production",
					value   : "true"
				}
			] )
			.ask();

		args.contentboxVersion = ask(
			"Enter the ContentBox version to use or leave empty to use the latest stable version (be = snapshot)? "
		)
		if ( !args.contentboxVersion.len() ) {
			args.delete( "contentboxVersion" );
		}

		print.blueLine( "We are ready to install ContentBox for you with the following configuration: " );
		print.table(
			headerNames: [ "Configuration", "Value" ],
			data       = args.reduce( ( results, k, v ) => {
				results.append( {
					configuration : k,
					value         : ( len( v ) ? ( findNoCase('Password', k) GT 0 ? '***' : v ): "[default]" )
				} );
				return results;
			}, [] )
		);
		if ( confirm( "Do you wish to continue? [y/n]" ) ) {
			return super.run( argumentCollection = args );
		} else {
			print.redLine( "No problem, see ya laterz!" );
		}
	}

}
