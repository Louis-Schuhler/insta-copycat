import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Point de remplacement pour la personnalisation après le lancement de l'application.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Envoyé lorsque l'application est sur le point de passer de l'état actif à l'état inactif. Cela peut se produire pour certains types d'interruptions temporaires (telles qu'un appel téléphonique entrant ou un message SMS) ou lorsque l'utilisateur quitte l'application et que la transition vers l'état arrière-plan commence.
        // Utilisez cette méthode pour mettre en pause les tâches en cours, désactiver les minuteurs et invalider les rappels de rendu graphique. Les jeux doivent utiliser cette méthode pour mettre en pause le jeu.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Utilisez cette méthode pour libérer les ressources partagées, enregistrer les données utilisateur, invalider les minuteurs et stocker suffisamment d'informations sur l'état de l'application pour restaurer votre application dans son état actuel au cas où elle serait terminée ultérieurement.
        // Si votre application prend en charge l'exécution en arrière-plan, cette méthode est appelée à la place de applicationWillTerminate: lorsque l'utilisateur quitte.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Appelé dans le cadre de la transition de l'arrière-plan à l'état actif; ici, vous pouvez annuler bon nombre des modifications apportées lors de l'entrée en arrière-plan.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Redémarrer les tâches qui étaient en pause (ou pas encore démarrées) pendant que l'application était inactive. Si l'application était précédemment en arrière-plan, actualisez éventuellement l'interface utilisateur.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Appelé lorsque l'application est sur le point de se terminer. Enregistrez les données si nécessaire. Voir également applicationDidEnterBackground:.
    }


}
