.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;->f$1:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$iDseO-DhVR7T2LR6qxVJCC-3wfI;->f$1:Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyAddressRemoved$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
