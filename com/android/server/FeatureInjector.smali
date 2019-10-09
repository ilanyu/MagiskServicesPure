.class public Lcom/android/server/FeatureInjector;
.super Ljava/lang/Object;
.source "FeatureInjector.java"


# static fields
.field public static final BRIGHTNESS_FEATURES:Ljava/lang/String; = "updateBrightness"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForegroundAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    const-string v0, ""

    .line 23
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 25
    .local v1, "activityManager":Landroid/app/ActivityManager;
    :try_start_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_35

    .line 26
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 27
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 28
    return-object v0

    .line 30
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 31
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_34

    .line 32
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_33} :catch_36

    return-object v3

    .line 34
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_34
    goto :goto_1f

    .line 38
    .end local v2    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_35
    goto :goto_3a

    .line 36
    :catch_36
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a
    return-object v0
.end method

.method public static onBrightnessFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "details"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 17
    new-instance v6, Lmiui/mqsas/sdk/event/FeatureEvent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/mqsas/sdk/event/FeatureEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, "brightnessFeature":Lmiui/mqsas/sdk/event/FeatureEvent;
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportFeatureEvent(Lmiui/mqsas/sdk/event/FeatureEvent;)V

    .line 19
    return-void
.end method
