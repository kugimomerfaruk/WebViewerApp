import UIKit

let searchEngines = [
    ["Google","http://www.google.com/search?q="],
    ["Yandex","http://www.yandex.com/search?q="],
    ["Bing","http://www.bing.com/search?q="],
    
    
    
]
weak var searchSwitchOutlet: UISwitch!
var searchIsOn = false

class WebSettingsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var searchEnginePickerOutlet: UIPickerView!
    @IBOutlet weak var searchSwitchOutlet: UISwitch!
    @IBOutlet weak var searchSettingView: UIView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return searchEngines.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return searchEngines[row][0]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(searchEngines[row][1])
    }
    

    @IBAction func searchSwicthAction(_ sender: UISwitch) {
        
        if sender.isOn == true {
            searchSettingView.isHidden = false
            searchIsOn = true
        } else {
            searchSettingView.isHidden = true
            searchIsOn = false
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Picker default value
        searchEnginePickerOutlet.selectRow(2,inComponent: 0, animated: true)
        searchSwitchOutlet.isOn = searchIsOn
        searchSwicthAction(searchSwitchOutlet)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
