.class Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFICATION_REGION_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 916
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 917
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 918
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 922
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    goto/16 :goto_89

    .line 950
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 951
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 952
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 953
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 954
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 956
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_89

    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 945
    :pswitch_45
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 946
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    .line 947
    .end local v0    # "rotation":I
    goto :goto_89

    .line 941
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    .line 942
    goto :goto_89

    .line 931
    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 932
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 933
    .local v1, "left":I
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 934
    .local v2, "top":I
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 935
    .local v3, "right":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 936
    .local v4, "bottom":I
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v5

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 937
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 938
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    goto :goto_89

    .line 924
    :pswitch_74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 925
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    .line 926
    .local v1, "magnifiedBounds":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 927
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 928
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "magnifiedBounds":Landroid/graphics/Region;
    nop

    .line 959
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_74
        :pswitch_5b
        :pswitch_51
        :pswitch_45
        :pswitch_7
    .end packed-switch
.end method
