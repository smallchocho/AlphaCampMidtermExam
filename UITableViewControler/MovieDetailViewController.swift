//
//  RestaurantDetailViewController.swift
//  UITableViewControler
//
//  Created by Justin Huang on 2016/9/24.
//  Copyright © 2016年 Justin Huang. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    @IBOutlet weak var titleOfMovie: UINavigationItem!
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    var name = ""
    var type = ""
    var restaurantImage  = ""//用來當作命令restaurantImageView提取目標檔案名稱的Key
    var movieDescription = "《美國隊長3：英雄內戰》（英語：Captain America: Civil War）是一部於2016年上映的美國超級英雄電影，由羅素兄弟共同執導，克里斯多福·馬克斯與史蒂芬·麥菲利編劇，驚奇影業製作，華特迪士尼影業發行。本片改編自漫威漫畫旗下的角色美國隊長和馬克·米勒的2006年漫畫《內戰》的故事情節，為2014年電影《美國隊長2：酷寒戰士》的續集和漫威電影宇宙的第十三部作品。本片由多名演員共同出演，包括克里斯·伊凡、小勞勃·道尼、史嘉蕾·喬韓森、安東尼·麥基、保羅·路德、丹尼爾·布爾、傑瑞米·雷納、賽巴斯汀·斯坦、艾蜜莉·芬凱普、查德維克·博斯曼、伊麗莎白·奧爾森、保羅·巴特尼、唐·奇鐸、湯姆·荷蘭、威廉·赫特以及法蘭克·葛里洛。在《美國隊長3：英雄內戰》中，美國隊長和鋼鐵人因一項管理超能人士的活動的法案而此態度對立，進而各自組建陣營對抗。\n本片的開發始於2013年末，馬庫斯與麥克菲利從那時起開始創作劇本，使用了馬克·米勒的2006年漫畫作品《內戰》概念。在《美國隊長2：酷寒戰士》劇本測試獲得正面的迴響後，羅素兄弟於2014年初確認將回歸執導續集。2014年10月，片名公布，同月唐尼確認將加盟本片，其餘演員在隨後幾月中均確認出演本片。影片的主要拍攝工作於2015年4月喬治亞州費耶特縣的松林亞特蘭大工作室開展，其餘拍攝工作分別在波多黎各、柏林與冰島進行。\n本片使用數位IMAX攝影機拍攝，定於2016年5月6日以含3D、數位IMAX版在北美上映，而香港、澳門及台灣則於2016年4月27日以含3D、數位IMAX版上映。"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.titleOfMovie.title = name
        self.restaurantImageView.image = UIImage(named:restaurantImage)
        self.movieDescriptionLabel.text = movieDescription
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
