.class public abstract Lcom/android/server/wm/WindowManagerInternal;
.super Lcom/android/server/wm/MiuiWindowManagerInternal;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;,
        Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;,
        Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;,
        Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/android/server/wm/MiuiWindowManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addWindowToken(Landroid/os/IBinder;II)V
.end method

.method public abstract clearLastInputMethodWindowForTransition()V
.end method

.method public abstract computeWindowsForAccessibility()V
.end method

.method public abstract getCastMode()Z
.end method

.method public abstract getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getInputMethodWindowVisibleHeight()I
.end method

.method public abstract getMagnificationRegion(Landroid/graphics/Region;)V
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract getWindowOwnerUserId(Landroid/os/IBinder;)I
.end method

.method public abstract isDockedDividerResizing()Z
.end method

.method public abstract isHardKeyboardAvailable()Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isStackVisible(I)Z
.end method

.method public abstract lockNow()V
.end method

.method public abstract registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
.end method

.method public abstract registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;ZI)V
.end method

.method public abstract requestTraversalFromDisplayManager()V
.end method

.method public abstract saveLastInputMethodWindowForTransition()V
.end method

.method public abstract setBsInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setForceShowMagnifiableBounds(Z)V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
.end method

.method public abstract setMagnificationSpec(Landroid/view/MagnificationSpec;)V
.end method

.method public abstract setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
.end method

.method public abstract setTalkbackMode(Z)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract updateInputMethodWindowStatus(Landroid/os/IBinder;ZZLandroid/os/IBinder;)V
.end method

.method public abstract waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
.end method
