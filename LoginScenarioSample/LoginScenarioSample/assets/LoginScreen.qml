import bb.cascades 1.0

Page {
    id: loginPage
    property alias username : tfUsername.text
    property alias password : tfPassword.text
    signal loginPageClose()
    signal saveLoginCredential(string username, string password)
    titleBar: TitleBar {
        id: addBar
        title: "Login"
        visibility: ChromeVisibility.Visible
        dismissAction: ActionItem {
            title: "Cancel"
            onTriggered: {
                loginPage.loginPageClose();
            }
        }
        acceptAction: ActionItem {
            title: "Save"
            //enabled: false
            onTriggered: {
                // save credential
                loginPage.saveLoginCredential(username, password);
                loginPage.loginPageClose();
            }
        }
    }
    Container {
        Label {
            text: "Username : "
        }
        TextField {
            id: tfUsername
            input.submitKey: SubmitKey.Next
        }
        Label {
            text: "Password"
        }
        TextField {
            id: tfPassword
            inputMode: TextFieldInputMode.Password
            input {
                submitKey: SubmitKey.Submit
                onSubmitted: {
                    loginPage.saveLoginCredential(username, password);
                    loginPage.notePageClose();
                }
            }
        }
    }
}
