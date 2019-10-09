.class Lcom/miui/server/SecurityManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAccessControlLockConvenientUri:Landroid/net/Uri;

.field private final mAccessControlLockEnabledUri:Landroid/net/Uri;

.field private final mAccessControlLockModedUri:Landroid/net/Uri;

.field private final mAccessMiuiOptimizationUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 379
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    .line 380
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 371
    const-string p1, "access_control_lock_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    .line 373
    const-string p1, "access_control_lock_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    .line 375
    const-string p1, "access_control_lock_convenient"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    .line 377
    const-string/jumbo p1, "miui_optimization"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    .line 381
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 382
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 383
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 384
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 385
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 386
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 392
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 399
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    invoke-static {v1, p3}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 401
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 402
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/miui/server/SecurityManagerService;->access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    goto :goto_40

    .line 403
    :cond_17
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 404
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/miui/server/SecurityManagerService;->access$1000(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    goto :goto_40

    .line 405
    :cond_25
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 406
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/miui/server/SecurityManagerService;->access$1100(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    goto :goto_40

    .line 407
    :cond_33
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 408
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/miui/server/SecurityManagerService;->access$1200(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 410
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_40
    :goto_40
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method
