import QtQuick 2.7


Rectangle {
    property int col: 4
    property int row: 4
    property variant KinshipList: []
    radius: 3;
    anchors {
        right: parent.right; rightMargin: 5
        left: parent.left; leftMargin: 5
        bottom: parent.bottom; bottomMargin: 5
        top: parent.top; topMargin: 300//应该可以通过布局进行计算
    }
    color: "transparent"
    Grid {
        id: grid
        anchors.fill: parent;
        columns: 4;
        rows: 4;
        Repeater {
        model: grid.columns * grid.rows;

        Rectangle {
            width: grid.width / grid.columns;
            height: grid.height / grid.rows;
            color: "transparent";
            Rectangle {
                color: "#ccc0b2"
                radius: 3
//                text: KinshipList[0]
                anchors {
                right: parent.right; rightMargin: 5
                left: parent.left; leftMargin: 5
                bottom: parent.bottom; bottomMargin: 5
                top: parent.top; topMargin: 5
                }
            }
        }}
    }
}
