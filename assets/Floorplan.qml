import bb.cascades 1.0

Page {
    titleBar: TitleBar { title: qsTr("Floorplan") }

    property string groundFloorAsset: "asset:///images/EG_uebersicht_A3.jpg"
    property string upperFloorAsset: "asset:///images/OG_uebersicht_A3.jpg"
    
    actions: [
        ActionItem {
            title: qsTr("Ground Floor")
            imageSource: "asset:///ic_to_bottom.png"
            onTriggered: floorView.imageSource = groundFloorAsset
            ActionBar.placement: ActionBarPlacement.OnBar

        },
        ActionItem {
            title: qsTr("Upper Floor")
            imageSource: "asset:///ic_to_top.png"
            onTriggered: floorView.imageSource = upperFloorAsset
            ActionBar.placement: ActionBarPlacement.OnBar

        }
    ]
    ScrollView {
        id: scrollView
        scrollViewProperties {
            scrollMode: ScrollMode.Both
            overScrollEffectMode: OverScrollEffectMode.None
            pinchToZoomEnabled: true
            initialScalingMethod: ScalingMethod.AspectFill
        }
        layoutProperties: StackLayoutProperties {
            spaceQuota: 1.0
        }
        Container {
            id: container
            ImageView {
                id: floorView
                imageSource: groundFloorAsset
            }
        }
    }

}
