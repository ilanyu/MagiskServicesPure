.class Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageParserCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 788
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 795
    .local p1, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 798
    const/4 v0, 0x0

    return-object v0

    .line 801
    :cond_a
    const/4 v0, 0x0

    .line 802
    .local v0, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 803
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    if-eqz v3, :cond_32

    .line 804
    if-nez v0, :cond_2f

    .line 805
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 807
    :cond_2f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_32
    goto :goto_f

    .line 810
    :cond_33
    if-eqz v0, :cond_3d

    .line 811
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageParserCallback;)V

    .line 816
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 818
    .end local v1    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3d
    return-object v0
.end method

.method getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_20

    .line 861
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 862
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 861
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 863
    .local v2, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    .line 866
    :try_start_17
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    return-object v1

    .line 863
    .end local v2    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2

    .line 867
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method final getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 823
    .local p1, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_7a

    .line 826
    :cond_b
    const/4 v1, 0x0

    .line 827
    .local v1, "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 828
    .local v3, "overlayPackage":Landroid/content/pm/PackageParser$Package;
    if-nez p2, :cond_2d

    .line 829
    if-nez v1, :cond_27

    .line 830
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 832
    :cond_27
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    goto :goto_10

    .line 842
    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 844
    invoke-static {v4}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v4

    .line 843
    invoke-static {v4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    .line 842
    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 845
    if-nez v1, :cond_46

    .line 846
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 848
    :cond_46
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2d .. :try_end_4b} :catch_4c

    .line 852
    goto :goto_6d

    .line 849
    :catch_4c
    move-exception v4

    .line 850
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to generate idmap for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v3    # "overlayPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_6d
    goto :goto_10

    .line 854
    :cond_6e
    if-nez v1, :cond_71

    goto :goto_79

    :cond_71
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_79
    return-object v0

    .line 824
    .end local v1    # "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7a
    :goto_7a
    return-object v0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
