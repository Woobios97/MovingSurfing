# MovigSurfing 🎥 🍿_ 영화요약, 영화미리보기, 영화 예고편 iOS 앱



<img width="900" alt="0" src="https://github.com/Woobios97/MovingSurfing/assets/138302237/d7418c06-f6a1-4599-a3a1-ae21d6ee6a8a">



<br/>

프로젝트 소개 🎙️
-----------

> 영화는 보고싶지만, 바쁜 현대인들 속에서 어떤 것을 볼 지 헤매는 이들을 위해 개발 ⌨️

우리들은 🚶 언제나 바쁘게 살아갑니다. 그 바쁜 시간 속에 잠깐의 여유를 위해 영화 🎥 를 보 고싶지만, 어떤 영화를 볼 지 매번 망설이다가 결국 잠깐의 여유는 바람💨처럼 사라져버립니다. 이를 위해 개발한 **MovieSurfing, 최대 3분 시간 ⏱️ 내에 영화들을 빠르게 훑어보고 당신의 취향과 일상에 맞는 영화를 찾아보세요. 🍿**

| Home 🏠 | Search 🔎 |
| ------------ | ------------- |
| ![1](https://github.com/Woobios97/MovingSurfing/assets/138302237/d3c9122d-8d14-45a5-97e1-ba25e140c012) | ![2](https://github.com/Woobios97/MovingSurfing/assets/138302237/1eca171c-4aa4-4ebb-8e0b-76e523f7552b)  |

| Upcoming🎬  | Downloads 📥 |
| ------------ | ------------- |
| ![3](https://github.com/Woobios97/MovingSurfing/assets/138302237/5a260301-ab9a-480d-9f73-2d74fe043f2d) | ![4](https://github.com/Woobios97/MovingSurfing/assets/138302237/7468223d-5f7e-43be-9f3b-9a247940db33)  |

<br/>

Foldering 🗄️
-------------
```bash
─── MovingSuffing
│ │ ├── Managers
│ │ │ ├── APICaller
│ │ │ ├── DataPersistanceManager
│ │ ├── Resources
│ │ │ ├── Fonts
│ │ │ │ │ ├── 야놀자 야체 Bold.ttf
│ │ │ │ │ ├── BMDOHYEON_otf.otf
│ │ │ ├── Extensions
│ │ │ ├── Appdelegate
│ │ │ ├── SceneDelegate
│ │ ├── Models
│ │ │ ├──YoutubeSearchResponse
│ │ │ ├──Title
│ │ ├── ViewModels
│ │ │ ├──TitlePreviewViewModel
│ │ │ ├──TitleViewModel
│ │ ├── Controllers
│ │ │ ├── General
│ │ │ │ │ ├── SearchResultViewController
│ │ │ │ │ ├── TitlePreviewViewController
│ │ │ ├── Core
│ │ │ │ │ ├── MainTabBarViewController
│ │ │ │ │ ├── HomeViewController
│ │ │ │ │ ├── UpcomingViewController
│ │ │ │ │ ├── SearchViewController
│ │ │ │ │ ├── DownloadsViewController
└────── MovingSuffing
```

<br/>

프레임워크 & 디자인패턴 & 기술 스택 👨🏻‍💻
-----------------------------

-   UIKit
-   Programmatic UI
-   MVVM Model
-   CoreData
-   SDWebImage
-   API_Networking
    -   URLSession
        -   Youtube API
        -   TMDB
          
<br/>

왜 이런 기술을 썼나요? 👀
----------------

-   **Programmatic UI**
  
    -   계기
      
        -   혼자 개발할 때는 못느꼈으나, 또다른 iOS개발자와의 협업이 진행했을 때, **`git`** 에서 **`merge`** 를 할때마다 **`storyboard`** 에서 충돌이 잦음을 느꼈다.
          
    -   이유
      
        -   따라서 이번 앱에서는 코드 기반의 UI로 작성을 했으며, 기존의 코드 기반의 UI 작성하는 지식을 고도화하고 싶었기 때문이다.
          
-   **MVVM Model**
  
    -   계기
      
        -   그 전의 앱출시에서 **`MVC`** 모델로의 코드를 작성한 결과, **`스파게티코드🍝`** 가 되어서 디버깅을 할 때 어려움을 느꼈다.
          
    -   이유
      
        -   따라서 이번 앱에서는 **`MVVM모델`** 을 택하여 개발했다. **`MVVM모델`** 을 생각하며 코드를 작성한 결과, 확실히 **`MVVM모델`** 이 왜 코드의 확장성, 효율적인 데이터 바인딩이라는 키워드가 따라오는 지 체감했다. 가령, 이번 앱에서 **`UpcomingController`** 에 UI를 바꿀 필요가 있어, 바꾼다면 **`UpcomingController`** 만 코드를 보면되고, 그 외에 데이터바인딩 혹은 UI에 필요한 기능을 추가한다면, **`TitleViewModel`** 만 살펴봄으로써 쉽게 바꿀 수 있다. 즉, 코드의 가독성과 모듈화가 가능해짐을 느꼈다.
          
-   **CoreData**
  
    -   계기
      
        -   iOS개발자라면 누구나 들어봤을 내부저장 데이터방식인 **`CoreData`** 에 대해서 기존의 알고있던 이론적인 지식을 코드로 풀면서 다시금 상기시기킬 원했다.
          
    -   이유
      
        -   **`CoreData`** 에 대한 대체로는 **`Realm`** 과 가벼운 저장으로는 **`UserDefaults`** 가 있을 것이다. 이와 비교해서, **`CoreData`** 는 **Apple** 의 통합 프레임워크로서 성능최적화 **iOS** 의 다른 기술과의 시너지를 제공함을 알고 있다. 특히, **iCloud** 와의 통합을 지원해서, 다양한 **Apple** 기기 간의 데이터 동기화를 쉽게 구현할 수 있다고 알고있다. **`DataPersistanceManager`** 클래스를 통해 데이터의 저장, 조회, 삭제와 같은 기본적인 **`CRUD`** 연산을 수행하는 메서드를 구현하면서, **`CoreData`** 의 API가 얼마나 직관적이고 사용하기 쉬운지 체감할 수 있었다. 특히, **`NSFetchRequest`** 를 사용한 데이터 조회나 **`NSManagedObjectContext`** 의 **`save`** 메서드를 통한 데이터의 저장은 매우 간결하게 구현될 수 있었다. 추후에는 **`CoreData`** 의 장점인 확장성을 통해 **`NSPersistentCloudKitContainer`** 를 참조하도록 변경하여 **iCloud** 와 **`CoreData`** 의 기본적인 통합을 할 수 있도록 코드를 발전시키고 싶다.
          
-   **SDWebImage**
  
    -   계기
      
        -   앱의 이미지로딩속도와 사용자 경험을 최적화하고자 할 때, 이미지 다운로드와 캐싱 처리에 특화된 라이브러리 필요하다. 이를 위해서 **SDWebImage** 를 사용하였고, 비교대상으로는 **Kingfisher** 와 **AlamofireImage** 가 있을 것이다.
          
    -   이유
      
        -   **SDWebImage** 는 사실 그 전부터 꾸준히 제가 사용해왔던 외부라이브러리이다. **Kingfisher와 비교해보았을 때, SDWebImage** 는 **Objective-C** 로 작성되었고, 이로 인해 **Objective-C** 기반 프로젝에서도 사용하기 쉬운 것으로 인지하고 있고, **Kingfisher** 는 **Swift** 로 작성되었고, **Swift** 의 기능을 최대한 활용한 것으로 알고 있다. 따라서 **Kingfisher와 SDWebImage** 는 각자 어떤 것을 쓰든 선호의 차이라고 보여진다.
          
-   **Networking(YoutubeAPI, TMDB)**
  
    -   계기
      
        -   기획에 맞는 API를 적절히 선택하는 것도 1인 개발의 정수라고 생각한다. **'영화를 보고싶지만, 적절한 영화를 찾는데, 시간을 허비하는 사람들을 위한 서비스'** 를 위해서는 영화정보와 그에 대해서 보여줄 것이 필요했다.
          
    -   이유
      
        -   YoutubeAPI는 세계에서 가장 큰 동영상 플랫폼으로, 다양한 콘텐츠와 사용자들의 리뷰, 반응 등을 제공한다. 이를 통해 사용자들에게 영화에 대한 전반적인 인상과 반응을 줄 수 있을 것이라 생각했다.
        -   TMDB는 영화 및 Tv 쇼에 대한 풍부한 메타데이터를 제공한다. 이를 통해 영화의 상세정보, 배우, 감독, 평점 등을 사용자에게 제공할 수 있다.
        -   따라서 두 API를 적절히 활용하면 기획에 맞는 메타데이터가 될 수 있겠다고 생각했다.
  <br/>       

고민/ 문제와 해결 과정, 회고👨🏻‍⚕️
------------------------

-   UI 구축하는 데의 문제
  
    -   테이블뷰와 컬렉션뷰의 중첩
      
        -   고민/ 문제
          
            -   iOS개발자라면 누구나 테이블뷰와 컬렉션뷰를 만들 수는 있을 것이다. 그러나, 이번에 테이블뷰와 컬렉션뷰를 중첩시킴으로써, 복합적인 UI를 구현했다. 나는 각 카테고리마다 그 카테고리의 주제가 나오기를 원했고, 그 카테고리들의 안의 데이터들은 수평으로 스크롤이 되기를 원했다.
              
        -   해결
          
            -   다행히도, 이와 같은 요구사항의 UI 레퍼런스들은 많이 있었고, 이 코드들을 참고하여 UI를 구축하였다. 또한 **`UITableView`** 의 각 **`style`** 에 따른 테이블뷰를 구현해보면서 나만의 테이블뷰UI 데이터가 내적으로 쌓였다. 가령 **`style: .plain`** 이라면 섹션 간의 명확한 구분이 없어, 메일앱이나 메시지앱에서 적합하고 **`style: .grouped`** 는 각 섹션을 명확하게 구분하여, 설정화면이나 정보섹션에 어울리며, **`style: .insetGrouped`** 는 섹션들이 화면 가장자리에서 약간 떨어져 보이며, 카드 또는 패널처럼 보이게 되어 카드 UI 혹은 그룹화된 데이터를 보여줄 때 적합하다.
    -   홈뷰에서의 네비게이션바가 계속 보이는 문제

        ![5](https://github.com/Woobios97/MovingSurfing/assets/138302237/25f7302c-0d06-467a-8857-0b462241911c) | ![6](https://github.com/Woobios97/MovingSurfing/assets/138302237/8d4c39a2-40fb-4d16-8414-c6ac8342e379)

        

          -   고민/ 문제
            -   사용자가 MovingSurfing을 사용했을 때 홈뷰에서의 경험을 보았을 때, 홈뷰에서는 영화에 대한 정보가 많이 보여야 된다고 생각했다. 네비게이션바를 안보이는 것이 사용자 경험 측면(UX)에서 여러가지 이점이 있다고 생각했다.
              
                1.  **더 많은 콘텐츠 공간**
                    -   네비게이션바가 사라짐으로써 화면의 주요 콘텐츠 영역이 확장되어 사용자는 더 많은 정보를 한 번에 볼 수 있게 될 것이다.
                      
                2.  **집중된 사용자 경험**
                    -   네비게이션바가 사라지면 사용자의 주의는 화면의 주요 콘텐츠에만 집중한다. 이로 인해 사용자는 현재 보고 있는 콘텐츠에 더 집중할 수 있게 된다.
                      
                3.  **사용자의 의도 파악**
                    -   사용자가 스크롤을 내리는 행동은 콘텐츠를 탐색하려는 의도를 나타낸다. 네비게이션바가 사라지는 것은 이러한 사용자의 의도를 파악하고 그에 맞게 화면을 최적화하는 좋은 방법일 것이라 생각했다.
        -   해결
            -   **iOS개발자라면 **`HIG`** 를 인지를 하고 개발을 진행해야할 것이다.** 위와 같은 문제는 HIG의 연관된 설명과 꽤 흡사하다. **User Control and Freedom, 즉 사용자에게 제어권을 주는 것의 중요성을 강조한다. 스크롤을 통해 네비게이션바의 표시 여부를 제어할 수 있게 함으로써 사용자는 원하는 정보에 집중하거나 전체화면을 보는 등의 선택을 할 수 있다.** 이를 위해서는 **`ScrollView`** 가 스크롤될 때마다 자동으로 호출되는 **`scrollViewDidScroll(_:)`** 메서드가 필요할 것이라 생각되었다. 또한 뷰의 **`safeArea`** 의 안전 영역의 높이를 함수 내에 따로 저장해 iPhone 노치 부분을 피하고, **`navigationController.navigationBar.transform`** 의 y의 최소값을 **`-offset`** 을 설정시킴으로써 스크롤을 내릴 때 네비게이션 바가 위로 사라지도록 하였다.
              
-   Data의 문제
  
    -   데이터 이벤트처리
      
        -   고민/ 문제
          
            -   이번 프로젝트에서는 **Combine/ RxSwift** 등이 아닌 **DelegatePattern** 과 **Notification Pattern** 을 통한 이벤트 전달을 진행하였다. 이 두 패턴의 차이점은 추상적으로 인지했지만, 실제로 코드를 작성할 때마다 매번 고민되었다.
              
        -   해결
          
            -   두 패턴의 가장 큰 특징이라면, 일대일통신방식과 일대다통신방식일 것이다. 가령, 사용자가 홈뷰에서 인기영화 중 한 영화를 골라서 선택했다면, 테이블뷰셀은 통신을 하는 것과 동시에 셀이 선택되었다는 것을 홈뷰에 알리고, 홈뷰는 화면전화를 하면 될 것이다. 이는 테이블뷰셀과 홈뷰의 일대일 통신방식일 것이다. 혹은 사용자가 영화를 선택해 다운로드를 했다면 이도 마찬가지로, **DownloadViewController** 에 이를 알려서 테이블뷰를 **`reloadData()`** 를 하는 등의 이벤트전달이 가능할 것이다. 사실 후자의 경우 **Notification Pattern** 으로 처리하긴 했으나, 이는 **DelegatePattern** 으로 처리하는 것이 옳아보인다. 추후에 고려해보아야겠지만, 사용자 로그인을 통한 사용자상태변경알림, 푸시 알림 처림 등의 여러 객체에 이벤트 전달을 하였을 때는 노티피케이션 패턴으로 처리하는 것이 옳아보인다.
              
  <br/>       

앞으로의 계획 🧭
----------

-   커뮤니티 기능 도입
  
    -   사용자들 간의 영화 리뷰 공유, 토론 등의 커뮤니티 기능을 도입하여 앱의 사용성을 높이는 예정
      
-   **Firebase** 를 통한 **Push Notification** 기능
  
    -   사용자 활성
        -   새로운 영화 알림 기능, 사용자의 행동에 맞춘 알림 등 사용자의 앱 사용 빈도를 높일 수 있을 것이라 예상
          
-   **ViewModel** 테스트코드 추가
  
    -   위 기능추가을 하기 위해서 **UI로직인 View와 별개로 비즈니스로직관점에서 ViewModel에 대한 테스트코드를 따로 작성** 하여 로직검증과 안정성을 향상시킬 예정
