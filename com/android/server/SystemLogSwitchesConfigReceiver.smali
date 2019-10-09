.class final Lcom/android/server/SystemLogSwitchesConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemLogSwitchesConfigReceiver.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;-><init>(Lcom/android/server/SystemLogSwitchesConfigReceiver;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method
