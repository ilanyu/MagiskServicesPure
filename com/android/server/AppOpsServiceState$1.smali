.class Lcom/android/server/AppOpsServiceState$1;
.super Landroid/database/ContentObserver;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsServiceState;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/AppOpsServiceState;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$1;->this$0:Lcom/android/server/AppOpsServiceState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 115
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$1;->this$0:Lcom/android/server/AppOpsServiceState;

    # invokes: Lcom/android/server/AppOpsServiceState;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/AppOpsServiceState;->access$100(Lcom/android/server/AppOpsServiceState;)V

    .line 116
    return-void
.end method
