.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$glaDh2pKbTpJLW8cwpYGiYd-sCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic f$0:Landroid/net/RouteInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/net/RouteInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$glaDh2pKbTpJLW8cwpYGiYd-sCA;->f$0:Landroid/net/RouteInfo;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$glaDh2pKbTpJLW8cwpYGiYd-sCA;->f$0:Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyRouteChange$9(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
