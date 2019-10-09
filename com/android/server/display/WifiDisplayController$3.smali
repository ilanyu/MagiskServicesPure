.class Lcom/android/server/display/WifiDisplayController$3;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .line 368
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 378
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 379
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set WFD info with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_21
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 371
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 372
    const-string v0, "WifiDisplayController"

    const-string v1, "Successfully set WFD info."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_d
    return-void
.end method
