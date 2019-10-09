.class Lcom/android/server/policy/MiuiGlobalActions$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 121
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .line 124
    const-string v0, "airplane"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/16 v1, 0x9

    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/MiuiGlobalActions;->access$000(Lcom/android/server/policy/MiuiGlobalActions;I)V

    goto :goto_5a

    .line 126
    :cond_10
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/4 v1, 0x5

    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->sendAction(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/MiuiGlobalActions;->access$000(Lcom/android/server/policy/MiuiGlobalActions;I)V

    goto :goto_5a

    .line 128
    :cond_20
    const-string/jumbo v0, "reboot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 130
    :try_start_2a
    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->access$100()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    .line 131
    :catch_33
    move-exception v0

    .line 132
    :goto_34
    goto :goto_5a

    .line 133
    :cond_35
    const-string/jumbo v0, "shutdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 134
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$1$1;

    const-string v1, "ShutdownThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MiuiGlobalActions$1$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/android/server/policy/MiuiGlobalActions$1$1;->start()V

    goto :goto_5a

    .line 143
    :cond_49
    const-string v0, "dismiss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 144
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    :cond_5a
    :goto_5a
    return-void
.end method
