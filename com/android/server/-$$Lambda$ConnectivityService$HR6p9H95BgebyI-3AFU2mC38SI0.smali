.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$HR6p9H95BgebyI-3AFU2mC38SI0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$HR6p9H95BgebyI-3AFU2mC38SI0;->f$0:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$HR6p9H95BgebyI-3AFU2mC38SI0;->f$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->lambda$setUnderlyingNetworksForVpn$2(Lcom/android/server/ConnectivityService;)V

    return-void
.end method
