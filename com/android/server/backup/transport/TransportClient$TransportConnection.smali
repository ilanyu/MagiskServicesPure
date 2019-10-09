.class Lcom/android/server/backup/transport/TransportClient$TransportConnection;
.super Ljava/lang/Object;
.source "TransportClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/TransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportConnection"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTransportClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/backup/transport/TransportClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportClient;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mContext:Landroid/content/Context;

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportClient$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "x2"    # Lcom/android/server/backup/transport/TransportClient$1;

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportClient;)V

    return-void
.end method

.method private referenceLost(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 686
    const-string v0, "TransportClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " called but TransportClient reference has been GC\'ed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 675
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportClient;

    .line 676
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_10

    .line 677
    const-string v1, "TransportConnection.onBindingDied()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->referenceLost(Ljava/lang/String;)V

    .line 678
    return-void

    .line 680
    :cond_10
    # invokes: Lcom/android/server/backup/transport/TransportClient;->onBindingDied()V
    invoke-static {v0}, Lcom/android/server/backup/transport/TransportClient;->access$300(Lcom/android/server/backup/transport/TransportClient;)V

    .line 681
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 655
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportClient;

    .line 656
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_10

    .line 657
    const-string v1, "TransportConnection.onServiceConnected()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->referenceLost(Ljava/lang/String;)V

    .line 658
    return-void

    .line 660
    :cond_10
    # invokes: Lcom/android/server/backup/transport/TransportClient;->onServiceConnected(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/android/server/backup/transport/TransportClient;->access$100(Lcom/android/server/backup/transport/TransportClient;Landroid/os/IBinder;)V

    .line 661
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 665
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/transport/TransportClient;

    .line 666
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_10

    .line 667
    const-string v1, "TransportConnection.onServiceDisconnected()"

    invoke-direct {p0, v1}, Lcom/android/server/backup/transport/TransportClient$TransportConnection;->referenceLost(Ljava/lang/String;)V

    .line 668
    return-void

    .line 670
    :cond_10
    # invokes: Lcom/android/server/backup/transport/TransportClient;->onServiceDisconnected()V
    invoke-static {v0}, Lcom/android/server/backup/transport/TransportClient;->access$200(Lcom/android/server/backup/transport/TransportClient;)V

    .line 671
    return-void
.end method
