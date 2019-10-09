.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceH:I

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:I

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V
    .registers 16
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p8, "windowType"    # I
    .param p9, "ownerUid"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 61
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 62
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 63
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 66
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 67
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 68
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 69
    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 71
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 73
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    .line 78
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 89
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 93
    iput-object p7, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 95
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 96
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 100
    iget-object v0, p7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    iget-object v0, p7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 102
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iput p8, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 103
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 105
    const-string/jumbo v1, "new SurfaceControl"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p3, p4}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p6}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p8, p9}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 113
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 115
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wm/WindowManagerService;->setSurfaceProjectionFlags(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 116
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 154
    return-void

    .line 156
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 158
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_e} :catch_f

    .line 161
    goto :goto_26

    .line 159
    :catch_f
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_26
    return-void
.end method

.method private logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/RuntimeException;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "str":Ljava/lang/String;
    if-eqz p2, :cond_23

    .line 122
    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 124
    :cond_23
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_28
    return-void
.end method

.method private showSurface()Z
    .registers 6

    .line 504
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_a

    .line 506
    return v0

    .line 507
    :catch_a
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure showing surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1    # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method private updateVisibility()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_9

    goto :goto_14

    .line 494
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_12

    .line 495
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    .line 497
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_22

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 492
    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .registers 6
    .param p1, "recoveringMemory"    # Z

    .line 220
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 221
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d

    .line 227
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    goto :goto_2e

    .line 222
    :catch_d
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting clearing crop of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    if-nez p1, :cond_2e

    .line 225
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "crop"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 228
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method clearWindowContentFrameStats()Z
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 530
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 519
    return-void
.end method

.method destroyNotInTransaction()V
    .registers 7

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_13
    .catchall {:try_start_2 .. :try_end_b} :catchall_11

    .line 175
    :cond_b
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 176
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 177
    goto :goto_2b

    .line 175
    :catchall_11
    move-exception v2

    goto :goto_2c

    .line 172
    :catch_13
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_14
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_11

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_b

    .line 178
    :goto_2b
    return-void

    .line 175
    :goto_2c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 176
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    throw v2
.end method

.method detachChildren()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->detachChildren()V

    .line 140
    :cond_9
    return-void
.end method

.method disconnectInTransaction()V
    .registers 5

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->disconnect()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 191
    :cond_9
    goto :goto_21

    .line 189
    :catch_a
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_21
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 600
    if-eqz p3, :cond_10

    .line 601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 603
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 604
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 606
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 607
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 608
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 609
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    const-string v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 612
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .registers 4
    .param p1, "force"    # Z

    .line 524
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 525
    .local v0, "scalingMode":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    .line 526
    return-void
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    .line 475
    return-void
.end method

.method getHandle()Landroid/os/IBinder;
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 549
    const/4 v0, 0x0

    return-object v0

    .line 551
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 589
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    return v0
.end method

.method getLayer()I
    .registers 2

    .line 559
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .registers 2

    .line 563
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "outSurface"    # Landroid/view/Surface;

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 556
    return-void
.end method

.method getWidth()I
    .registers 2

    .line 585
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 3
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 537
    const/4 v0, 0x0

    return v0

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method getX()F
    .registers 2

    .line 577
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .registers 2

    .line 581
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_f

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 150
    :cond_f
    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .registers 13
    .param p1, "alpha"    # F
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dsdy"    # F
    .param p5, "dtdy"    # F
    .param p6, "recoveringMemory"    # Z

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 398
    return v1

    .line 402
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    .line 404
    :try_start_d
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 406
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 407
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 408
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 409
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_21} :catch_22

    .line 418
    goto :goto_46

    .line 412
    :catch_22
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error updating surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    if-nez p6, :cond_45

    .line 415
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v4, "update"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 417
    :cond_45
    return v1

    .line 420
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_46
    :goto_46
    return v2
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/wm/WindowSurfaceController;

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->reparentChildren(Landroid/os/IBinder;)V

    .line 133
    :cond_11
    return-void
.end method

.method public setBlur(Z)V
    .registers 6
    .param p1, "isBlur"    # Z

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setBlur(Z)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 631
    :cond_9
    goto :goto_21

    .line 629
    :catch_a
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setBlur surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_21
    return-void
.end method

.method setBlurBlackInTransaction(F)V
    .registers 6
    .param p1, "blurBlack"    # F

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setBlurBlack(F)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 262
    goto :goto_1d

    .line 260
    :catch_6
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setBlurBlack surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1d
    return-void
.end method

.method setBlurModeInTransaction(I)V
    .registers 6
    .param p1, "blurMode"    # I

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setBlurMode(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 254
    goto :goto_1d

    .line 252
    :catch_6
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setBlurMode surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1d
    return-void
.end method

.method setBlurRatio(F)V
    .registers 3
    .param p1, "blurRatio"    # F

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    .line 267
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 269
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setBlurRatio(F)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 271
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 272
    goto :goto_15

    .line 271
    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 274
    :cond_15
    :goto_15
    return-void
.end method

.method setBlurRatioInTransaction(F)V
    .registers 6
    .param p1, "blurRatio"    # F

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setBlurRatio(F)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    goto :goto_1d

    .line 244
    :catch_6
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setBlurRatio surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1d
    return-void
.end method

.method public setCastMode(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    .line 655
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 656
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setCastMode(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 657
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_12

    .line 661
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_11
    goto :goto_29

    .line 659
    :catch_12
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setCastMode in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_29
    return-void
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    .line 198
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_19

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 201
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    goto :goto_23

    .line 203
    :cond_19
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_23} :catch_24

    .line 213
    :goto_23
    goto :goto_50

    .line 207
    :catch_24
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting crop surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " crop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    if-nez p2, :cond_50

    .line 211
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "crop"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 214
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_50
    :goto_50
    return-void
.end method

.method setFinalCropInTransaction(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 237
    goto :goto_1d

    .line 235
    :catch_6
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1d
    return-void
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .registers 3
    .param p1, "recoveringMemory"    # Z

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    .line 321
    return-void
.end method

.method setLayerStackInTransaction(I)V
    .registers 3
    .param p1, "layerStack"    # I

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 281
    :cond_9
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V
    .registers 16
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F
    .param p6, "recoveringMemory"    # Z

    .line 330
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v0, v0, p5

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v0, v1

    .line 332
    .local v0, "matrixChanged":Z
    :goto_1d
    if-nez v0, :cond_20

    .line 333
    return-void

    .line 337
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v2, :cond_27

    .line 338
    return-void

    .line 342
    :cond_27
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 343
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 344
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 345
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 350
    if-nez p1, :cond_39

    .line 351
    :try_start_31
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_43

    .line 355
    :catch_37
    move-exception v2

    goto :goto_44

    .line 353
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_43} :catch_37

    .line 364
    :goto_43
    goto :goto_8d

    .line 355
    :goto_44
    nop

    .line 359
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting matrix on surface surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " MATRIX ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    if-nez p6, :cond_8d

    .line 362
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v4, "matrix"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 365
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_8d
    :goto_8d
    return-void
.end method

.method setMatrixInTransaction(FFFFZ)V
    .registers 13
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dtdy"    # F
    .param p4, "dsdy"    # F
    .param p5, "recoveringMemory"    # Z

    .line 325
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    .line 326
    return-void
.end method

.method setOpaque(Z)V
    .registers 5
    .param p1, "isOpaque"    # Z

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 444
    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 449
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_19

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setOpaqueLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 453
    nop

    .line 454
    return-void

    .line 451
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setOpaqueLocked"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "recoveringMemory"    # Z

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v0, :cond_7

    .line 291
    return-void

    .line 295
    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 296
    .local v0, "surfaceMoved":Z
    :goto_18
    if-eqz v0, :cond_64

    .line 297
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 298
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 304
    if-nez p1, :cond_28

    .line 305
    :try_start_20
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2, p3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2d

    .line 309
    :catch_26
    move-exception v2

    goto :goto_2e

    .line 307
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2d} :catch_26

    .line 315
    :goto_2d
    goto :goto_64

    .line 309
    :goto_2e
    nop

    .line 310
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error positioning surface of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pos=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    if-nez p4, :cond_64

    .line 313
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v4, "position"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 317
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_64
    :goto_64
    return-void
.end method

.method setPositionInTransaction(FFZ)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "recoveringMemory"    # Z

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    .line 285
    return-void
.end method

.method public setRecordHide(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setRecordHide(Z)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 645
    :cond_9
    goto :goto_21

    .line 643
    :catch_a
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setRecordHide in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_21
    return-void
.end method

.method setSecure(Z)V
    .registers 5
    .param p1, "isSecure"    # Z

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 461
    return-void

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 466
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_19

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setSecure"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setSecure"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method setShown(Z)V
    .registers 5
    .param p1, "surfaceShown"    # Z

    .line 567
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_18

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    .line 574
    :cond_18
    return-void
.end method

.method setSizeInTransaction(IIZ)Z
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "recoveringMemory"    # Z

    .line 368
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    if-eq v0, p2, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    .line 369
    .local v0, "surfaceResized":Z
    :goto_e
    if-eqz v0, :cond_55

    .line 370
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 371
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 376
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 387
    nop

    .line 388
    return v1

    .line 377
    :catch_1b
    move-exception v3

    .line 381
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resizing surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    if-nez p3, :cond_54

    .line 384
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v5, "size"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 386
    :cond_54
    return v2

    .line 390
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_55
    return v2
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "region"    # Landroid/graphics/Region;

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    .line 425
    const-string v0, "WindowManager"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 429
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 431
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_21

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setTransparentRegion"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 436
    nop

    .line 437
    return-void

    .line 433
    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setTransparentRegion"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method showRobustlyInTransaction()Z
    .registers 2

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 483
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 593
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 594
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 595
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 596
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 597
    return-void
.end method
