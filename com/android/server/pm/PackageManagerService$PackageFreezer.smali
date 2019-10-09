.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 23412
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23403
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23404
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23413
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23414
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23415
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23416
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23417
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "killReason"    # Ljava/lang/String;

    .line 23419
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23403
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23404
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23420
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 23421
    :try_start_15
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23422
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23424
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 23425
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_36

    .line 23426
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {p1, v2, v3, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    .line 23429
    :cond_36
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 23430
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_68

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_68

    .line 23431
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 23432
    .local v3, "N":I
    new-array v4, v3, [Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23433
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v3, :cond_67

    .line 23434
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v6, p1, v7, p3, p4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v4

    .line 23433
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 23437
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_67
    goto :goto_6b

    .line 23438
    :cond_68
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23440
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_15 .. :try_end_6c} :catchall_74

    .line 23441
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23442
    return-void

    .line 23440
    :catchall_74
    move-exception p1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 23459
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 23460
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 23461
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 23462
    :try_start_14
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    if-eqz v1, :cond_21

    .line 23463
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23466
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v1, :cond_32

    .line 23467
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    array-length v3, v1

    :goto_28
    if-ge v2, v3, :cond_32

    aget-object v4, v1, v2

    .line 23468
    .local v4, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 23467
    .end local v4    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 23471
    :cond_32
    monitor-exit v0

    goto :goto_37

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v1

    .line 23473
    :cond_37
    :goto_37
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23447
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 23448
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 23451
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 23453
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23454
    nop

    .line 23455
    return-void

    .line 23453
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
