import bb.cascades 1.0
import bb.platform 1.0

Page {
    titleBar: TitleBar { title: "FrOSCon 2013" }
    
    content: Container {
        layout: DockLayout {}

        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            layout: StackLayout {}
            attachedObjects: [
                TextStyleDefinition {
                    id: tsd
                    base: SystemDefaults.TextStyles.BodyText
                    fontWeight: FontWeight.Bold
                    fontSize: FontSize.XLarge
                }
            ]
            Label {
                text: qsTr("Welcome to FrOScon 2013")
                horizontalAlignment: HorizontalAlignment.Center
                textStyle { base: tsd.style }
            }
            ImageView {
                imageSource: "asset:///images/froscon_logo_print_color.png"
                horizontalAlignment: HorizontalAlignment.Center
            }
            Label {
                text: qsTr("24.-25. August 2013")
                horizontalAlignment: HorizontalAlignment.Center
                textStyle { base: tsd.style }

        }
        }
    }
    
    actions: [
        ActionItem {
            title: qsTr("Official Website")
            imageSource: "asset:///ic_info.png"
            onTriggered: invokeHomepage.trigger("bb.action.OPEN")
            ActionBar.placement: ActionBarPlacement.OnBar
        },
        ActionItem {
            title: qsTr("Get me There")
            imageSource: "asset:///ic_map.png"
            onTriggered: {
                invokeRoute.go();
            }
            ActionBar.placement: ActionBarPlacement.OnBar
        }
    ]
    attachedObjects: [
        Invocation {
            id: invokeHomepage
            query: InvokeQuery {
                mimeType: "text/html"
                uri: "http://www.froscon.org/"
                invokeActionId: "bb.action.OPEN"
            }
        },
        LocationMapInvoker {
            id: invokeRoute
            altitude: 200
            locationLatitude: 50.780556
            locationLongitude: 7.181944
            centerLatitude: locationLatitude
            centerLongitude: locationLongitude
            locationName: qsTr("FrOSCon Venue")
        }
    ]
}