.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;,
        Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 1773
    packed-switch p0, :pswitch_data_e

    .line 1779
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1777
    :pswitch_8
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1775
    :pswitch_b
    const-string v0, "USER_ROTATION_FREE"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1174
    return-void
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createHiddenByKeyguardExitForAppWindow(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishLayoutLw(Lcom/android/server/wm/DisplayFrames;)V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp()V
.end method

.method public abstract focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .registers 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p4, "outFrame"    # Landroid/graphics/Rect;
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outOutsets"    # Landroid/graphics/Rect;
    .param p8, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNavBarPosition()I
.end method

.method public abstract getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
.end method

.method public abstract getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
.end method

.method public abstract getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 5
    .param p1, "type"    # I

    .line 928
    packed-switch p1, :pswitch_data_26

    .line 941
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v0, 0x0

    return v0

    .line 939
    :pswitch_1b
    const/4 v0, 0x3

    return v0

    .line 935
    :pswitch_1d
    const/4 v0, -0x1

    return v0

    .line 937
    :pswitch_1f
    const/4 v0, 0x2

    return v0

    .line 933
    :pswitch_21
    const/4 v0, -0x2

    return v0

    .line 931
    :pswitch_23
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_1b
    .end packed-switch
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"    # I

    .line 794
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 798
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 795
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 816
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_9

    const/16 v2, 0x63

    if-gt p1, v2, :cond_9

    .line 817
    return v1

    .line 820
    :cond_9
    const/16 v2, 0xb

    const/16 v3, 0xa

    packed-switch p1, :pswitch_data_86

    .line 913
    :pswitch_10
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return v1

    .line 853
    :pswitch_27
    const/16 v0, 0xc

    return v0

    .line 888
    :pswitch_2a
    const/16 v0, 0x19

    return v0

    .line 830
    :pswitch_2d
    return v1

    .line 828
    :pswitch_2e
    return v1

    .line 904
    :pswitch_2f
    const/16 v0, 0x1e

    return v0

    .line 838
    :pswitch_32
    const/4 v0, 0x5

    return v0

    .line 826
    :pswitch_34
    return v1

    .line 894
    :pswitch_35
    const/16 v0, 0x1b

    return v0

    .line 897
    :pswitch_38
    const/16 v0, 0x1c

    return v0

    .line 884
    :pswitch_3b
    const/16 v0, 0x18

    return v0

    .line 856
    :pswitch_3e
    const/16 v0, 0xd

    return v0

    .line 840
    :pswitch_41
    const/4 v0, 0x6

    return v0

    .line 908
    :pswitch_43
    const/16 v0, 0x20

    return v0

    .line 874
    :pswitch_46
    const/16 v0, 0x15

    return v0

    .line 881
    :pswitch_49
    const/16 v0, 0x17

    return v0

    .line 911
    :pswitch_4c
    const/16 v0, 0x21

    return v0

    .line 868
    :pswitch_4f
    const/16 v0, 0x13

    return v0

    .line 901
    :pswitch_52
    const/16 v0, 0x1d

    return v0

    .line 906
    :pswitch_55
    const/16 v0, 0x1f

    return v0

    .line 866
    :pswitch_58
    const/16 v0, 0x12

    return v0

    .line 823
    :pswitch_5b
    return v0

    .line 862
    :pswitch_5c
    const/16 v0, 0xf

    return v0

    .line 859
    :pswitch_5f
    const/16 v0, 0xe

    return v0

    .line 891
    :pswitch_62
    if-eqz p2, :cond_67

    const/16 v3, 0x1a

    nop

    :cond_67
    return v3

    .line 870
    :pswitch_68
    const/16 v0, 0x14

    return v0

    .line 842
    :pswitch_6b
    const/4 v0, 0x7

    return v0

    .line 848
    :pswitch_6d
    const/16 v0, 0x9

    return v0

    .line 878
    :pswitch_70
    if-eqz p2, :cond_75

    const/16 v2, 0x16

    nop

    :cond_75
    return v2

    .line 845
    :pswitch_76
    const/16 v0, 0x8

    return v0

    .line 851
    :pswitch_79
    if-eqz p2, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v3

    :goto_7d
    return v2

    .line 832
    :pswitch_7e
    const/4 v0, 0x3

    return v0

    .line 835
    :pswitch_80
    const/4 v0, 0x4

    return v0

    .line 864
    :pswitch_82
    const/16 v0, 0x11

    return v0

    nop

    :pswitch_data_86
    .packed-switch 0x7d0
        :pswitch_82
        :pswitch_80
        :pswitch_7e
        :pswitch_79
        :pswitch_10
        :pswitch_76
        :pswitch_70
        :pswitch_6d
        :pswitch_6b
        :pswitch_68
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_10
        :pswitch_38
        :pswitch_35
        :pswitch_10
        :pswitch_10
        :pswitch_34
        :pswitch_32
        :pswitch_2f
        :pswitch_80
        :pswitch_2e
        :pswitch_2d
        :pswitch_2a
        :pswitch_34
        :pswitch_27
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 783
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(JI)I
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isDockSideAllowed(IIIII)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isShowingDreamLw()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1194
    return-void
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onLockTaskStateChangedLw(I)V
.end method

.method public onOverlayChangedLw()V
    .registers 1

    .line 178
    return-void
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestUserActivityNotification()V
.end method

.method public abstract rotationForOrientationLw(IIZ)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setAodShowing(Z)Z
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 1627
    return-void
.end method

.method public abstract setHangUpEnable(Z)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract shouldRotateSeamlessly(II)Z
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp()V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
