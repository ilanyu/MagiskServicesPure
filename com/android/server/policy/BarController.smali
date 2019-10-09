.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/policy/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "transparentFlag"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 80
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 81
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 82
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 83
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 84
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    .line 85
    new-instance v0, Lcom/android/server/policy/BarController$BarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$1;)V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .line 41
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method private computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .line 203
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 204
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    .line 205
    .local v0, "vis":Z
    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    .line 206
    .local v1, "anim":Z
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    if-nez p4, :cond_19

    if-nez v0, :cond_19

    .line 207
    return v3

    .line 208
    :cond_19
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_21

    if-eqz v0, :cond_21

    .line 209
    return v5

    .line 210
    :cond_21
    if-eqz p4, :cond_2d

    .line 211
    if-eqz p1, :cond_2c

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    if-eqz v1, :cond_2c

    .line 212
    return v4

    .line 214
    :cond_2c
    return v5

    .line 218
    .end local v0    # "vis":Z
    .end local v1    # "anim":Z
    :cond_2d
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    return v0
.end method

.method private setTransientBarState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_17

    .line 308
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    if-ne p1, v1, :cond_15

    .line 309
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 311
    :cond_15
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 314
    :cond_17
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 326
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 327
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 328
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 329
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 330
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 222
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_12

    .line 223
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 5
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_17

    .line 131
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_29

    .line 133
    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_29

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 137
    :cond_29
    :goto_29
    return-void
.end method

.method public applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .registers 6
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_48

    .line 141
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_36

    .line 143
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 144
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1e

    .line 145
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    goto :goto_22

    .line 147
    :cond_1e
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 149
    :goto_22
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_31

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/policy/BarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 151
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    goto :goto_35

    .line 153
    :cond_31
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 155
    .end local v0    # "fl":I
    :goto_35
    goto :goto_48

    .line 156
    :cond_36
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    .line 157
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v0, v0

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    .line 160
    :cond_48
    :goto_48
    return p2
.end method

.method public checkHiddenLw()Z
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 241
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_21

    .line 242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 244
    :cond_21
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 246
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 247
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3b

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 249
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 251
    :cond_3b
    return v2

    .line 254
    :cond_3c
    return v1
.end method

.method public checkShowTransientBarLw()Z
    .registers 4

    .line 258
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 260
    return v1

    .line 261
    :cond_7
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 263
    return v1

    .line 264
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_12

    .line 266
    return v1

    .line 267
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 269
    return v1

    .line 271
    :cond_1b
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4f

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 344
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTransientBar"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 346
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 349
    :cond_4f
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 319
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 321
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 322
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isTransientShowRequested()Z
    .registers 3

    .line 120
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isTransientShowing()Z
    .registers 3

    .line 116
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 164
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public setBarShowingLw(Z)Z
    .registers 10
    .param p1, "show"    # Z

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 169
    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 170
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 171
    return v1

    .line 173
    :cond_11
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 174
    .local v2, "wasVis":Z
    iget-object v3, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 175
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_33

    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_2d

    move v5, v0

    goto :goto_2e

    :cond_2d
    move v5, v1

    :goto_2e
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    goto :goto_46

    .line 176
    :cond_33
    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_41

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-nez v5, :cond_41

    move v5, v0

    goto :goto_42

    :cond_41
    move v5, v1

    :goto_42
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    .line 177
    .local v4, "change":Z
    :goto_46
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 178
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Z)I

    move-result v5

    .line 179
    .local v5, "state":I
    invoke-direct {p0, v5}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v6

    .line 181
    .local v6, "stateChanged":Z
    if-eqz v4, :cond_61

    iget-object v7, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    if-eqz v7, :cond_61

    .line 182
    iget-object v7, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 185
    :cond_61
    if-nez v4, :cond_68

    if-eqz v6, :cond_66

    goto :goto_68

    :cond_66
    move v0, v1

    nop

    :cond_68
    :goto_68
    return v0
.end method

.method public setContentFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;
    .param p2, "invokeWithState"    # Z

    .line 190
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mVisibilityChangeListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 191
    if-eqz p2, :cond_16

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 194
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 193
    :goto_f
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    :cond_16
    return-void
.end method

.method public setShowTransparent(Z)V
    .registers 3
    .param p1, "transparent"    # Z

    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_b

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 104
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 107
    :cond_b
    return-void
.end method

.method public setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 89
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 90
    return-void
.end method

.method public showTransient()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 113
    :cond_8
    return-void
.end method

.method protected skipAnimation()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .registers 6
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_5

    return p3

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 278
    :cond_12
    if-eqz p1, :cond_24

    .line 279
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 280
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1f

    .line 281
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 283
    :cond_1f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_27

    .line 285
    :cond_24
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 288
    :cond_27
    :goto_27
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_37

    .line 289
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 290
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_37

    .line 291
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 292
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 295
    :cond_37
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v0, :cond_40

    .line 296
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 297
    and-int/lit8 p3, p3, -0x2

    .line 299
    :cond_40
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p3

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_51

    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_57

    .line 301
    :cond_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 303
    :cond_57
    return p3
.end method

.method public wasRecentlyTranslucent()Z
    .registers 5

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 334
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 335
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 336
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 338
    return-void
.end method
