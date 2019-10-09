.class final Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
.super Landroid/os/storage/StorageManagerInternal;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageManagerInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 3833
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 3835
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/StorageManagerService;
    .param p2, "x1"    # Lcom/android/server/StorageManagerService$1;

    .line 3833
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 3841
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3842
    return-void
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3853
    const v0, 0x7fffffff

    .line 3854
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 3855
    .local v2, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v2, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v4

    .line 3856
    .local v4, "policyMode":I
    if-nez v4, :cond_1d

    .line 3857
    return v3

    .line 3859
    :cond_1d
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3860
    .end local v2    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4    # "policyMode":I
    goto :goto_9

    .line 3861
    :cond_22
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_28

    .line 3862
    return v3

    .line 3864
    :cond_28
    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3870
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 3871
    return v0

    .line 3874
    :cond_6
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/MountServiceInjector;->checkExternalStorageForXSpace(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3876
    return v0

    .line 3880
    :cond_13
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 3881
    .local v2, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v2, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v3

    .line 3882
    .local v3, "policyHasStorage":Z
    if-nez v3, :cond_2d

    .line 3883
    const/4 v0, 0x0

    return v0

    .line 3885
    .end local v2    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v3    # "policyHasStorage":Z
    :cond_2d
    goto :goto_19

    .line 3886
    :cond_2e
    return v0
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3846
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 3847
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V
    invoke-static {v1, p1, v0}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 3848
    return-void
.end method
