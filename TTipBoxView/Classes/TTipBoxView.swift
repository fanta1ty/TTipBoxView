//
//  TTipBoxView.swift
//  TTipBoxView
//
//  Created by Nguyen, Thinh on 03/08/2022.
//

import Foundation

public final class TTipBoxView: UIView {
    // MARK: - Public Properties
    public var image: UIImage? {
        get { imageView.image }
        
        set {
            imageView.image = newValue
            imageView.isHidden = newValue == nil
            imageView.setContentHuggingPriority(.required, for: .horizontal)
        }
    }
    
    // MARK: - Private Properties
    private let spacing: CGFloat
    private let reverseArrangement: Bool
    private let imageSize: CGSize?
    private let stackView = UIStackView()
    
    private(set) var imageView = UIImageView()
    
    public private(set) var tipLabel = UILabel()
    
    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }
    
    public init(spacing: CGFloat = 16,
                reverseArrangement: Bool = false,
                imageSize: CGSize? = nil) {
        self.spacing = spacing
        self.reverseArrangement = reverseArrangement
        self.imageSize = imageSize
        
        super.init(frame: .zero)
        
        addSubviews()
        setupSubviews()
        setupLayout()
    }
}

extension TTipBoxView {
    private func addSubviews() {
        addSubview(stackView)
        
        if reverseArrangement {
            stackView.addArrangedSubview(tipLabel)
            stackView.addArrangedSubview(imageView)
        } else {
            stackView.addArrangedSubview(imageView)
            stackView.addArrangedSubview(tipLabel)
        }
    }
    
    private func setupSubviews() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(rgb: 0xDCF2FC)
        layer.masksToBounds = true
        layer.cornerRadius = 4
        
        /// stackView
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .firstBaseline
        stackView.spacing = 8
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: spacing, left: spacing, bottom: spacing, right: spacing)
        
        /// tipLabel
        tipLabel.translatesAutoresizingMaskIntoConstraints = false
        tipLabel.numberOfLines = 0
        tipLabel.lineBreakMode = .byWordWrapping
        tipLabel.font = UIFont.systemFont(ofSize: 16)
        tipLabel.textColor = UIColor(rgb: 0x006400)
        
        /// imageView
        imageView.contentMode = .center
        imageView.isHidden = image == nil
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        guard let imageSize = imageSize else { return }
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: imageSize.width),
            imageView.heightAnchor.constraint(equalToConstant: imageSize.height)
        ])
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageSize.width / 2
    }
}

// MARK: - Other Extensions
private extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
