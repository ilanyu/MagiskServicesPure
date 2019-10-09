.class Lcom/android/server/connectivity/tethering/SimChangeListener$1;
.super Ljava/lang/Object;
.source "SimChangeListener.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/SimChangeListener;->makeCallback(Ljava/lang/Runnable;)Ljava/util/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private mSimNotLoadedSeen:Z

.field final synthetic val$onSimCardLoadedCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->val$onSimCardLoadedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->mSimNotLoadedSeen:Z

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "state":Ljava/lang/String;
    # getter for: Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/tethering/SimChangeListener;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got Sim changed to state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSimNotLoadedSeen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->mSimNotLoadedSeen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->mSimNotLoadedSeen:Z

    .line 69
    return-void

    .line 72
    :cond_35
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->mSimNotLoadedSeen:Z

    if-eqz v1, :cond_41

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->mSimNotLoadedSeen:Z

    .line 74
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->val$onSimCardLoadedCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 76
    :cond_41
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 58
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/SimChangeListener$1;->accept(Landroid/content/Intent;)V

    return-void
.end method
