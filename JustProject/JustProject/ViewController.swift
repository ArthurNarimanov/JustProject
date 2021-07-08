//
//  ViewController.swift
//  JustProject
//
//  Created by Arthur Narimanov on 7/5/21.
//

import UIKit

private let sizeCicle: CGFloat = 150.0

final class CicleViewController: UIViewController {

	private let cicleRedView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCicle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = .systemRed
		view.alpha = 0.5
		return view
	}()
	
	private let cicleGreenView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCicle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = .systemGreen
		view.alpha = 0.5
		return view
	}()
	
	private let cicleBlueView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCicle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = .systemBlue
		view.alpha = 0.5
		return view
	}()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .black
		
		setupUI()
	}
}

private extension CicleViewController {
	func setupUI() {
		view.addSubview(cicleBlueView)
		view.addSubview(cicleRedView)
		view.addSubview(cicleGreenView)
		
		setConstraints()
	}
	
	func setConstraints() {
		NSLayoutConstraint.activate([
			cicleRedView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			cicleRedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			cicleRedView.widthAnchor.constraint(equalToConstant: sizeCicle),
			cicleRedView.heightAnchor.constraint(equalToConstant: sizeCicle),
			
			cicleGreenView.centerYAnchor.constraint(equalTo: cicleRedView.centerYAnchor),
			cicleGreenView.centerXAnchor.constraint(equalTo: cicleRedView.centerXAnchor, constant: -(sizeCicle / 4)),
			cicleGreenView.widthAnchor.constraint(equalToConstant: sizeCicle),
			cicleGreenView.heightAnchor.constraint(equalToConstant: sizeCicle),
			
			cicleBlueView.centerYAnchor.constraint(equalTo: cicleRedView.centerYAnchor),
			cicleBlueView.centerXAnchor.constraint(equalTo: cicleRedView.centerXAnchor, constant: sizeCicle / 4),
			cicleBlueView.widthAnchor.constraint(equalToConstant: sizeCicle),
			cicleBlueView.heightAnchor.constraint(equalToConstant: sizeCicle),
		])
	}
}
