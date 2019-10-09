.class public abstract Lcom/android/server/storage/AppFuseBridge$MountScope;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppFuseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MountScope"
.end annotation


# instance fields
.field private mMountResult:Z

.field private final mMounted:Ljava/util/concurrent/CountDownLatch;

.field public final mountId:I

.field public final mountPoint:Ljava/io/File;

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "mountId"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 141
    iput p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 142
    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->pid:I

    .line 143
    iput p3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 144
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/appfuse/%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountPoint:Ljava/io/File;

    .line 145
    return-void
.end method


# virtual methods
.method public abstract open()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation
.end method

.method setMountResultLocked(Z)V
    .registers 6
    .param p1, "result"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AppFuseBridge.this"
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 150
    return-void

    .line 152
    :cond_d
    iput-boolean p1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    .line 153
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 154
    return-void
.end method

.method waitForMount()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 158
    iget-boolean v0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    return v0
.end method
