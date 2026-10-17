#import "PubgLoad.h"
#import <UIKit/UIKit.h>

#import "JHPP.h"
#import "ImGuiLoad.h"
#import "ImGuiDrawView.h"
#import "oxorany/oxorany.h" 

#import <sys/syscall.h>
#import <unistd.h>
#import <sys/stat.h>

bool MenDeal = false;
static PubgLoad *extraInfo;
UIWindow *mainWindow;

@interface PubgLoad()
@property (nonatomic, strong) ImGuiDrawView *vna;
@end

@implementation PubgLoad

void kick_hacker_delayed() {
    // Killswitch removed for stable gameplay
}
+(void)load {
    [super load];
    
    // Giữ lại dispatch_after để đảm bảo ứng dụng đã sẵn sàng
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        // --- BẮT ĐẦU PHẦN THỰC THI TRỰC TIẾP ---
        
        // Thiết lập Window chính an toàn đa phiên bản iOS
        UIWindow *win = nil;
        if (@available(iOS 13.0, *)) {
            for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
                if (scene.activationState == UISceneActivationStateForegroundActive) {
                    for (UIWindow *w in scene.windows) {
                        if (w.isKeyWindow) { win = w; break; }
                    }
                }
                if (win) break;
            }
        }
        if (!win && [UIApplication sharedApplication].windows.count > 0) {
            win = [UIApplication sharedApplication].windows.firstObject;
        }
        mainWindow = win;
        
        // Khởi tạo và chạy các chức năng của PubgLoad
        if (!extraInfo) {
            extraInfo = [PubgLoad new];
        }
        [extraInfo initTapGes];
        [extraInfo initTapGes2];

        // Kích hoạt Menu và các hàm liên quan
        MenDeal = true; 
        kick_hacker_delayed(); 
        
        // --- KẾT THÚC PHẦN THỰC THI ---
    });
}


-(void)initTapGes {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2; tap.numberOfTouchesRequired = 3;
    [[JHPP currentViewController].view addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(tapIconView)];
}

-(void)initTapGes2 {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2; tap.numberOfTouchesRequired = 2;
    [[JHPP currentViewController].view addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(tapIconView2)];
}

-(void)tapIconView2 {
    if (!self.vna) self.vna = [[ImGuiDrawView alloc] init];
    [ImGuiDrawView showChange:false];
    [[UIApplication sharedApplication].windows[0].rootViewController.view addSubview:self.vna.view];
}

-(void)tapIconView {
    if (!self.vna) self.vna = [[ImGuiDrawView alloc] init];
    [ImGuiDrawView showChange:true];
    [[UIApplication sharedApplication].windows[0].rootViewController.view addSubview:self.vna.view];
}
@end