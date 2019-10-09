.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3759
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3760
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3761
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 3762
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7
    .param p1, "array"    # [Z

    .line 3895
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3896
    return v1

    .line 3898
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_15

    aget-boolean v4, p1, v3

    .line 3899
    .local v4, "value":Z
    if-eqz v4, :cond_12

    .line 3900
    return v2

    .line 3898
    .end local v4    # "value":Z
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3903
    :cond_15
    return v1
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .registers 4
    .param p1, "changedCode"    # I

    .line 3882
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V
    invoke-static {v0, p1, v1}, Lcom/android/server/AppOpsService;->access$500(Lcom/android/server/AppOpsService;II)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    .line 3870
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 3871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_14

    .line 3873
    monitor-exit v0

    return-void

    .line 3875
    :cond_14
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3876
    .local v1, "userCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1c
    if-ge v3, v1, :cond_41

    .line 3877
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 3878
    .local v4, "restrictions":[Z
    array-length v5, v4

    .line 3879
    .local v5, "restrictionCount":I
    move v6, v2

    .local v6, "j":I
    :goto_28
    if-ge v6, v5, :cond_3e

    .line 3880
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_3b

    .line 3881
    move v7, v6

    .line 3882
    .local v7, "changedCode":I
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v8, v8, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;

    invoke-direct {v9, p0, v7}, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3879
    .end local v7    # "changedCode":I
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 3876
    .end local v4    # "restrictions":[Z
    .end local v5    # "restrictionCount":I
    .end local v6    # "j":I
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 3886
    .end local v3    # "i":I
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 3887
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 3888
    return-void

    .line 3887
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 3891
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3892
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 8
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3829
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3830
    return v1

    .line 3832
    :cond_6
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3833
    .local v0, "restrictions":[Z
    if-nez v0, :cond_11

    .line 3834
    return v1

    .line 3836
    :cond_11
    aget-boolean v2, v0, p1

    if-nez v2, :cond_16

    .line 3837
    return v1

    .line 3839
    :cond_16
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 3840
    return v2

    .line 3842
    :cond_1c
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3843
    .local v1, "perUserExclusions":[Ljava/lang/String;
    if-nez v1, :cond_27

    .line 3844
    return v2

    .line 3846
    :cond_27
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .registers 2

    .line 3865
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3850
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 3851
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3852
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 3853
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 3856
    :cond_14
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_27

    .line 3857
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3858
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_27

    .line 3859
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 3862
    :cond_27
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .line 3766
    const/4 v0, 0x0

    .line 3768
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    if-eqz p2, :cond_e

    .line 3769
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 3773
    :cond_e
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_39

    .line 3774
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 3776
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 3777
    .local v3, "users":[I
    move v4, v2

    .local v4, "i":I
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 3778
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v3, v4

    .line 3777
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 3780
    .end local v1    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "i":I
    :cond_38
    goto :goto_3e

    .line 3781
    .end local v3    # "users":[I
    :cond_39
    const/4 v1, 0x1

    new-array v3, v1, [I

    aput p4, v3, v2

    .restart local v3    # "users":[I
    :goto_3e
    move-object v1, v3

    .line 3784
    .end local v3    # "users":[I
    .local v1, "users":[I
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v3, :cond_b6

    .line 3785
    array-length v3, v1

    .line 3787
    .local v3, "numUsers":I
    nop

    .local v2, "i":I
    :goto_45
    if-ge v2, v3, :cond_b6

    .line 3788
    aget v4, v1, v2

    .line 3790
    .local v4, "thisUserId":I
    iget-object v5, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 3791
    .local v5, "userRestrictions":[Z
    if-nez v5, :cond_5e

    if-eqz p2, :cond_5e

    .line 3792
    const/16 v6, 0x4e

    new-array v5, v6, [Z

    .line 3793
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3795
    :cond_5e
    if-eqz v5, :cond_75

    aget-boolean v6, v5, p1

    if-eq v6, p2, :cond_75

    .line 3796
    aput-boolean p2, v5, p1

    .line 3797
    if-nez p2, :cond_74

    invoke-direct {p0, v5}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 3798
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3799
    const/4 v5, 0x0

    .line 3801
    :cond_74
    const/4 v0, 0x1

    .line 3804
    :cond_75
    if-eqz v5, :cond_b3

    .line 3805
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    .line 3806
    .local v6, "noExcludedPackages":Z
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_88

    if-nez v6, :cond_88

    .line 3807
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 3809
    :cond_88
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_b3

    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 3810
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 3809
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b3

    .line 3811
    if-eqz v6, :cond_ad

    .line 3812
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3813
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_b2

    .line 3814
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_b2

    .line 3817
    :cond_ad
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3819
    :cond_b2
    :goto_b2
    const/4 v0, 0x1

    .line 3787
    .end local v4    # "thisUserId":I
    .end local v5    # "userRestrictions":[Z
    .end local v6    # "noExcludedPackages":Z
    :cond_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 3825
    .end local v2    # "i":I
    .end local v3    # "numUsers":I
    :cond_b6
    return v0
.end method
