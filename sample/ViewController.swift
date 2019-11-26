//
//  ViewController.swift
//  sample
//
//  Created by Venkatesan MAC-Pro on 03/09/19.
//  Copyright © 2019 Venkatesan MAC-Pro. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITextFieldDelegate
{
    var addBtn = UIButton()
    var hello = UIButton()
    var alternateMobileNumber1: UITextField = UITextField()
    var stackView = UIStackView()
    var stackView1 = UIStackView()
    let maxTextFields = 4
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        alternateMobileNumber1.delegate = self
        alternateMobileNumber1.clearButtonMode = .whileEditing
        alternateMobileNumber1.translatesAutoresizingMaskIntoConstraints = false
        alternateMobileNumber1.layer.borderColor = UIColor.black.cgColor
        alternateMobileNumber1.layer.borderWidth = 1.0
        view.addSubview(alternateMobileNumber1)
        
        let a1phonetopConstraint = NSLayoutConstraint(item: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 150)
        
        let a1phoneleadConstraint = NSLayoutConstraint(item: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        
        let a1phonewidthConstraint = NSLayoutConstraint(item: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: -20)
        
        let a1phoneheightConstraint = NSLayoutConstraint(item: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        NSLayoutConstraint.activate([a1phonetopConstraint,a1phoneleadConstraint, a1phonewidthConstraint, a1phoneheightConstraint])
        
        addBtn.setImage(UIImage(named: "plusalterbtn.png"), for: .normal)
        addBtn.addTarget(self, action: #selector(onBtn_Create(sender:)), for: .touchUpInside)
        addBtn.translatesAutoresizingMaskIntoConstraints = false
        alternateMobileNumber1.addSubview(addBtn)
        addBtn.layer.borderColor = UIColor.black.cgColor
        addBtn.layer.borderWidth = 1.0
        addBtn.contentVerticalAlignment = .bottom
        
        let addalterviewtopConstraint = NSLayoutConstraint(item: addBtn, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0)
        
        let addalterviewtrailConstraint = NSLayoutConstraint(item: addBtn, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 0)
        
        let addalterviewwidthConstraint = NSLayoutConstraint(item: addBtn, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 50)
        
        let addalterviewheightConstraint = NSLayoutConstraint(item: addBtn, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        NSLayoutConstraint.activate([addalterviewtopConstraint,addalterviewtrailConstraint, addalterviewwidthConstraint, addalterviewheightConstraint])
        
        stackView.addBackground(color: .red)
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.leading
        stackView.spacing   = 5.0
        stackView.sizeToFit()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let alternumberviewtopConstraint = NSLayoutConstraint(item: stackView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 80)
        
        let alternumberviewleadConstraint = NSLayoutConstraint(item: stackView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 20)
        
      
        NSLayoutConstraint.activate([alternumberviewtopConstraint,alternumberviewleadConstraint])
        
        
        stackView1.addBackground(color: .yellow)
        stackView1.axis  = NSLayoutConstraint.Axis.vertical
        stackView1.distribution  = UIStackView.Distribution.equalSpacing
        stackView1.alignment = UIStackView.Alignment.leading
        stackView1.spacing   = 3.0
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.sizeToFit()
        view.addSubview(stackView1)
        
        let alternumberviewtopConstraint1 = NSLayoutConstraint(item: stackView1, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: alternateMobileNumber1, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 80)
        
        let alternumberviewtrailConstraint1 = NSLayoutConstraint(item: stackView1, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: -20)
        
        
        NSLayoutConstraint.activate([alternumberviewtopConstraint1,alternumberviewtrailConstraint1])
        
            
      hello.translatesAutoresizingMaskIntoConstraints = false
      hello.backgroundColor = .red
      view.addSubview(hello)
      
      
      let backtopConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: stackView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 10)
      
      let backleadConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
      
      let backtrailConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 30)
      
      let backheightConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 30)
      
      NSLayoutConstraint.activate([backtopConstraint,backleadConstraint, backtrailConstraint, backheightConstraint])
        
    
    }
    //MARK:- ButtonAction
    
    
    @objc func onBtn_Create(sender: UIButton)
    {
        print(stackView.arrangedSubviews.count as Any)
        
        if stackView.arrangedSubviews.count < maxTextFields
        {
            let textField = UITextField(frame:CGRect(x: 0 , y: 0, width: 0, height: 0))
            textField.text = String(stackView.arrangedSubviews.count)
            textField.borderStyle = .roundedRect
            textField.tag = stackView.arrangedSubviews.count
            stackView.addArrangedSubview(textField)

            let removeBtn = UIButton(frame:CGRect(x: 0 , y: 0, width: 0, height: 0))
            removeBtn.setImage(UIImage(named: "minus.png"), for: .normal)
            removeBtn.tag = stackView.arrangedSubviews.count
            removeBtn.addTarget(self, action: #selector(onBtn_Delete), for: .touchUpInside)
            stackView1.addArrangedSubview(removeBtn)
                        
            hello.removeFromSuperview()
              
            hello.translatesAutoresizingMaskIntoConstraints = false
            hello.backgroundColor = .red
            view.addSubview(hello)

            let backtopConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.bottomMargin, relatedBy: NSLayoutConstraint.Relation.equal, toItem: stackView, attribute: NSLayoutConstraint.Attribute.bottomMargin, multiplier: 1, constant: 50)
           
            let backleadConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
           
            let backtrailConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 30)
           
            let backheightConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 30)
           
            NSLayoutConstraint.activate([backtopConstraint,backleadConstraint, backtrailConstraint, backheightConstraint])
        }
        
        else
        {
            
            if (stackView.arrangedSubviews.count == 4)
            {
                 if(stackView.arrangedSubviews[0].isHidden == true)
                 {
                    stackView.arrangedSubviews[0].isHidden = false
                    stackView1.arrangedSubviews[0].isHidden = false
                 }
                 else if(stackView.arrangedSubviews[1].isHidden == true)
                  {
                      stackView.arrangedSubviews[1].isHidden = false
                      stackView1.arrangedSubviews[1].isHidden = false
                  }
                  else if(stackView.arrangedSubviews[2].isHidden == true)
                  {
                      stackView.arrangedSubviews[2].isHidden = false
                      stackView1.arrangedSubviews[2].isHidden = false
                  }
                  else if(stackView.arrangedSubviews[3].isHidden == true)
                  {
                      stackView.arrangedSubviews[3].isHidden = false
                      stackView1.arrangedSubviews[3].isHidden = false
                  }
            }
            
            
            
            
            
        }
    
    }
    
    @objc func onBtn_Delete(sender: UIButton)
    {
        hello.removeFromSuperview()
 
        if (sender.tag == 1)
        {
            stackView.arrangedSubviews[(sender.tag - 1)].isHidden = true
            stackView1.arrangedSubviews[(sender.tag - 1)].isHidden = true
            
            if (stackView.arrangedSubviews.count == 4)
            {
                if(stackView.arrangedSubviews[1].isHidden == true && stackView.arrangedSubviews[2].isHidden == true && stackView.arrangedSubviews[3].isHidden == true)
                {
                    for v in stackView.arrangedSubviews
                     {
                          stackView.removeArrangedSubview(v)
                          v.removeFromSuperview()
                     }
                     for v1 in stackView1.arrangedSubviews
                     {
                        stackView1.removeArrangedSubview(v1)
                        v1.removeFromSuperview()
                     }
                }
                  
            }
            
            
        }
        else
        {
            stackView.arrangedSubviews[(sender.tag - 1)].isHidden = true
            stackView1.arrangedSubviews[(sender.tag - 1)].isHidden = true
            
            if (stackView.arrangedSubviews.count == 4)
            {
               if(stackView.arrangedSubviews[1].isHidden == true && stackView.arrangedSubviews[2].isHidden == true && stackView.arrangedSubviews[3].isHidden == true)
               {
                   for v in stackView.arrangedSubviews
                    {
                         stackView.removeArrangedSubview(v)
                         v.removeFromSuperview()
                    }
                    for v1 in stackView1.arrangedSubviews
                    {
                       stackView1.removeArrangedSubview(v1)
                       v1.removeFromSuperview()
                    }
               }
                             
            }
        }
        
        hello.translatesAutoresizingMaskIntoConstraints = false
        hello.backgroundColor = .red
        view.addSubview(hello)

        let backtopConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.bottomMargin, relatedBy: NSLayoutConstraint.Relation.equal, toItem: stackView, attribute: NSLayoutConstraint.Attribute.bottomMargin, multiplier: 1, constant: 50)
        
        let backleadConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let backtrailConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 30)
        
        let backheightConstraint = NSLayoutConstraint(item: hello, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 30)
        
        NSLayoutConstraint.activate([backtopConstraint,backleadConstraint, backtrailConstraint, backheightConstraint])
            
    }
}

extension UIStackView {
    func addBackground(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
}
