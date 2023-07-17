*** Variables ***
${Browser}                  chrome
${DELAY}                    0

${KingPowerURL}                      http://the-internet.herokuapp.com/login
${KingPowerUser}                       tomsmith
${KingPowerPass}                       SuperSecretPassword!
${KingPowerUserIncorrect}              tomsmith
${KingPowerPassIncorrect}              Password!
${KingPowerUserNotFound}                       tomholland
${KingPowerPassNotfound}                       Password!
${KingPowerLocatorUser}       //input[@id='username']
${KingPowerLocatorPass}       //input[@id='password']
${KingPowerLocatorLogin}      //i[@class='fa fa-2x fa-sign-in']
${KingPowerLocatorLogout}    //i[@class='icon-2x icon-signout']