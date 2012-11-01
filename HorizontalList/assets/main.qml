import bb.cascades 1.0

Page {
    Container {
        layout: DockLayout {
        }
        ListView {
            layout: StackListLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            dataModel: XmlDataModel {
                source: "data.xml"
            }
            listItemComponents: [
                ListItemComponent {
                    type: "header"
                    Label {
                        text : ListItemData.name
                    }
                }
            ]
        }
    }
}
