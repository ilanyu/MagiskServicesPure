.class public Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCacheImpl.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mScreenCaptureDisabled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisabled:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public getScreenCaptureDisabled(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 47
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 49
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 40
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setScreenCaptureDisabled(IZ)V
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .line 53
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
