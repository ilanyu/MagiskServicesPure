.class public Lcom/android/server/wm/WindowAnimatorInjector;
.super Ljava/lang/Object;
.source "WindowAnimatorInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimatorInjector"

.field private static sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

.field private static sTmpLockWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;

    .line 10
    sput-object p0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;

    .line 10
    sput-object p0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method private static isObscuringFullScreen(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 86
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    if-nez p1, :cond_7

    return v0

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 90
    :cond_e
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_21

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v1, :cond_21

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v2, :cond_21

    const/4 v0, 0x1

    nop

    :cond_21
    return v0
.end method

.method static updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 16
    if-eqz p0, :cond_7c

    if-nez p1, :cond_6

    goto/16 :goto_7c

    .line 19
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Lcom/android/server/wm/WindowAnimatorInjector$1;

    invoke-direct {v1}, Lcom/android/server/wm/WindowAnimatorInjector$1;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 43
    sget-object v1, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_76

    if-nez v1, :cond_19

    .line 79
    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    .line 80
    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    .line 44
    return-void

    .line 47
    :cond_19
    const/4 v1, 0x0

    .line 48
    .local v1, "hideLockWindow":Z
    :try_start_1a
    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_45

    .line 49
    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_45

    .line 51
    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_45

    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    .line 52
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_45

    sget-object v3, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    sget-object v4, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 53
    invoke-static {v3, v4}, Lcom/android/server/wm/WindowAnimatorInjector;->isObscuringFullScreen(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 55
    const/4 v1, 0x1

    .line 62
    :cond_45
    const/4 v3, 0x0

    if-eqz v1, :cond_4f

    .line 63
    sget-object v4, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v3

    .line 63
    .local v3, "change":Z
    goto :goto_55

    .line 65
    .end local v3    # "change":Z
    :cond_4f
    sget-object v4, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v3

    .line 68
    .restart local v3    # "change":Z
    :goto_55
    if-eqz v3, :cond_70

    .line 69
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 70
    sget-object v2, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    .line 71
    if-eqz v1, :cond_60

    .line 72
    sget-object v4, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->HIDE:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    goto :goto_62

    .line 73
    :cond_60
    sget-object v4, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->SHOW:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    .line 70
    :goto_62
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->requestTraversalOnceLw(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 74
    const-string v2, "WindowAnimatorInjector"

    const-string/jumbo v4, "someone else changed lock window policy, there must be a bug!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_1a .. :try_end_70} :catchall_76

    .line 79
    .end local v1    # "hideLockWindow":Z
    .end local v3    # "change":Z
    :cond_70
    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    .line 80
    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    .line 81
    nop

    .line 82
    return-void

    .line 79
    :catchall_76
    move-exception v1

    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;

    .line 80
    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;

    throw v1

    .line 16
    :cond_7c
    :goto_7c
    return-void
.end method
