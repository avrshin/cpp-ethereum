import QtQuick 2.2
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls 1.1
import QtQuick.Dialogs 1.1
import QtQuick.Layouts 1.1

Item {
	TableView {
		anchors.fill: parent
		model: logModel

		TableViewColumn {
			role: "block"
			title: qsTr("Block")
			width: 40
		}
		TableViewColumn {
			role: "index"
			title: qsTr("Index")
			width: 40
		}
		TableViewColumn {
			role: "contract"
			title: qsTr("Contract")
			width: 120
		}
		TableViewColumn {
			role: "function"
			title: qsTr("Function")
			width: 120
		}
		TableViewColumn {
			role: "value"
			title: qsTr("Value")
			width: 120
		}
		TableViewColumn {
			role: "address"
			title: qsTr("Address")
			width: 120
		}
		TableViewColumn {
			role: "returned"
			title: qsTr("Returned")
			width: 120
		}
	}

	ListModel {
		id: logModel
	}

	Connections {
		target: clientModel
		onStateCleared: {
			logModel.clear();
		}
		onNewTransaction: {
			logModel.append(_tr);
		}
	}

}
