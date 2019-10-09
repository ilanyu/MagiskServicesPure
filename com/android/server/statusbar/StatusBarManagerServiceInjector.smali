.class public Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
.super Ljava/lang/Object;
.source "StatusBarManagerServiceInjector.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0xa

.field private static final SYSTEMUI_BOOST_TAG:Ljava/lang/String; = "systemui_boost"

.field private static sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;


# instance fields
.field private mOldRenderPriority:I

.field private mOldUIPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-object v0
.end method


# virtual methods
.method public boostSystemUI(Z)V
    .registers 8
    .param p1, "isVisible"    # Z

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 41
    .local v0, "pid":I
    const-string/jumbo v1, "systemui_boost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification panel visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getRenderThreadTidByPid(I)I

    move-result v1

    .line 45
    .local v1, "tid":I
    const-string/jumbo v2, "systemui_boost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ui thread tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v2, "systemui_boost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "render thread tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez v1, :cond_5c

    .line 49
    const-string/jumbo v2, "systemui_boost"

    const-string/jumbo v3, "render-thread tid = 0, do not boost"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 52
    :cond_5c
    if-eqz p1, :cond_f6

    .line 54
    :try_start_5e
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    .line 55
    const-string/jumbo v2, "systemui_boost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ui thread old priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_7e} :catch_d7

    .line 59
    nop

    .line 61
    :try_start_7f
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    .line 62
    const-string/jumbo v2, "systemui_boost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "render thread old priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_9f} :catch_b8

    .line 66
    nop

    .line 67
    const-string/jumbo v2, "systemui_boost"

    const/16 v3, -0xa

    invoke-static {v0, v3, v2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 68
    const-string/jumbo v2, "systemui_boost"

    invoke-static {v1, v3, v2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 69
    const-string/jumbo v2, "systemui_boost"

    const-string/jumbo v3, "ui thread and render thread are boosted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    .line 63
    :catch_b8
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "render thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 56
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_d7
    move-exception v2

    .line 57
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ui thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 71
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f6
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    const-string/jumbo v3, "systemui_boost"

    invoke-static {v0, v2, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 72
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    const-string/jumbo v3, "systemui_boost"

    invoke-static {v1, v2, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 73
    const-string/jumbo v2, "systemui_boost"

    const-string/jumbo v3, "ui thread and render thread are reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_10f
    return-void
.end method
