import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    minimumWidth: 320
    minimumHeight:  480
    visible: true
    //    title: qsTr("Hello World")
    title: qsTr("Task_for_ListView_Model")
    property int defMargin: 8


    Page{
        id:page
        anchors.fill:parent
        ListModel{
            id: my_model
            ListElement{mstext:"Привет!";time:"12:53"}
            //            ListElement{name:"Rodrig";surname:"Ivanov";phone: '7950'}
        }
        Rectangle{
            anchors.fill:parent
            gradient: Gradient {
                GradientStop{position:0 ;color: "medium sea green"}
                GradientStop{position:0.3 ;color: "pale green"}
                GradientStop{position:0.6 ;color: "light green"}
                GradientStop{position:1 ;color: "sea green"}
            }
        }
        Component{
            id:my_delegate
            MyDelegate{
                name:model.name

                surname:model.surname
                phoneNumber: model.phone

                width:parent.width
                height:40
            }
        }
        ListView {
            id:my_list
            //        anchors.fill:parent
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
            spacing: 5
            width: parent.width - 30
            height: 500
            model:my_model
            delegate:my_delegate
        }

        footer: PageFooter {
            onNewMessage: {
                //Append new message
                var newMsg = {};
                newMsg.mstext = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }

    }
}
