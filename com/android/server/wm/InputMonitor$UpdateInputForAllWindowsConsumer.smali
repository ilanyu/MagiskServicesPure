.class final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateInputForAllWindowsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field gestureAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field inDrag:Z

.field navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;

.field wallpaperController:Lcom/android/server/wm/WallpaperController;

.field wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "x1"    # Lcom/android/server/wm/InputMonitor$1;

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .param p1, "x1"    # Z

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method private updateInputWindows(Z)V
    .registers 8
    .param p1, "inDrag"    # Z

    .line 632
    const-string/jumbo v0, "updateInputWindows"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "nav_input_consumer"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "wallpaper_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "recents_animation_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "gesture_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->gestureAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v5, 0x1

    if-eqz v3, :cond_48

    move v3, v5

    goto :goto_49

    :cond_48
    move v3, v4

    :goto_49
    # setter for: Lcom/android/server/wm/InputMonitor;->mAddInputConsumerHandle:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_54

    move v3, v5

    goto :goto_55

    :cond_54
    move v3, v4

    :goto_55
    # setter for: Lcom/android/server/wm/InputMonitor;->mAddPipInputConsumerHandle:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_60

    move v3, v5

    goto :goto_61

    :cond_60
    move v3, v4

    :goto_61
    # setter for: Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_6c

    move v3, v5

    goto :goto_6d

    :cond_6c
    move v3, v4

    :goto_6d
    # setter for: Lcom/android/server/wm/InputMonitor;->mAddRecentsAnimationInputConsumerHandle:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 649
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->gestureAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_78

    move v3, v5

    goto :goto_79

    :cond_78
    move v3, v4

    :goto_79
    # setter for: Lcom/android/server/wm/InputMonitor;->mAddGestureInputConsumerHandle:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$602(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 650
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$700(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z
    invoke-static {v0, v4}, Lcom/android/server/wm/InputMonitor;->access$802(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 652
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 662
    :cond_b4
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;
    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)[Lcom/android/server/input/InputWindowHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$1200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/input/InputWindowHandle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;Lcom/android/server/input/InputWindowHandle;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # invokes: Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)V

    .line 666
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 667
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .registers 21
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    .line 671
    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 672
    .local v10, "inputChannel":Landroid/view/InputChannel;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 673
    .local v11, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v10, :cond_173

    if-eqz v11, :cond_173

    iget-boolean v1, v9, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_173

    .line 674
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_173

    .line 679
    :cond_18
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 680
    .local v12, "flags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 681
    .local v13, "privateFlags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 682
    .local v14, "type":I
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1400(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v9, v1, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    move v15, v1

    .line 685
    .local v15, "hasFocus":Z
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3e

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-eqz v1, :cond_3e

    move v1, v2

    goto :goto_3f

    :cond_3e
    move v1, v3

    :goto_3f
    move/from16 v16, v1

    .line 686
    .local v16, "isDummyVisible":Z
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4d

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mIgnoreInput:Z

    if-eqz v1, :cond_4d

    move v1, v2

    goto :goto_4e

    :cond_4d
    move v1, v3

    :goto_4e
    move/from16 v17, v1

    .line 687
    .local v17, "ignoreInput":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_5c

    if-nez v16, :cond_5c

    if-nez v17, :cond_5c

    move v1, v2

    goto :goto_5d

    :cond_5c
    move v1, v3

    :goto_5d
    move/from16 v18, v1

    .line 691
    .local v18, "isVisible":Z
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddGestureInputConsumerHandle:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 692
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->gestureAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 693
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mAddGestureInputConsumerHandle:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$602(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 697
    :cond_75
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddRecentsAnimationInputConsumerHandle:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 698
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 699
    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 700
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_a8

    iget-object v4, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 701
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RecentsAnimationController;->hasInputConsumerForApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 702
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v2, v15}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Lcom/android/server/wm/InputConsumerImpl;Z)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 704
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v2, v4}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 705
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mAddRecentsAnimationInputConsumerHandle:Z
    invoke-static {v2, v3}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 709
    :cond_a7
    return-void

    .line 713
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 714
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddPipInputConsumerHandle:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$300(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget v1, v11, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v4, :cond_e6

    .line 717
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$700(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 718
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$700(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 719
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 720
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mAddPipInputConsumerHandle:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 723
    :cond_e6
    if-nez v15, :cond_e9

    .line 725
    return-void

    .line 729
    :cond_e9
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddInputConsumerHandle:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_109

    iget v1, v11, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v4, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v4, :cond_109

    .line 731
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 732
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mAddInputConsumerHandle:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 735
    :cond_109
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 736
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v1, v4, :cond_12d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 738
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    # invokes: Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    invoke-static {v1, v4}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 739
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mAddWallpaperInputConsumerHandle:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 743
    :cond_12d
    and-int/lit16 v1, v13, 0x800

    if-eqz v1, :cond_136

    .line 744
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # setter for: Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$802(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 746
    :cond_136
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_14c

    and-int/lit16 v1, v13, 0x400

    if-nez v1, :cond_14c

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 748
    # getter for: Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-nez v1, :cond_14c

    move v8, v2

    goto :goto_14d

    :cond_14c
    move v8, v3

    .line 752
    .local v8, "hasWallpaper":Z
    :goto_14d
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    if-eqz v1, :cond_166

    if-eqz v18, :cond_166

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_166

    .line 753
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    # getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 756
    :cond_166
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    move-object v2, v11

    move-object v3, v9

    move v4, v12

    move v5, v14

    move/from16 v6, v18

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 758
    return-void

    .line 676
    .end local v8    # "hasWallpaper":Z
    .end local v12    # "flags":I
    .end local v13    # "privateFlags":I
    .end local v14    # "type":I
    .end local v15    # "hasFocus":Z
    .end local v16    # "isDummyVisible":Z
    .end local v17    # "ignoreInput":Z
    .end local v18    # "isVisible":Z
    :cond_173
    :goto_173
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 619
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
