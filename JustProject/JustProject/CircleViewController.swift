//
//  ViewController.swift
//  JustProject
//
//  Created by Arthur Narimanov on 7/5/21.
// 	Source: https://pin.it/5NtHLKs
// 	TO-DO: - set noise and animation

import UIKit

private let sizeCircle: CGFloat = 150.0
private let alphaCircle: CGFloat = 0.4

final class CircleViewController: UIViewController {

	private let circleRedView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCircle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = UIColor.systemRed.withAlphaComponent(alphaCircle)
		view.isOpaque = false
		return view
	}()
	
	private let circleGreenView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCircle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = UIColor.systemGreen.withAlphaComponent(alphaCircle)
		view.isOpaque = false
		return view
	}()
	
	private let circleBlueView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = sizeCircle / 2
		view.layer.masksToBounds = true
		view.backgroundColor = UIColor.systemBlue.withAlphaComponent(alphaCircle)
		view.isOpaque = false
		return view
	}()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .black
		
		setupUI()
	}
}

private extension CircleViewController {
	func setupUI() {
		view.addSubview(circleBlueView)
		view.addSubview(circleRedView)
		view.addSubview(circleGreenView)
		
		setConstraints()
	}
	
	func setConstraints() {
		NSLayoutConstraint.activate([
			circleRedView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			circleRedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			circleRedView.widthAnchor.constraint(equalToConstant: sizeCircle),
			circleRedView.heightAnchor.constraint(equalToConstant: sizeCircle),
			
			circleGreenView.centerYAnchor.constraint(equalTo: circleRedView.centerYAnchor),
			circleGreenView.centerXAnchor.constraint(equalTo: circleRedView.centerXAnchor, constant: -(sizeCircle / 4)),
			circleGreenView.widthAnchor.constraint(equalToConstant: sizeCircle),
			circleGreenView.heightAnchor.constraint(equalToConstant: sizeCircle),
			
			circleBlueView.centerYAnchor.constraint(equalTo: circleRedView.centerYAnchor),
			circleBlueView.centerXAnchor.constraint(equalTo: circleRedView.centerXAnchor, constant: sizeCircle / 4),
			circleBlueView.widthAnchor.constraint(equalToConstant: sizeCircle),
			circleBlueView.heightAnchor.constraint(equalToConstant: sizeCircle),
		])
	}
}
