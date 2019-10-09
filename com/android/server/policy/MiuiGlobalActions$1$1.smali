.class Lcom/android/server/policy/MiuiGlobalActions$1$1;
.super Ljava/lang/Thread;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions$1;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MiuiGlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/policy/MiuiGlobalActions$1;
    .param p2, "x0"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1$1;->this$1:Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 138
    :try_start_0
    # invokes: Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->access$100()Landroid/os/IPowerManager;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 140
    goto :goto_d

    .line 139
    :catch_c
    move-exception v0

    .line 141
    :goto_d
    return-void
.end method
