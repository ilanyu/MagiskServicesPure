.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field statistic:Lcom/android/server/pm/InstallationStatistic;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;I)V
    .registers 14
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p13, "installReason"    # I

    .line 15741
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15742
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15743
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15744
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15745
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15746
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15747
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15748
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15749
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15750
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15751
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15752
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15753
    iput p13, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15754
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 15
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 15763
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15764
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15765
    .local v1, "installLocation":I
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    move v2, v4

    goto :goto_f

    :cond_e
    move v2, v3

    .line 15767
    .local v2, "onSd":Z
    :goto_f
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 15770
    :try_start_14
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 15775
    .local v6, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v7, v6

    .line 15776
    .local v7, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_32

    .line 15777
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 15778
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_32

    .line 15779
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v7, v9

    .line 15783
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_32
    const/4 v8, 0x2

    if-eqz v7, :cond_76

    .line 15797
    iget v9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3d

    move v9, v4

    goto :goto_3e

    :cond_3d
    move v9, v3

    .line 15799
    .local v9, "downgradeRequested":Z
    :goto_3e
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_47

    move v10, v4

    goto :goto_48

    :cond_47
    move v10, v3

    .line 15802
    .local v10, "packageDebuggable":Z
    :goto_48
    if-eqz v9, :cond_52

    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_b1

    if-nez v11, :cond_50

    if-eqz v10, :cond_52

    :cond_50
    move v3, v4

    nop

    .line 15804
    .local v3, "downgradePermitted":Z
    :cond_52
    if-nez v3, :cond_76

    .line 15806
    :try_start_54
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerService;->access$3500(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_57
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_b1

    .line 15810
    goto :goto_76

    .line 15807
    :catch_58
    move-exception v4

    .line 15808
    .local v4, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_59
    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downgrade detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15809
    const/4 v8, -0x7

    monitor-exit v5

    return v8

    .line 15814
    .end local v3    # "downgradePermitted":Z
    .end local v4    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v9    # "downgradeRequested":Z
    .end local v10    # "packageDebuggable":Z
    :cond_76
    :goto_76
    if-eqz v6, :cond_aa

    .line 15815
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_a7

    .line 15817
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_92

    .line 15818
    if-eqz v2, :cond_90

    .line 15819
    const-string v3, "PackageManager"

    const-string v4, "Cannot install update to system app on sdcard"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15820
    const/4 v3, -0x3

    monitor-exit v5

    return v3

    .line 15822
    :cond_90
    monitor-exit v5

    return v4

    .line 15824
    :cond_92
    if-eqz v2, :cond_96

    .line 15826
    monitor-exit v5

    return v8

    .line 15829
    :cond_96
    if-ne v1, v4, :cond_9a

    .line 15831
    monitor-exit v5

    return v4

    .line 15832
    :cond_9a
    if-ne v1, v8, :cond_9d

    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_aa

    .line 15836
    .restart local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_9d
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 15837
    monitor-exit v5

    return v8

    .line 15839
    :cond_a5
    monitor-exit v5

    return v4

    .line 15844
    :cond_a7
    const/4 v3, -0x4

    monitor-exit v5

    return v3

    .line 15847
    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_aa
    :goto_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_59 .. :try_end_ab} :catchall_b1

    .line 15850
    if-eqz v2, :cond_ae

    .line 15851
    return v8

    .line 15853
    :cond_ae
    iget v3, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v3

    .line 15847
    :catchall_b1
    move-exception v3

    :try_start_b2
    monitor-exit v5
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v3
.end method


# virtual methods
.method getStatistic()Lcom/android/server/pm/InstallationStatistic;
    .registers 2

    .line 15731
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->statistic:Lcom/android/server/pm/InstallationStatistic;

    if-nez v0, :cond_b

    .line 15732
    new-instance v0, Lcom/android/server/pm/InstallationStatistic;

    invoke-direct {v0}, Lcom/android/server/pm/InstallationStatistic;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->statistic:Lcom/android/server/pm/InstallationStatistic;

    .line 15734
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->statistic:Lcom/android/server/pm/InstallationStatistic;

    return-object v0
.end method

.method handleReturnCode()V
    .registers 4

    .line 16173
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_d

    .line 16174
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16176
    :cond_d
    return-void
.end method

.method handleServiceError()V
    .registers 2

    .line 16180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16181
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16182
    return-void
.end method

.method public handleStartCopy()V
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15863
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 15866
    .local v2, "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_24

    .line 15867
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_1c

    .line 15868
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15869
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_24

    .line 15871
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15875
    :cond_24
    :goto_24
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    move v5, v0

    .line 15876
    .local v5, "onSd":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    move v6, v0

    .line 15877
    .local v6, "onInt":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    move v7, v0

    .line 15878
    .local v7, "ephemeral":Z
    const/4 v0, 0x0

    .line 15880
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/4 v8, -0x6

    const/4 v9, -0x1

    if-eqz v6, :cond_54

    if-eqz v5, :cond_54

    .line 15882
    const-string v10, "PackageManager"

    const-string v11, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15883
    const/16 v2, -0x13

    goto/16 :goto_f5

    .line 15884
    :cond_54
    if-eqz v5, :cond_63

    if-eqz v7, :cond_63

    .line 15885
    const-string v10, "PackageManager"

    const-string v11, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15886
    const/16 v2, -0x13

    goto/16 :goto_f5

    .line 15888
    :cond_63
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v10

    .line 15891
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v10, "pkgLite":Landroid/content/pm/PackageInfoLite;
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz v7, :cond_94

    .line 15892
    const-string v0, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pkgLite for install: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15899
    :cond_94
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v0, :cond_f4

    iget v0, v10, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v9, :cond_f4

    .line 15902
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v11

    .line 15903
    .local v11, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 15904
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 15903
    invoke-virtual {v11, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    .line 15906
    .local v12, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v14, v15}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 15910
    .local v14, "sizeBytes":J
    :try_start_bf
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v17, 0x0

    add-long v18, v14, v12

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 15911
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_e2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_bf .. :try_end_e2} :catch_e3

    .line 15915
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    goto :goto_ec

    .line 15913
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_e3
    move-exception v0

    .line 15914
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageManager"

    const-string v4, "Failed to free cache"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15924
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    move-object v0, v10

    .line 15924
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_ec
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v3, v8, :cond_f5

    .line 15926
    const/4 v3, -0x1

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15926
    .end local v11    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "lowThreshold":J
    .end local v14    # "sizeBytes":J
    goto :goto_f5

    .line 15932
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f4
    move-object v0, v10

    .line 15932
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f5
    :goto_f5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_160

    .line 15933
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15934
    .local v3, "loc":I
    const/4 v4, -0x3

    if-ne v3, v4, :cond_100

    .line 15935
    const/16 v2, -0x13

    goto :goto_160

    .line 15936
    :cond_100
    const/4 v4, -0x4

    if-ne v3, v4, :cond_105

    .line 15937
    const/4 v2, -0x1

    goto :goto_160

    .line 15938
    :cond_105
    const/4 v4, -0x1

    if-ne v3, v4, :cond_10a

    .line 15939
    const/4 v2, -0x4

    goto :goto_160

    .line 15940
    :cond_10a
    const/4 v4, -0x2

    if-ne v3, v4, :cond_10f

    .line 15941
    const/4 v2, -0x2

    goto :goto_160

    .line 15942
    :cond_10f
    if-ne v3, v8, :cond_113

    .line 15943
    const/4 v2, -0x3

    goto :goto_160

    .line 15944
    :cond_113
    const/4 v4, -0x5

    if-ne v3, v4, :cond_119

    .line 15945
    const/16 v2, -0x14

    goto :goto_160

    .line 15948
    :cond_119
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    .line 15949
    const/4 v4, -0x7

    if-ne v3, v4, :cond_123

    .line 15950
    const/16 v2, -0x19

    goto :goto_160

    .line 15951
    :cond_123
    if-nez v5, :cond_160

    if-nez v6, :cond_160

    .line 15953
    const/4 v4, 0x2

    if-ne v3, v4, :cond_137

    .line 15955
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15956
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_160

    .line 15957
    :cond_137
    const/4 v4, 0x3

    if-ne v3, v4, :cond_154

    .line 15958
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 15959
    const-string v4, "PackageManager"

    const-string v8, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15961
    :cond_147
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15962
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_160

    .line 15967
    :cond_154
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15968
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15974
    .end local v3    # "loc":I
    :cond_160
    :goto_160
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 15975
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15977
    const/4 v4, 0x1

    if-ne v2, v4, :cond_431

    .line 15980
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 15981
    .local v4, "verifierUser":Landroid/os/UserHandle;
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v8, :cond_175

    .line 15982
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 15989
    :cond_175
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v9, 0x10000000

    if-nez v8, :cond_17f

    .line 15990
    const/4 v8, -0x1

    goto :goto_18d

    :cond_17f
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15991
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 15990
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    :goto_18d
    move v15, v8

    .line 15993
    .local v15, "requiredUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v8, :cond_196

    .line 15994
    const/4 v8, -0x1

    goto :goto_1a4

    :cond_196
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 15995
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 15994
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    :goto_1a4
    move v14, v8

    .line 15998
    .local v14, "optionalUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v8, :cond_1ab

    const/4 v8, -0x1

    goto :goto_1af

    :cond_1ab
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_1af
    move v13, v8

    .line 15999
    .local v13, "installerUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v8, :cond_418

    const/4 v8, -0x1

    if-ne v15, v8, :cond_1cb

    if-eq v14, v8, :cond_1bc

    goto :goto_1cb

    .line 16161
    :cond_1bc
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    goto/16 :goto_425

    .line 15999
    :cond_1cb
    :goto_1cb
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16001
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16000
    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(III)Z
    invoke-static {v8, v10, v11, v13}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v8

    if-eqz v8, :cond_418

    .line 16002
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v8

    .line 16004
    .local v12, "verification":Landroid/content/Intent;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16005
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16007
    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16010
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v18, "application/vnd.android.package-archive"

    const/16 v19, 0x0

    .line 16011
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    const/16 v21, 0x0

    .line 16010
    move-object/from16 v16, v8

    move-object/from16 v17, v12

    # invokes: Lcom/android/server/pm/PackageManagerService;->queryIntentReceiversInternal(Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;
    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    .line 16020
    .local v11, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$4108(Lcom/android/server/pm/PackageManagerService;)I

    move-result v10

    .line 16022
    .local v10, "verificationId":I
    const-string v8, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v12, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16024
    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16027
    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16030
    const-string v8, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v9, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16033
    const-string v8, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v9, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16036
    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    .line 16037
    move/from16 v26, v5

    move/from16 v27, v6

    invoke-virtual {v0}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v5

    .line 16036
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .local v26, "onSd":Z
    .local v27, "onInt":Z
    invoke-virtual {v12, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16039
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v5, :cond_282

    .line 16040
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v5, :cond_255

    .line 16041
    const-string v5, "android.intent.extra.ORIGINATING_URI"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16044
    :cond_255
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v5, :cond_264

    .line 16045
    const-string v5, "android.intent.extra.REFERRER"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16048
    :cond_264
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v5, :cond_273

    .line 16049
    const-string v5, "android.intent.extra.ORIGINATING_UID"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16052
    :cond_273
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v5, :cond_282

    .line 16053
    const-string v5, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16058
    :cond_282
    new-instance v5, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v5, v15, v3}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16061
    .local v5, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16063
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v6, v0, v11, v5}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v6

    .line 16066
    .local v6, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDeviceIdleController()Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v17

    .line 16067
    .local v17, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v18

    .line 16073
    .local v18, "idleDuration":J
    if-eqz v6, :cond_2fc

    .line 16074
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 16075
    .local v8, "N":I
    if-nez v8, :cond_2b7

    .line 16076
    const-string v9, "PackageManager"

    move-object/from16 v36, v0

    const-string v0, "Additional verifiers required, but none installed."

    .line 16076
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v36, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16077
    const/16 v0, -0x16

    .line 16092
    .end local v2    # "ret":I
    .local v0, "ret":I
    move v2, v0

    move-object/from16 v38, v6

    goto :goto_304

    .line 16079
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "ret":I
    :cond_2b7
    move-object/from16 v36, v0

    .line 16079
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/16 v23, 0x0

    .line 16079
    .local v23, "i":I
    :goto_2bb
    move/from16 v0, v23

    .line 16079
    .end local v23    # "i":I
    .local v0, "i":I
    if-ge v0, v8, :cond_2f7

    .line 16080
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 16081
    .local v9, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    .line 16082
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    .line 16083
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    const/16 v34, 0x0

    const-string/jumbo v35, "package verifier"

    .line 16081
    move-object/from16 v28, v17

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v35}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16085
    move/from16 v37, v2

    new-instance v2, Landroid/content/Intent;

    .line 16085
    .end local v2    # "ret":I
    .local v37, "ret":I
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16086
    .local v2, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16087
    move-object/from16 v38, v6

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16087
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v38, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16079
    .end local v2    # "sufficientIntent":Landroid/content/Intent;
    .end local v9    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v23, v0, 0x1

    .line 16079
    .end local v0    # "i":I
    .restart local v23    # "i":I
    move/from16 v2, v37

    move-object/from16 v6, v38

    goto :goto_2bb

    .line 16092
    .end local v8    # "N":I
    .end local v23    # "i":I
    .end local v37    # "ret":I
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, "ret":I
    .restart local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2f7
    move/from16 v37, v2

    move-object/from16 v38, v6

    .line 16092
    .end local v2    # "ret":I
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v37    # "ret":I
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_302

    .line 16092
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v37    # "ret":I
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "ret":I
    .restart local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2fc
    move-object/from16 v36, v0

    move/from16 v37, v2

    move-object/from16 v38, v6

    .line 16092
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "ret":I
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v37    # "ret":I
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_302
    move/from16 v2, v37

    .line 16092
    .end local v37    # "ret":I
    .restart local v2    # "ret":I
    :goto_304
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v0, :cond_394

    .line 16094
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    .line 16095
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16096
    .local v0, "optionalIntent":Landroid/content/Intent;
    const-string v8, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16097
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v30, "application/vnd.android.package-archive"

    const/16 v31, 0x0

    .line 16098
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v32

    const/16 v33, 0x0

    .line 16097
    move-object/from16 v28, v8

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->queryIntentReceiversInternal(Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;
    invoke-static/range {v28 .. v33}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v9

    .line 16099
    .local v9, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v8, v6, v9}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 16101
    .local v6, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16102
    invoke-virtual {v5, v14}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 16103
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v8, :cond_35e

    .line 16104
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v5

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 16104
    .end local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .local v39, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    invoke-virtual {v8, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 16118
    move/from16 v41, v10

    move-object/from16 v42, v11

    move-object v5, v12

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    goto :goto_3a0

    .line 16106
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_35e
    move-object/from16 v39, v5

    .line 16106
    .end local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v40, v6

    new-instance v6, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    .line 16106
    .end local v6    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .local v40, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-direct {v6, v1, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v9

    move-object v9, v0

    .line 16106
    .end local v9    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v41, v10

    move-object v10, v4

    .line 16106
    .end local v10    # "verificationId":I
    .local v41, "verificationId":I
    move-object/from16 v42, v11

    move-object v11, v5

    .line 16106
    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v42, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v5, v12

    move-object v12, v6

    .line 16106
    .end local v12    # "verification":Landroid/content/Intent;
    .local v5, "verification":Landroid/content/Intent;
    move v6, v13

    move-object/from16 v13, v16

    .line 16106
    .end local v13    # "installerUid":I
    .local v6, "installerUid":I
    move/from16 v25, v14

    move/from16 v14, v20

    .line 16106
    .end local v14    # "optionalUid":I
    .local v25, "optionalUid":I
    move/from16 v20, v15

    move-object/from16 v15, v21

    .line 16106
    .end local v15    # "requiredUid":I
    .local v20, "requiredUid":I
    move-object/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16115
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16115
    .end local v0    # "optionalIntent":Landroid/content/Intent;
    .end local v23    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v40    # "optionalVerifierComponent":Landroid/content/ComponentName;
    goto :goto_3a0

    .line 16118
    .end local v6    # "installerUid":I
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verificationId":I
    .end local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v10    # "verificationId":I
    .restart local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "verification":Landroid/content/Intent;
    .restart local v13    # "installerUid":I
    .restart local v14    # "optionalUid":I
    .restart local v15    # "requiredUid":I
    :cond_394
    move-object/from16 v39, v5

    move/from16 v41, v10

    move-object/from16 v42, v11

    move-object v5, v12

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .line 16118
    .end local v10    # "verificationId":I
    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "verification":Landroid/content/Intent;
    .end local v13    # "installerUid":I
    .end local v14    # "optionalUid":I
    .end local v15    # "requiredUid":I
    .local v5, "verification":Landroid/content/Intent;
    .restart local v6    # "installerUid":I
    .restart local v20    # "requiredUid":I
    .restart local v25    # "optionalUid":I
    .restart local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v41    # "verificationId":I
    .restart local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_3a0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_417

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v0, :cond_417

    .line 16121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_3bf

    .line 16122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    .line 16125
    :cond_3bf
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v15, v42

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v0, v8, v15}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 16127
    .end local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "requiredVerifierComponent":Landroid/content/ComponentName;
    .local v15, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-wide/32 v8, 0x40000

    const-string/jumbo v10, "verification"

    move/from16 v14, v41

    invoke-static {v8, v9, v10, v14}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16134
    .end local v41    # "verificationId":I
    .local v14, "verificationId":I
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 16137
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    const/16 v34, 0x0

    const-string/jumbo v35, "package verifier"

    .line 16135
    move-object/from16 v28, v17

    move-object/from16 v30, v8

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v35}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16138
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v1, v14}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v9, v5

    move-object v10, v4

    move/from16 v23, v14

    move/from16 v14, v16

    .end local v14    # "verificationId":I
    .local v23, "verificationId":I
    move-object/from16 v24, v15

    move-object/from16 v15, v21

    .line 16138
    .end local v15    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16154
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16156
    .end local v0    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v17    # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v18    # "idleDuration":J
    .end local v23    # "verificationId":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_417
    goto :goto_439

    .line 16161
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v26    # "onSd":Z
    .end local v27    # "onInt":Z
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v5, "onSd":Z
    .local v6, "onInt":Z
    .restart local v13    # "installerUid":I
    .local v14, "optionalUid":I
    .local v15, "requiredUid":I
    :cond_418
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .line 16161
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "ret":I
    .end local v5    # "onSd":Z
    .end local v13    # "installerUid":I
    .end local v14    # "optionalUid":I
    .end local v15    # "requiredUid":I
    .local v6, "installerUid":I
    .restart local v20    # "requiredUid":I
    .restart local v25    # "optionalUid":I
    .restart local v26    # "onSd":Z
    .restart local v27    # "onInt":Z
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v37    # "ret":I
    :goto_425
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v2

    .line 16161
    .end local v4    # "verifierUser":Landroid/os/UserHandle;
    .end local v6    # "installerUid":I
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v37    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_439

    .line 16165
    .end local v26    # "onSd":Z
    .end local v27    # "onInt":Z
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v5    # "onSd":Z
    .local v6, "onInt":Z
    :cond_431
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    .line 16165
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .restart local v26    # "onSd":Z
    .restart local v27    # "onInt":Z
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_439
    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 15758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
