.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_UPGRADING:I = 0x2

.field private static final FLAG_TARGET_IS_UPGRADING:I = 0x1


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .registers 6
    .param p1, "packageManager"    # Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "defaultOverlays"    # [Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 105
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 106
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 107
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 109
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I
    .registers 7
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 668
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 669
    const/4 v0, 0x4

    return v0

    .line 672
    :cond_6
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_c

    .line 673
    const/4 v0, 0x5

    return v0

    .line 681
    :cond_c
    if-nez p1, :cond_10

    .line 682
    const/4 v0, 0x0

    return v0

    .line 685
    :cond_10
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 686
    const/4 v0, 0x1

    return v0

    .line 689
    :cond_1a
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 690
    const/4 v0, 0x6

    return v0

    .line 693
    :cond_22
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 694
    .local v0, "enabled":Z
    if-eqz v0, :cond_2e

    const/4 v1, 0x3

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x2

    :goto_2f
    return v1
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 534
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 535
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    .line 538
    :cond_f
    const/4 v1, 0x1

    return v1

    .line 536
    :cond_11
    :goto_11
    const/4 v1, 0x0

    return v1
.end method

.method private static mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 5
    .param p0, "theTruth"    # Landroid/content/pm/PackageInfo;
    .param p1, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 80
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 81
    return v0

    .line 83
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 84
    return v0

    .line 86
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    iget-boolean v2, p1, Landroid/content/om/OverlayInfo;->isStatic:Z

    if-eq v1, v2, :cond_18

    .line 87
    return v0

    .line 92
    :cond_18
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget v2, p1, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v1, v2, :cond_25

    .line 94
    return v0

    .line 96
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 716
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 717
    return-void

    .line 719
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 720
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 722
    .local v3, "userId":I
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 723
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_23
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_23} :catch_27

    if-eqz v5, :cond_26

    .line 725
    return-void

    .line 729
    .end local v4    # "tmp":Landroid/content/om/OverlayInfo;
    :cond_26
    goto :goto_28

    .line 727
    :catch_27
    move-exception v4

    .line 720
    .end local v3    # "userId":I
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 731
    :cond_2b
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 732
    return-void
.end method

.method private updateAllOverlaysForTarget(Ljava/lang/String;II)Z
    .registers 14
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "ois":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 298
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "modified":Z
    :goto_e
    if-ge v0, v2, :cond_4b

    .line 299
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 300
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v7, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 302
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_2f

    .line 303
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v9, v5, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v4, v7

    .line 304
    invoke-direct {p0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_48

    .line 307
    :cond_2f
    :try_start_2f
    iget-object v7, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v7
    :try_end_35
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2f .. :try_end_35} :catch_37

    or-int/2addr v4, v7

    .line 311
    goto :goto_48

    .line 308
    :catch_37
    move-exception v7

    .line 309
    .local v7, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v8, "OverlayManager"

    const-string v9, "failed to update settings"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v9, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v8

    or-int/2addr v4, v8

    .line 298
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    .end local v6    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v7    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 316
    .end local v0    # "i":I
    :cond_4b
    if-nez v4, :cond_5b

    const-string v0, "android"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_5b

    :cond_5a
    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v3, 0x1

    :goto_5c
    move v0, v3

    .line 318
    .end local v4    # "modified":Z
    .local v0, "modified":Z
    return v0
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "overlayPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 631
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 635
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    const-string v2, "android"

    .line 636
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 637
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v2

    if-nez v2, :cond_23

    .line 638
    :cond_1e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    .line 641
    :cond_23
    const/4 v2, 0x0

    .line 642
    .local v2, "modified":Z
    if-eqz v1, :cond_3c

    .line 643
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 644
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 643
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 645
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 649
    :cond_3c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v3

    .line 650
    .local v3, "currentState":I
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result v4

    .line 652
    .local v4, "newState":I
    if-eq v3, v4, :cond_4f

    .line 659
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v5

    or-int/2addr v2, v5

    .line 661
    :cond_4f
    return v2
.end method


# virtual methods
.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 614
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2a

    .line 615
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 616
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 617
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 620
    .end local v3    # "i":I
    :cond_2a
    return-object v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onDump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 604
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 326
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 327
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_28

    .line 328
    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was added, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 330
    return-void

    .line 333
    :cond_28
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 334
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v8

    iget v9, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 333
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 338
    :try_start_3f
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 339
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_4f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3f .. :try_end_4f} :catch_50

    .line 344
    :cond_4f
    goto :goto_5d

    .line 341
    :catch_50
    move-exception v1

    .line 342
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "OverlayManager"

    const-string v3, "failed to update settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 345
    .end local v1    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_5d
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 354
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 355
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_16
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_16} :catch_17

    .line 359
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_16
    goto :goto_1f

    .line 357
    :catch_17
    move-exception v0

    .line 358
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_1f
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 414
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 415
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 416
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 418
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_1e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 423
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    :cond_1e
    goto :goto_27

    .line 421
    :catch_1f
    move-exception v0

    .line 422
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to remove overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_27
    return-void
.end method

.method onOverlayPackageUpgraded(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 385
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 386
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_28

    .line 387
    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was upgraded, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 389
    return-void

    .line 393
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 394
    .local v1, "oldOi":Landroid/content/om/OverlayInfo;
    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 395
    if-eqz v1, :cond_47

    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 396
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 398
    :cond_47
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 399
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v7

    iget v8, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 398
    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 403
    :cond_5e
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 404
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_6e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_28 .. :try_end_6e} :catch_6f

    .line 408
    .end local v1    # "oldOi":Landroid/content/om/OverlayInfo;
    :cond_6e
    goto :goto_77

    .line 406
    :catch_6f
    move-exception v1

    .line 407
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "OverlayManager"

    const-string v3, "failed to update settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v1    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_77
    return-void
.end method

.method onOverlayPackageUpgrading(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 370
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 371
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 376
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_19
    goto :goto_22

    .line 374
    :catch_1a
    move-exception v0

    .line 375
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_22
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 249
    :cond_c
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    .line 257
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 282
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 284
    :cond_c
    return-void
.end method

.method onTargetPackageUpgraded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    .line 274
    return-void
.end method

.method onTargetPackageUpgrading(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    .line 266
    return-void
.end method

.method onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 239
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 451
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 452
    return v1

    .line 456
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 457
    return v1

    .line 461
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 462
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v3

    .line 463
    .local v3, "modified":Z
    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 465
    if-eqz v3, :cond_2f

    .line 466
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_2f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_11 .. :try_end_2f} :catch_31

    .line 468
    :cond_2f
    const/4 v1, 0x1

    return v1

    .line 469
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v3    # "modified":Z
    :catch_31
    move-exception v2

    .line 470
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v1
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I

    .line 481
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 482
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 483
    return v1

    .line 487
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 488
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 490
    .local v3, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p0, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 492
    .local v4, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v5, 0x0

    .line 495
    .local v5, "modified":Z
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 496
    move v6, v5

    move v5, v1

    .local v5, "i":I
    .local v6, "modified":Z
    :goto_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_5d

    .line 497
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    iget-object v7, v7, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 498
    .local v7, "disabledOverlayPackageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v8, v7, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 500
    .local v8, "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_3a

    .line 501
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v7, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v6, v9

    .line 502
    goto :goto_5a

    .line 505
    :cond_3a
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 507
    goto :goto_5a

    .line 509
    :cond_41
    if-eqz p2, :cond_4e

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 512
    goto :goto_5a

    .line 516
    :cond_4e
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v7, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v6, v9

    .line 517
    invoke-direct {p0, v3, v7, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v9

    or-int/2addr v6, v9

    .line 496
    .end local v7    # "disabledOverlayPackageName":Ljava/lang/String;
    .end local v8    # "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 521
    .end local v5    # "i":I
    :cond_5d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p3, v7}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v5

    or-int/2addr v5, v6

    .line 522
    .end local v6    # "modified":Z
    .local v5, "modified":Z
    invoke-direct {p0, v3, p1, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 524
    if-eqz v5, :cond_71

    .line 525
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v6, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_71
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_a .. :try_end_71} :catch_72

    .line 527
    :cond_71
    return v7

    .line 528
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v3    # "targetPackageName":Ljava/lang/String;
    .end local v4    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v5    # "modified":Z
    :catch_72
    move-exception v2

    .line 529
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 569
    return v1

    .line 572
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 573
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 574
    return v1

    .line 577
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 578
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 580
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 589
    return v1

    .line 592
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 593
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 594
    return v1

    .line 597
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 598
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 600
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 548
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 549
    return v1

    .line 552
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 553
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 554
    return v1

    .line 557
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 558
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 560
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .registers 28
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 122
    move/from16 v10, p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v0

    .line 123
    .local v11, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v10}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 124
    .local v12, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 125
    .local v13, "tmpSize":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v13}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v14, v0

    .line 126
    .local v14, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v13, :cond_3b

    .line 127
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 128
    .local v2, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 129
    .local v3, "chunkSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    if-ge v4, v3, :cond_38

    .line 130
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 131
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 126
    .end local v2    # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v3    # "chunkSize":I
    .end local v4    # "j":I
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 137
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, v10}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v9

    .line 138
    .local v9, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 139
    .local v8, "overlayPackagesSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_46
    if-ge v0, v8, :cond_a9

    .line 140
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 141
    .local v7, "overlayPackage":Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 143
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    invoke-static {v7, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 146
    if-eqz v6, :cond_65

    .line 147
    iget-object v2, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_65
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v16

    .line 153
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v17

    iget v4, v7, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 150
    move/from16 v18, v4

    move v4, v10

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    .local v19, "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v20, v12

    move-object v12, v7

    move/from16 v7, v17

    .end local v7    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v12, "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v20, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    move/from16 v21, v13

    move v13, v8

    move/from16 v8, v18

    .end local v8    # "overlayPackagesSize":I
    .local v13, "overlayPackagesSize":I
    .local v21, "tmpSize":I
    move-object v10, v9

    move-object v9, v15

    .end local v9    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v10, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_99

    .line 158
    .end local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "oi":Landroid/content/om/OverlayInfo;
    .end local v20    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v21    # "tmpSize":I
    .restart local v6    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v7    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "overlayPackagesSize":I
    .restart local v9    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v13, "tmpSize":I
    :cond_90
    move-object/from16 v19, v6

    move-object v10, v9

    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v7

    move v13, v8

    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "overlayPackagesSize":I
    .end local v9    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v13, "overlayPackagesSize":I
    .restart local v19    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v20    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v21    # "tmpSize":I
    :goto_99
    iget-object v2, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v12    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v19    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    move-object v9, v10

    move v8, v13

    move-object/from16 v12, v20

    move/from16 v13, v21

    move/from16 v10, p1

    goto :goto_46

    .line 163
    .end local v0    # "i":I
    .end local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v20    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v21    # "tmpSize":I
    .restart local v8    # "overlayPackagesSize":I
    .restart local v9    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v13, "tmpSize":I
    :cond_a9
    move-object v10, v9

    move-object/from16 v20, v12

    move/from16 v21, v13

    move v13, v8

    .end local v8    # "overlayPackagesSize":I
    .end local v9    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v13, "overlayPackagesSize":I
    .restart local v20    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v21    # "tmpSize":I
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 164
    .local v2, "storedOverlayInfosSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b4
    if-ge v0, v2, :cond_d0

    .line 165
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 166
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 167
    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 168
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 175
    .end local v0    # "i":I
    :cond_d0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d1
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    if-ge v3, v13, :cond_104

    .line 176
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v4, v0

    .line 178
    .local v4, "overlayPackage":Landroid/content/pm/PackageInfo;
    :try_start_db
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_df
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_db .. :try_end_df} :catch_e9

    move-object v7, v10

    move/from16 v6, p1

    const/4 v8, 0x0

    :try_start_e3
    invoke-direct {v1, v0, v5, v6, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_e6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 183
    .end local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v7, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_fb

    .line 180
    :catch_e7
    move-exception v0

    goto :goto_ed

    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_e9
    move-exception v0

    move-object v7, v10

    move/from16 v6, p1

    .line 181
    .end local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_ed
    const-string v5, "OverlayManager"

    const-string v8, "failed to update settings"

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 184
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_fb
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .local v0, "i":I
    move-object v10, v7

    goto :goto_d1

    .line 188
    .end local v0    # "i":I
    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_104
    move-object v7, v10

    move/from16 v6, p1

    .end local v10    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_10b
    move-object v3, v0

    .line 189
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v4, v0, v6}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_123

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 194
    .end local v0    # "targetPackageName":Ljava/lang/String;
    :cond_123
    nop

    .line 188
    move-object v0, v3

    goto :goto_10b

    .line 197
    :cond_126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 198
    .local v4, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 199
    invoke-virtual {v0, v6}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 200
    .local v5, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 201
    .local v8, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_137
    if-ge v0, v8, :cond_16b

    .line 202
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 203
    .local v9, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v9, :cond_146

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_147

    :cond_146
    const/4 v15, 0x0

    :goto_147
    move v10, v15

    .line 204
    .local v10, "overlayCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_149
    if-ge v12, v10, :cond_166

    .line 205
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/om/OverlayInfo;

    .line 206
    .local v15, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v15}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_15f

    .line 207
    move/from16 v22, v2

    iget-object v2, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .end local v2    # "storedOverlayInfosSize":I
    .local v22, "storedOverlayInfosSize":I
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .end local v15    # "oi":Landroid/content/om/OverlayInfo;
    goto :goto_161

    .line 204
    .end local v22    # "storedOverlayInfosSize":I
    .restart local v2    # "storedOverlayInfosSize":I
    :cond_15f
    move/from16 v22, v2

    .end local v2    # "storedOverlayInfosSize":I
    .restart local v22    # "storedOverlayInfosSize":I
    :goto_161
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v22

    goto :goto_149

    .line 201
    .end local v9    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "overlayCount":I
    .end local v12    # "j":I
    .end local v22    # "storedOverlayInfosSize":I
    .restart local v2    # "storedOverlayInfosSize":I
    :cond_166
    move/from16 v22, v2

    .end local v2    # "storedOverlayInfosSize":I
    .restart local v22    # "storedOverlayInfosSize":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_137

    .line 213
    .end local v0    # "i":I
    .end local v22    # "storedOverlayInfosSize":I
    .restart local v2    # "storedOverlayInfosSize":I
    :cond_16b
    move/from16 v22, v2

    .end local v2    # "storedOverlayInfosSize":I
    .restart local v22    # "storedOverlayInfosSize":I
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v9, v2

    const/4 v10, 0x0

    :goto_171
    if-ge v10, v9, :cond_20c

    aget-object v0, v2, v10

    move-object v12, v0

    .line 215
    .local v12, "defaultOverlay":Ljava/lang/String;
    :try_start_176
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v12, v6}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 216
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v15, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1da

    .line 217
    const-string v15, "OverlayManager"
    :try_end_186
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_176 .. :try_end_186} :catch_1e0

    move-object/from16 v23, v2

    :try_start_188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_188 .. :try_end_18d} :catch_1d8

    move-object/from16 v24, v3

    :try_start_18f
    const-string v3, "Enabling default overlay \'"

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v24, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' in category \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v2, v3, v6, v15}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 221
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_1c6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_18f .. :try_end_1c6} :catch_1d5

    const/4 v15, 0x0

    :try_start_1c7
    invoke-direct {v1, v2, v3, v6, v15}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 222
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1c7 .. :try_end_1d2} :catch_1d3

    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    goto :goto_1df

    .line 225
    :catch_1d3
    move-exception v0

    goto :goto_1e6

    :catch_1d5
    move-exception v0

    const/4 v15, 0x0

    goto :goto_1e6

    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1d8
    move-exception v0

    goto :goto_1e3

    .line 228
    :cond_1da
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/4 v15, 0x0

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1df
    :goto_1df
    goto :goto_204

    .line 225
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1e0
    move-exception v0

    move-object/from16 v23, v2

    :goto_1e3
    move-object/from16 v24, v3

    const/4 v15, 0x0

    .line 226
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1e6
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set default overlay \'"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' for user "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v12    # "defaultOverlay":Ljava/lang/String;
    :goto_204
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_171

    .line 231
    .end local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_20c
    move-object/from16 v24, v3

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v24    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
