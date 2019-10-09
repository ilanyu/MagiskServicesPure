.class Lcom/android/server/pm/PackageManagerServiceInjector$3;
.super Landroid/os/IMessenger$Stub;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1240
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1246
    return-void
.end method
