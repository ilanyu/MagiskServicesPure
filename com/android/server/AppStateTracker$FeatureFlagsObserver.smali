.class Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/AppStateTracker;

    .line 200
    iput-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 202
    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 224
    const-string v0, "forced_app_standby_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 225
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v0

    .line 226
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 227
    :try_start_17
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-ne v2, v0, :cond_1f

    .line 228
    monitor-exit v1

    return-void

    .line 230
    :cond_1f
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 235
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2e

    .line 236
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    .line 237
    .end local v0    # "enabled":Z
    goto :goto_74

    .line 235
    .restart local v0    # "enabled":Z
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .line 237
    .end local v0    # "enabled":Z
    :cond_31
    const-string v0, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 239
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v0

    .line 240
    .restart local v0    # "enabled":Z
    iget-object v1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_48
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-ne v2, v0, :cond_50

    .line 242
    monitor-exit v1

    return-void

    .line 244
    :cond_50
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean v0, v2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 249
    iget-object v2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V
    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    .line 250
    monitor-exit v1

    .line 251
    .end local v0    # "enabled":Z
    goto :goto_74

    .line 250
    .restart local v0    # "enabled":Z
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_5b

    throw v2

    .line 252
    .end local v0    # "enabled":Z
    :cond_5e
    const-string v0, "AppStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feature flag uri encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_74
    return-void
.end method

.method register()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_enabled"

    .line 206
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method
