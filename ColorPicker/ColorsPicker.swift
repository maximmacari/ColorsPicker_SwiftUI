//
//  Color.swift
//  ColorPicker
//
//  Created by Maxim Macari on 07/10/2020.
//

import SwiftUI

struct ColorsPicker: UIViewControllerRepresentable {
    @Binding var colors: UIColor
    

    func makeCoordinator() -> Coordinator {
        Coordinator(color1: self)
    }
    
    func makeUIViewController(context: Context) -> UIColorPickerViewController {
        let picker = UIColorPickerViewController()
        picker.delegate = context.coordinator
        picker.selectedColor = colors
        
        return picker
        
    }
    
    func updateUIViewController(_ uiViewController: UIColorPickerViewController, context: UIViewControllerRepresentableContext <ColorsPicker>) {
        
        uiViewController.selectedColor.resolvedColor(with: UITraitCollection.current)
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIColorPickerViewControllerDelegate {
        
        var color: ColorsPicker
        init(color1: ColorsPicker){
            color = color1
        }
        
        func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
            self.color.colors = viewController.selectedColor
        }
        
        func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
            
        }
    }
    
}
