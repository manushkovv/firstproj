import UIKit

class ViewController: UIViewController {

    private var isFirstTap = true
    
    // Программное создание кнопки
    private let colorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ТЫК!", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Настройка View
        view.backgroundColor = .white
        
        // Добавляем кнопку на экран
        view.addSubview(colorButton)
        
        // Ограничения для кнопки (constraints)
        NSLayoutConstraint.activate([
            colorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            colorButton.widthAnchor.constraint(equalToConstant: 200),
            colorButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // Добавляем действие для кнопки
        colorButton.addTarget(self, action: #selector(changeColor(_:)), for: .touchUpInside)
    }
    
    @objc private func changeColor(_ sender: UIButton) {
        if isFirstTap {
            // Первое нажатие — устанавливаем жёлтый цвет
            sender.backgroundColor = .yellow
            isFirstTap = false // Сбрасываем флаг после первого нажатия
        } else {
            // Последующие нажатия — генерируем случайный цвет
            let randomColor = UIColor(
                red: CGFloat.random(in: 0...1),
                green: CGFloat.random(in: 0...1),
                blue: CGFloat.random(in: 0...1),
                alpha: 1.0
            )
            sender.backgroundColor = randomColor
        }
    }
}
