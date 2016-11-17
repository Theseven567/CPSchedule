//
//  ScheduleViewController.swift
//  DatabaseProject
//
//  Created by Егор on 11/16/16.
//  Copyright © 2016 Yegor's Mac. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController,AKPickerViewDataSource, AKPickerViewDelegate, UITableViewDelegate, UITableViewDataSource {

    let titles = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    let selectionSpacing  = CGFloat(40)
    
    @IBOutlet weak var classTable: UITableView!
    
    @IBOutlet weak var pickerView: AKPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        // Do any additional setup after loading the view.
        self.pickerView.interitemSpacing = selectionSpacing
        self.pickerView.pickerViewStyle = AKPickerViewStyle.wheel
        self.pickerView.reloadData()
        self.classTable.delegate = self
        self.classTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ClassesViewCell = self.classTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ClassesViewCell
        cell.timeLabel?.text = "14:00 - 14:50"
        cell.classLabel?.text = "EAP Lecture"
        cell.typeImage.image = UIImage(named: "student-2")
        return cell
    }
    /*
    func pickerView(_ pickerView: AKPickerView, didSelectItem item: Int) {
        вот здесь загружаешь данные в зависимости ото дня и обновляешь таблицу
     classTable.reloadData()
    }
    */
    
    func numberOfItemsInPickerView(_ pickerView: AKPickerView) -> Int {
        return 6
    }
    func pickerView(_ pickerView: AKPickerView, titleForItem item: Int) -> String {
        return titles[item]
    }
    
    // Just a test case.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSubject", sender: "Hren znayet")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let subject = segue.destination as! SubjectViewController
        subject.name = sender as! String
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
