.class Lcom/android/server/policy/MiuiScreenOnProximityLock$1;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Z)V
    .registers 4
    .param p1, "tooClose"    # Z

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 60
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # getter for: Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_16

    .line 62
    :cond_d
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # getter for: Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$000(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    :goto_16
    return-void
.end method
