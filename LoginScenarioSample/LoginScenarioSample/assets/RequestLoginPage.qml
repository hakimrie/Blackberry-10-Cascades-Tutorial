import bb.cascades 1.0

Page {
    id : requestLoginPage
    signal loginSuccess(string username, string password);
    Container {
        Button {
            text: "Sign In"
            onClicked: {
                loginSheet.open();
            }
        }
        Button {
            text: "Signup"
        }
    }
    onCreationCompleted: {
        loginPage.saveLoginCredential.connect(processLogin);
    }
    
    function processLogin(username, password){
        requestLoginPage.loginSuccess(username, password);
        navpane.pop();
    }
    
    attachedObjects: [
        Sheet {
            id: loginSheet
            LoginScreen {
                id: loginPage
                onLoginPageClose: {
                    loginSheet.close();
                }
            }
        }
    ]
}
