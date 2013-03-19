// Default empty project template
import bb.cascades 1.0

TabbedPane {
    showTabsOnActionBar: true
    Tab {
        id: tabLogin
        NavigationPane {
            id: navpane
            peekEnabled: false
            backButtonsVisible: false
            Page {
                content: Container {
                    Label {
                        text: "halaman ini kelihatan setelah login"
                    }
                }
                onCreationCompleted: {
                    var page = requestLoginPage.createObject();
                    page.loginSuccess.connect(loginBerhasil);
                    navpane.push(page);
                }
            }
        }
    }
    Tab {
        id: tabnya2
        enabled: false
        Page {
        }
    }
    Tab {
        id: tabnya3
        enabled: false
        Page {
        }
    }
    onCreationCompleted: {
    }
    function loginBerhasil(username, password) {
        console.log("usrename: " + username + " password: " + password);
        tabnya2.enabled = true;
        tabnya3.enabled = true;
    }
    attachedObjects: [
        ComponentDefinition {
            id: requestLoginPage
            source: "RequestLoginPage.qml"
        }
    ]
}
