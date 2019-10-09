.class final Lcom/android/server/IpSecService$UserResourceTracker;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserResourceTracker"
.end annotation


# instance fields
.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/IpSecService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    return-void
.end method

.method private checkCallerUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_17

    const/16 v0, 0x3e8

    .line 458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 459
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempted access of unowned resources"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;
    .registers 4
    .param p1, "uid"    # I

    .line 445
    invoke-direct {p0, p1}, Lcom/android/server/IpSecService$UserResourceTracker;->checkCallerUid(I)V

    .line 447
    iget-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$UserRecord;

    .line 448
    .local v0, "r":Lcom/android/server/IpSecService$UserRecord;
    if-nez v0, :cond_18

    .line 449
    new-instance v1, Lcom/android/server/IpSecService$UserRecord;

    invoke-direct {v1}, Lcom/android/server/IpSecService$UserRecord;-><init>()V

    move-object v0, v1

    .line 450
    iget-object v1, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    :cond_18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/android/server/IpSecService$UserResourceTracker;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
