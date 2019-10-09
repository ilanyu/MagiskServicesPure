.class Lcom/android/server/ConnectivityService$2;
.super Lcom/android/server/connectivity/tethering/TetheringDependencies;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 931
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public isTetheringSupported()Z
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isTetheringSupported()Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    return v0
.end method
