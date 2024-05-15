import UIKit

class ViewController: UIViewController {
    
    // Champ de texte pour l'e-mail
    let emailTextField: UITextField = {
        
        let tf = UITextField();
        tf.translatesAutoresizingMaskIntoConstraints = false;
        tf.placeholder = "Email";
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03);
        tf.borderStyle = .roundedRect;
        tf.font = UIFont.systemFont(ofSize: 14);
        // Écoute des changements dans l'entrée
        tf.addTarget(self, action: #selector(handleTextInputChanged), for: .editingChanged);
        return tf;
    }()
    
    // Champ de texte pour le mot de passe
    let passwordTextField: UITextField = {
        let tf = UITextField();
        tf.translatesAutoresizingMaskIntoConstraints = false;
        tf.placeholder = "Password";
        // Cache les caractères lorsque l'utilisateur entre le mot de passe
        tf.isSecureTextEntry = true;
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03);
        tf.borderStyle = .roundedRect;
        tf.font = UIFont.systemFont(ofSize: 14);
        // Écoute des changements dans l'entrée
        tf.addTarget(self, action: #selector(handleTextInputChanged), for: .editingChanged);
        return tf;
    }()
    
    // Bouton de connexion
    let loginButton: UIButton = {
        
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("Login", for: .normal);
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244);
        button.layer.cornerRadius = 5;
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14);
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside);
        button.isEnabled = false;
        return button;
    }()
    
    // Bouton d'inscription
    let signUpButton: UIButton = {
        
        let button = UIButton(type: .system);
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("Sign Up", for: .normal);
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244);
        button.layer.cornerRadius = 5;
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14);
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside);
        button.isEnabled = false;
        return button;
    }()
    
    
    @objc func handleTextInputChanged(){
        let isFormValid = emailTextField.text?.count ?? 0 > 0 && passwordTextField.text?.count ?? 0 > 0;
        
        if isFormValid {
            // Activer le bouton et changer la couleur
            signUpButton.isEnabled = true;
            signUpButton.backgroundColor = UIColor.rgb(red: 17, green: 154, blue: 237);
        }else{
            // Désactiver le bouton et changer la couleur
            signUpButton.isEnabled = false;
            signUpButton.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244);
        }
    }
    
    
    // MARQUE: Fonctions de bouton
    @objc func handleLogin(){
        
        guard let email = emailTextField.text, email.count > 0 else {return};
        guard let password = passwordTextField.text, password.count > 0 else {return};
        
    }
    
    @objc func handleSignUp(){
        
        guard let email = emailTextField.text, email.count > 0 else {return};
        guard let password = passwordTextField.text, password.count > 0 else {return};
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews();
        // Effectuer tout paramétrage supplémentaire après le chargement de la vue.
    }
    
    fileprivate func setUpViews(){
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, signUpButton]);

        // Nécessaire pour afficher tous les sous-vues arrangées
        stackView.distribution = .fillEqually;
        
        stackView.axis = .vertical;
        
        stackView.spacing = 15;
        
        view.addSubview(stackView);
        
      stackView.anchor(top: view.topAnchor, paddingTop: 200, bottom: nil, paddingBottom: 0, left: view.leftAnchor, paddingLeft: 40, right: view.rightAnchor, paddingRight: -40, width: 0, height: 200);
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBottom: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, width: CGFloat, height: CGFloat){
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true;
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true;
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true;
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true;
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true;
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true;
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false;
        
    }
}
