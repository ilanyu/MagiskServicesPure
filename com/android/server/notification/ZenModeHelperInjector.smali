.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMiuiRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;)V
    .registers 12
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 73
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    const-string v0, "com.android.cellbroadcastreceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "defaultException":[Ljava/lang/String;
    const-string v1, "com.android.systemui"

    const-string v2, "android"

    const-string v3, "com.android.cellbroadcastreceiver"

    const-string v4, "com.android.server.telecom"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "exceptionPackages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    .line 82
    .local v2, "mode":I
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 83
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v4, 0x1

    .line 84
    .local v4, "allowRingtone":Z
    const/4 v5, 0x1

    .line 85
    .local v5, "allowNotification":Z
    const/4 v6, 0x0

    .line 86
    .local v6, "hasException":Z
    const/4 v7, 0x1

    if-eq v2, v7, :cond_28

    .line 95
    const/4 v5, 0x1

    .line 96
    const/4 v4, 0x1

    goto :goto_37

    .line 88
    :cond_28
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_35

    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v8, :cond_33

    goto :goto_35

    :cond_33
    const/4 v7, 0x0

    nop

    :cond_35
    :goto_35
    move v6, v7

    .line 91
    nop

    .line 99
    :goto_37
    const/4 v7, 0x6

    .line 103
    if-eqz v6, :cond_3c

    .line 99
    move-object v8, v1

    goto :goto_3d

    :cond_3c
    move-object v8, v0

    :goto_3d
    invoke-static {v4, v7, p1, v8}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 104
    const/4 v7, 0x5

    .line 108
    if-eqz v6, :cond_45

    .line 104
    move-object v8, v1

    goto :goto_46

    :cond_45
    move-object v8, v0

    :goto_46
    invoke-static {v5, v7, p1, v8}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .registers 6
    .param p0, "allow"    # Z
    .param p1, "usage"    # I
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "exception"    # [Ljava/lang/String;

    .line 112
    nop

    .line 113
    nop

    .line 112
    xor-int/lit8 v0, p0, 0x1

    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x3

    .line 116
    nop

    .line 115
    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .registers 7
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .line 23
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 24
    .local v0, "zenMode":I
    const/4 v1, -0x1

    .line 25
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_20

    goto :goto_1f

    .line 33
    :pswitch_9
    if-eqz v0, :cond_1f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    .line 34
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_16

    .line 35
    :cond_15
    const/4 v2, 0x0

    :goto_16
    move v1, v2

    goto :goto_1f

    .line 27
    :pswitch_18
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    .line 28
    const/4 v1, 0x3

    .line 39
    :cond_1f
    :goto_1f
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_18
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;III)I
    .registers 8
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerModeOld"    # I
    .param p3, "ringerModeNew"    # I
    .param p4, "newZen"    # I

    .line 44
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_9

    .line 45
    invoke-static {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 48
    :cond_9
    if-eq p3, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 49
    .local v0, "isChange":Z
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 51
    .local v1, "zenMode":I
    const/4 v2, 0x4

    packed-switch p3, :pswitch_data_28

    goto :goto_26

    .line 63
    :pswitch_17
    if-eqz v0, :cond_26

    if-ne v1, v2, :cond_26

    .line 64
    const/4 p4, 0x0

    goto :goto_26

    .line 54
    :pswitch_1d
    if-eqz v0, :cond_26

    .line 55
    if-nez v1, :cond_23

    .line 56
    const/4 p4, 0x4

    goto :goto_26

    .line 57
    :cond_23
    if-ne v2, v1, :cond_26

    .line 58
    const/4 p4, -0x1

    .line 69
    :cond_26
    :goto_26
    return p4

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method static getOutRingerMode(IIII)I
    .registers 5
    .param p0, "newZen"    # I
    .param p1, "curZen"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "out"    # I

    .line 121
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return p3

    .line 122
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    move p0, v0

    .line 123
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v0, p3

    goto :goto_12

    :cond_11
    move v0, p2

    :goto_12
    return v0
.end method

.method static miuiComputeZenMode(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)I
    .registers 7
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 136
    monitor-enter p1

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_9

    :try_start_4
    monitor-exit p1

    return v0

    .line 158
    :catchall_6
    move-exception v0

    goto/16 :goto_8d

    .line 138
    :cond_9
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_4f

    const-string v1, "conditionChanged"

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "setNotificationPolicy"

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "updateAutomaticZenRule"

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "onSystemReady"

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string/jumbo v1, "readXml"

    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "init"

    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "cleanUpZenRules"

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 146
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit p1

    return v0

    .line 148
    :cond_4f
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v1, :cond_54

    goto :goto_58

    :cond_54
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 149
    .local v0, "zen":I
    :goto_58
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 150
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 151
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v4

    if-gt v3, v4, :cond_87

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8a

    if-nez v0, :cond_8a

    .line 153
    :cond_87
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v0, v3

    .line 156
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_8a
    goto :goto_62

    .line 157
    :cond_8b
    monitor-exit p1

    return v0

    .line 158
    .end local v0    # "zen":I
    :goto_8d
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_4 .. :try_end_8e} :catchall_6

    throw v0
.end method

.method private static zenSeverity(I)I
    .registers 2
    .param p0, "zen"    # I

    .line 127
    packed-switch p0, :pswitch_data_c

    .line 131
    const/4 v0, 0x0

    return v0

    .line 128
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 130
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 129
    :pswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
