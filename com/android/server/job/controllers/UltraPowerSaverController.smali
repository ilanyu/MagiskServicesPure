.class public Lcom/android/server/job/controllers/UltraPowerSaverController;
.super Lcom/android/server/job/controllers/StateController;
.source "UltraPowerSaverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;,
        Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.UltraPowerSaver"

.field private static final ULTRA_POWER_SAVING_URI:Landroid/net/Uri;


# instance fields
.field private mCallback:Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string/jumbo v0, "power_supersave_mode_open"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/controllers/UltraPowerSaverController;->ULTRA_POWER_SAVING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->get()Lcom/android/server/MiuiFgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;-><init>(Lcom/android/server/job/controllers/UltraPowerSaverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mSettingsObserver:Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;

    .line 56
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .line 20
    sget-object v0, Lcom/android/server/job/controllers/UltraPowerSaverController;->ULTRA_POWER_SAVING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/UltraPowerSaverController;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/UltraPowerSaverController;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/UltraPowerSaverController;->updateUltraPowerSavingState(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private updateUltraPowerSavingState(Landroid/content/ContentResolver;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 59
    const-string/jumbo v0, "power_supersave_mode_open"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    nop

    :cond_c
    move v0, v1

    .line 61
    .local v0, "ultraPowerSaving":Z
    const-string v1, "JobScheduler.UltraPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUltraPowerSavingState: ultraPowerSaving = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mCallback:Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;

    if-eqz v1, :cond_2d

    .line 63
    iget-object v1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mCallback:Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;->onUltraPowerSaverChanged(Z)V

    .line 65
    :cond_2d
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 78
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 83
    return-void
.end method

.method public registerObserver()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mSettingsObserver:Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;->start(Landroid/content/ContentResolver;)V

    .line 69
    return-void
.end method

.method public setCallback(Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;

    .line 72
    iput-object p1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController;->mCallback:Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;

    .line 73
    return-void
.end method
