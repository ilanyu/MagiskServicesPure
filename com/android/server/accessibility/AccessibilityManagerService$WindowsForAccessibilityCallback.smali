.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2708
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .param p1, "x1"    # Landroid/view/WindowInfo;

    .line 2708
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 3
    .param p1, "windowType"    # I

    .line 2763
    packed-switch p1, :pswitch_data_1e

    packed-switch p1, :pswitch_data_2a

    packed-switch p1, :pswitch_data_36

    packed-switch p1, :pswitch_data_42

    packed-switch p1, :pswitch_data_56

    sparse-switch p1, :sswitch_data_5e

    .line 2810
    const/4 v0, -0x1

    return v0

    .line 2802
    :sswitch_14
    const/4 v0, 0x5

    return v0

    .line 2806
    :sswitch_16
    const/4 v0, 0x4

    return v0

    .line 2781
    :pswitch_18
    const/4 v0, 0x2

    return v0

    .line 2798
    :pswitch_1a
    :sswitch_1a
    const/4 v0, 0x3

    return v0

    .line 2776
    :pswitch_1c
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x7d0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1c
        :pswitch_1a
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x7d5
        :pswitch_1c
        :pswitch_1a
        :pswitch_1c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x7e3
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :sswitch_data_5e
    .sparse-switch
        0x3ed -> :sswitch_1c
        0x7de -> :sswitch_1a
        0x7e1 -> :sswitch_1a
        0x7e8 -> :sswitch_1a
        0x7f0 -> :sswitch_16
        0x7f2 -> :sswitch_14
        0x7f4 -> :sswitch_1a
        0x7f6 -> :sswitch_1a
    .end sparse-switch
.end method

.method private populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 9
    .param p1, "window"    # Landroid/view/WindowInfo;

    .line 2727
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    .line 2728
    .local v0, "windowId":I
    if-gez v0, :cond_c

    .line 2729
    const/4 v1, 0x0

    return-object v1

    .line 2732
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2734
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 2735
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 2736
    iget v2, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 2737
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 2738
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2739
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2740
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 2741
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 2743
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    .line 2744
    .local v2, "parentId":I
    if-ltz v2, :cond_47

    .line 2745
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 2748
    :cond_47
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_6a

    .line 2749
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2750
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    if-ge v4, v3, :cond_6a

    .line 2751
    iget-object v5, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2752
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 2753
    .local v6, "childId":I
    if-ltz v6, :cond_67

    .line 2754
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 2750
    .end local v5    # "childToken":Landroid/os/IBinder;
    .end local v6    # "childId":I
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 2759
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_6a
    return-object v1
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 2713
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2719
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 2722
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2723
    monitor-exit v0

    .line 2724
    return-void

    .line 2723
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
