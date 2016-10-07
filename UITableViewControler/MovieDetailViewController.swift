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
    let movieDescription:[String] = ["《美國隊長3：英雄內戰》（英語：Captain America: Civil War）是一部於2016年上映的美國超級英雄電影，由羅素兄弟共同執導，克里斯多福·馬克斯與史蒂芬·麥菲利編劇，驚奇影業製作，華特迪士尼影業發行。本片改編自漫威漫畫旗下的角色美國隊長和馬克·米勒的2006年漫畫《內戰》的故事情節，為2014年電影《美國隊長2：酷寒戰士》的續集和漫威電影宇宙的第十三部作品。本片由多名演員共同出演，包括克里斯·伊凡、小勞勃·道尼、史嘉蕾·喬韓森、安東尼·麥基、保羅·路德、丹尼爾·布爾、傑瑞米·雷納、賽巴斯汀·斯坦、艾蜜莉·芬凱普、查德維克·博斯曼、伊麗莎白·奧爾森、保羅·巴特尼、唐·奇鐸、湯姆·荷蘭、威廉·赫特以及法蘭克·葛里洛。在《美國隊長3：英雄內戰》中，美國隊長和鋼鐵人因一項管理超能人士的活動的法案而此態度對立，進而各自組建陣營對抗。\n本片的開發始於2013年末，馬庫斯與麥克菲利從那時起開始創作劇本，使用了馬克·米勒的2006年漫畫作品《內戰》概念。在《美國隊長2：酷寒戰士》劇本測試獲得正面的迴響後，羅素兄弟於2014年初確認將回歸執導續集。2014年10月，片名公布，同月唐尼確認將加盟本片，其餘演員在隨後幾月中均確認出演本片。影片的主要拍攝工作於2015年4月喬治亞州費耶特縣的松林亞特蘭大工作室開展，其餘拍攝工作分別在波多黎各、柏林與冰島進行。\n本片使用數位IMAX攝影機拍攝，定於2016年5月6日以含3D、數位IMAX版在北美上映，而香港、澳門及台灣則於2016年4月27日以含3D、數位IMAX版上映。" ,"《我的少女時代》（英語：Our Times），由陳玉珊初次執導，宋芸樺、王大陸、李玉璽、簡廷芮所領銜主演，2015年度一部以1990年代為背景，校園愛情、青春懷舊為題材的愛情輕喜劇電影。有別於2011年度紅極一時的《那些年，我們一起追的女孩》，本片劇情走向是以女性觀點出發作為其主要視角，非真人真事。2016年7月19日，陳玉珊宣布將此戲翻拍成連續劇，由緯來戲劇台、三立都會台聯合製播，每集90分鐘，拍攝30集。\n本片獲文化部影視及流行音樂產業局2014年度第2梯次台灣電影長片輔導金新人組700萬新台幣之輔助[2][3][4]，於2014年10月份開拍，2015年4月份正式殺青。我的少女時代於2015年6月14日在第18屆上海國際影展亮相，正式介紹給兩岸三地的觀眾們。本片同時也入選第20屆韓國釜山國際影展之「Open Cinema」單元，獲邀於2015年10月5日在可容納4000人之戶外露天劇場公開放映，其中在2016年5月12日於韓國上映時，成為繼《盛夏光年》、《不能說的·秘密》、《聽說》、《那些年我們一起追的女孩》、《逆光飛翔》這五部電影後，第六部在韓國放映的臺灣電影。我的少女時代在全球24億票房，是繼那些年之後，另一個成功的海外輸出國片。\n本片也被多倫多亞洲國際影展（Toronto Reel Asian International Film Festival）選為焦點影片，於2015年11月8日及9日在安省美術館AGO Jackman Hall劇場展映，且創下此影展創辦20年以來，史上第一次24小時內座位完售的秒殺紀錄。\n中華民國於2015年8月13日正式上映（8月12日於台北信義威秀影城舉行首(特)映會）；香港10月15日上映（10月11日於香港奧海城舉行首映會）；新加坡10月25日上映；中國大陸、澳洲和紐西蘭11月19日上映；英國、美國和加拿大在11月20日上映。韓國在2016年5月12日上映。"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.titleOfMovie.title = name
        self.restaurantImageView.image = UIImage(named:restaurantImage)
        if name == "美國隊長3英雄內戰"{
            self.movieDescriptionLabel.text = movieDescription[0]
        }else{
            self.movieDescriptionLabel.text = movieDescription[1]
        }
        
        
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
