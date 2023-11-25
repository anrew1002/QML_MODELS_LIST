import QtQuick 2.15
Item {
    id:deleg
    property string name: "?"
    property string surname: "?"
    property string phoneNumber: "?"
    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"lightgray"}
            GradientStop{position:1;color:"white"}
        }
    }
    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16
        spacing:6
        Text{text:mstext;anchors.verticalCenter:
                row.verticalCenter}

    }
    Text{
        text:time;
        anchors.right: rect.right
        anchors.bottom: rect.bottom
        anchors.rightMargin: 10
        anchors.bottomMargin: 3
    }

}
