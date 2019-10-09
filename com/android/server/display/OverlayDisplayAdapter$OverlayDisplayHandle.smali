.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# static fields
.field private static final DEFAULT_MODE_INDEX:I


# instance fields
.field private mActiveMode:I

.field private mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNumber:I

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSecure:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "gravity"    # I
    .param p5, "secure"    # Z
    .param p6, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IZI)V"
        }
    .end annotation

    .line 372
    .local p3, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 475
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 491
    new-instance p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;

    invoke-direct {p1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    .line 373
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 374
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 375
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 376
    iput-boolean p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    .line 377
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    .line 379
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 381
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->showLocked()V

    .line 382
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # I

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->onActiveModeChangedLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 358
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # Lcom/android/server/display/OverlayDisplayWindow;

    .line 358
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object p1
.end method

.method private onActiveModeChangedLocked(I)V
    .registers 4
    .param p1, "index"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 396
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v0, :cond_1c

    .line 397
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :cond_1c
    return-void
.end method

.method private showLocked()V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method


# virtual methods
.method public dismissLocked()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mActiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v0, :cond_af

    .line 452
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 453
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 454
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const-string v5, ""

    const-wide/16 v6, 0xc8

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 456
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_af
    return-void
.end method

.method public onStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 434
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 435
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v1, :cond_18

    .line 436
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setStateLocked(I)V

    .line 437
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 439
    :cond_18
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
    .registers 23
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "refreshRate"    # F
    .param p3, "presentationDeadlineNanos"    # J
    .param p5, "state"    # I

    move-object/from16 v15, p0

    .line 405
    iget-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v16

    monitor-enter v16

    .line 406
    :try_start_9
    iget-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-boolean v1, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v3

    .line 407
    .local v3, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    iget-object v4, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    iget v6, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    const/4 v7, 0x0

    iget-boolean v11, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    iget v14, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mNumber:I

    move-object v1, v0

    move-object v2, v15

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v12, p5

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V

    iput-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    .line 416
    iget-object v0, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, v15, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 417
    .end local v3    # "displayToken":Landroid/os/IBinder;
    monitor-exit v16

    .line 418
    return-void

    .line 417
    :catchall_37
    move-exception v0

    monitor-exit v16
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public onWindowDestroyed()V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v1, :cond_18

    .line 425
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 426
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 428
    :cond_18
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
