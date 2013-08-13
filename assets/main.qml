import bb.cascades 1.0

TabbedPane {
    Tab {
        title: qsTr("Home")
        Home {}
    }
    Tab {
        title: qsTr("Floorplan")
        imageSource: "asset:///ic_nav_to.png"
        Floorplan {}
    }
    Tab {
        title: qsTr("Schedule")
        imageSource: "asset:///ic_view_list.png"
        Schedule {}
    }
}
