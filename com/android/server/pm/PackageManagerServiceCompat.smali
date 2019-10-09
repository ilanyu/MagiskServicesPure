.class public Lcom/android/server/pm/PackageManagerServiceCompat;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 21
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathComponent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    return-object v0

    .line 31
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 32
    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 33
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_1b

    .line 34
    monitor-exit v1

    return-object v0

    .line 37
    :cond_1b
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-eqz v3, :cond_25

    .line 38
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    .line 41
    :cond_25
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    if-eqz v3, :cond_2f

    .line 42
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    .line 45
    :cond_2f
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    if-eqz v3, :cond_39

    .line 46
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    .line 49
    :cond_39
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    if-eqz v3, :cond_43

    .line 50
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    .line 52
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_43
    monitor-exit v1

    .line 53
    return-object v0

    .line 52
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_45

    throw v2
.end method

.method public static isEnabledAndMatchLPr(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;II)Z
    .registers 5
    .param p0, "mSettings"    # Lcom/android/server/pm/Settings;
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    return v0
.end method

.method private static parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V
    .registers 10
    .param p2, "componentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/security/WakePathComponent;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageParser$Component;",
            ">;I)V"
        }
    .end annotation

    .line 59
    .local p0, "wakePathComponents":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathComponent;>;"
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component;>;"
    if-eqz p0, :cond_9b

    if-nez p1, :cond_6

    goto/16 :goto_9b

    .line 64
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_9a

    .line 65
    packed-switch p2, :pswitch_data_9c

    .line 79
    const/4 v1, 0x0

    goto :goto_3f

    .line 73
    :pswitch_13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 74
    .local v1, "isExported":Z
    goto :goto_3f

    .line 67
    .end local v1    # "isExported":Z
    :pswitch_1e
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 68
    .restart local v1    # "isExported":Z
    goto :goto_3f

    .line 76
    .end local v1    # "isExported":Z
    :pswitch_29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 77
    .restart local v1    # "isExported":Z
    goto :goto_3f

    .line 70
    .end local v1    # "isExported":Z
    :pswitch_34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 71
    .restart local v1    # "isExported":Z
    nop

    .line 79
    :goto_3f
    nop

    .line 83
    if-nez v1, :cond_43

    .line 84
    goto :goto_96

    .line 87
    :cond_43
    new-instance v2, Lmiui/security/WakePathComponent;

    invoke-direct {v2}, Lmiui/security/WakePathComponent;-><init>()V

    .line 88
    .local v2, "wakePathComponent":Lmiui/security/WakePathComponent;
    invoke-virtual {v2, p2}, Lmiui/security/WakePathComponent;->setType(I)V

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Component;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/security/WakePathComponent;->setClassname(Ljava/lang/String;)V

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Component;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_93

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Component;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_6e
    if-ltz v3, :cond_93

    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Component;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    .line 93
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_84
    if-ltz v5, :cond_90

    .line 94
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lmiui/security/WakePathComponent;->addIntentAction(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v5, v5, -0x1

    goto :goto_84

    .line 91
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "k":I
    :cond_90
    add-int/lit8 v3, v3, -0x1

    goto :goto_6e

    .line 98
    .end local v3    # "j":I
    :cond_93
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v2    # "wakePathComponent":Lmiui/security/WakePathComponent;
    :goto_96
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_c

    .line 100
    .end local v0    # "i":I
    .end local v1    # "isExported":Z
    :cond_9a
    return-void

    .line 60
    :cond_9b
    :goto_9b
    return-void

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method
