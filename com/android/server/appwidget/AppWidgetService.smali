.class public Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "AppWidgetService.java"


# instance fields
.field private final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 34
    return-void
.end method

.method public static synthetic lambda$onUnlockUser$0(Lcom/android/server/appwidget/AppWidgetService;I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 52
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserUnlocked(I)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 45
    const/16 v0, 0x226

    if-ne p1, v0, :cond_d

    .line 46
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setSafeMode(Z)V

    .line 48
    :cond_d
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onStart()V

    .line 39
    const-string v0, "appwidget"

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    .line 41
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 57
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStopped(I)V

    .line 58
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 63
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 52
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appwidget/-$$Lambda$AppWidgetService$HIwvoPMyKqEhLVIiysgUKH8QJg8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/-$$Lambda$AppWidgetService$HIwvoPMyKqEhLVIiysgUKH8QJg8;-><init>(Lcom/android/server/appwidget/AppWidgetService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
