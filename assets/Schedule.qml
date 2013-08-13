import bb.cascades 1.0

Page {
    titleBar: TitleBar { title: qsTr("Schedule") }

    content: ScrollView {
        id: scrollView
        scrollViewProperties {
            scrollMode: ScrollMode.Vertical
            overScrollEffectMode: OverScrollEffectMode.None
        }
        layoutProperties: StackLayoutProperties {
            spaceQuota: 1.0
        }
        
        Container {
            background: Color.LightGray
            
            WebView {
                id: webViewScrollable
                url: "http://programm.froscon.org/mobil/index.html"
                
                onLoadingChanged: {
                    if (loadRequest.status === WebLoadStatus.Succeeded) {
                        console.log("html: " + loginView.html);
                    }
                }
                onMinContentScaleChanged: {
                    scrollView.scrollViewProperties.minContentScale = minContentScale;
                }
                
                onMaxContentScaleChanged: {
                    scrollView.scrollViewProperties.maxContentScale = maxContentScale;
                }
            }
        }
    }
}
