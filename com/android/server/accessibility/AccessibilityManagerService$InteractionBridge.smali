.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final COMPONENT_NAME:Landroid/content/ComponentName;

.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 20

    move-object/from16 v15, p0

    .line 2824
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2817
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.server.accessibility"

    const-string v3, "InteractionBridge"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2825
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    move-object v14, v1

    .line 2826
    .local v14, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 2827
    iget v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 2828
    iget v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 2830
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2831
    :try_start_2f
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2832
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_85

    .line 2833
    new-instance v16, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;

    .line 2834
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2835
    # operator++ for: Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2508()I

    move-result v7

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v8

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v9

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v10

    .line 2836
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v12

    .line 2837
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;

    move-result-object v13

    move-object/from16 v1, v16

    move-object v2, v15

    move-object v6, v14

    move-object v11, v0

    move-object/from16 v17, v14

    move-object v14, v0

    .end local v14    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .local v17, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2844
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iput v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 2846
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 2847
    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-static {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 2850
    nop

    .line 2851
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2852
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 2853
    return-void

    .line 2832
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v17    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v14    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_85
    move-exception v0

    move-object/from16 v17, v14

    .end local v14    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v17    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_88
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_8a

    throw v0

    :catchall_8a
    move-exception v0

    goto :goto_88
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 2919
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2920
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 2921
    .local v1, "focusedWindowId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 2922
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2924
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 2925
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2924
    .end local v1    # "focusedWindowId":I
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .param p1, "windowId"    # I

    .line 2929
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 2856
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2857
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_b

    .line 2858
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 2860
    :cond_b
    return-void
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .registers 11
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 2881
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2882
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2883
    return v1

    .line 2886
    :cond_8
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2887
    :try_start_f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2888
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2891
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 2892
    .local v4, "spec":Landroid/view/MagnificationSpec;
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 2893
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    float-to-int v5, v5

    iget v6, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2894
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v4, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2898
    :cond_3d
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2899
    .local v5, "windowBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    .line 2900
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 2901
    monitor-exit v2

    return v1

    .line 2905
    :cond_54
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v6

    .line 2906
    .local v6, "screenSize":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2907
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, v1, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 2908
    monitor-exit v2

    return v1

    .line 2911
    :cond_6b
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Point;->set(II)V

    .line 2912
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    .end local v5    # "windowBounds":Landroid/graphics/Rect;
    .end local v6    # "screenSize":Landroid/graphics/Point;
    monitor-exit v2

    .line 2914
    const/4 v1, 0x1

    return v1

    .line 2912
    :catchall_79
    move-exception v1

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_f .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 4
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2873
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2874
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 2877
    :cond_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    return v1

    .line 2875
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    return v1
.end method
