class CheckListPage() {
    let tbleView = "tableView"
    let btnAdd = "btnAdd"
    let btnDone = "btnDone"
    let btnEdit = "btnEdit"
    let btnCreate = "btnCreate"
    let btnCancel = "btnCancel"
    
    var txtTask

    
    //Проверки
    func checkAddedItem(txtTask){
        if txtTask == app.tableView[tbleView][-1]
    }
    
    func checkCheckedOnTask(){}
    
    
    
    //Actions
    
    func add(txtTask){
        app.navigationBars["Daily hack list"].buttons["Add"].tap()
        app.textFields["New task"].typeText(txtTask)
       // app.buttons["Create"].exist
        app.alerts["Create new task"].buttons["Create"].tap()
    }
    
    
    
    
    
}
