.class final Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillCompatState"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mUserSpecs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/PrintWriter;

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 809
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v0, :cond_a

    .line 810
    const-string v0, "N/A"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    return-void

    .line 813
    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "prefix2":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 816
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 817
    .local v3, "user":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "User: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 818
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 819
    .local v4, "perUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    move v5, v1

    .local v5, "j":I
    :goto_42
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_65

    .line 820
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 821
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 822
    .local v7, "state":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 819
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "state":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 815
    .end local v3    # "user":I
    .end local v4    # "perUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v5    # "j":I
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 825
    .end local v2    # "i":I
    :cond_68
    return-void
.end method


# virtual methods
.method addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "urlBarResourceIds"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 768
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 770
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 772
    :cond_e
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 773
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_23

    .line 774
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 775
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    :cond_23
    new-instance v2, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    monitor-exit v0

    .line 780
    return-void

    .line 779
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 750
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 752
    monitor-exit v0

    return-object v2

    .line 754
    :cond_a
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 755
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_16

    .line 756
    monitor-exit v0

    return-object v2

    .line 758
    :cond_16
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 759
    .local v3, "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    if-nez v3, :cond_20

    .line 760
    monitor-exit v0

    return-object v2

    .line 762
    :cond_20
    # getter for: Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$900(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 763
    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v3    # "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method isCompatibilityModeRequested(Ljava/lang/String;JI)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I

    .line 732
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 734
    monitor-exit v0

    return v2

    .line 736
    :cond_a
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 737
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_16

    .line 738
    monitor-exit v0

    return v2

    .line 740
    :cond_16
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 741
    .local v3, "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    if-nez v3, :cond_20

    .line 742
    monitor-exit v0

    return v2

    .line 744
    :cond_20
    # getter for: Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$800(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-gtz v4, :cond_2a

    const/4 v2, 0x1

    nop

    :cond_2a
    monitor-exit v0

    return v2

    .line 745
    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v3    # "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method removeCompatibilityModeRequests(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_17

    .line 785
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 786
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_17

    .line 787
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 790
    :cond_17
    monitor-exit v0

    .line 791
    return-void

    .line 790
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method reset(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 794
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_3f

    .line 796
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 797
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 798
    .local v1, "newSize":I
    if-nez v1, :cond_24

    .line 799
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_20

    const-string v2, "AutofillManagerService"

    const-string/jumbo v3, "reseting mUserSpecs"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_20
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_3f

    .line 802
    :cond_24
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3f

    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserSpecs down to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v1    # "newSize":I
    :cond_3f
    :goto_3f
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method
