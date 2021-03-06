import QtQuick 2.0
//Component for text with a blue underline below it.
Item {

    //Allows easy setting of the text from a parent object
    property alias text: label.text
    //Allows setting of the text pixel size from parent
    property alias pixelSize:label.font.pixelSize

    Text{

        id:label
        x:0
        y:0
        font.pixelSize: 19
        font.family: "Roboto"
        text: "Uninstantiated Text"
        color:"#E3E3E3"

        //Blue Rectangle located underneath the text
        Rectangle{
            x:0
            y:27
            height:1
            width:parent.width
            color:"#24B9C3"
        }
    }





}
