.class Lcom/android/server/job/controllers/ConnectivityController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 304
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 307
    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 308
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 311
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 315
    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 316
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 319
    return-void
.end method
