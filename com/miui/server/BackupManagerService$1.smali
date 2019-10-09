.class Lcom/miui/server/BackupManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .line 97
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 100
    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 101
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_15
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 103
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 106
    :cond_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_36

    throw v1

    .line 108
    :cond_39
    :goto_39
    const/4 v0, 0x1

    return v0
.end method
