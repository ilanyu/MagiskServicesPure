.class Lcom/android/server/display/DisplayProjectionReceiver$2;
.super Ljava/lang/Thread;
.source "DisplayProjectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayProjectionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayProjectionReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayProjectionReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayProjectionReceiver;

    .line 40
    iput-object p1, p0, Lcom/android/server/display/DisplayProjectionReceiver$2;->this$0:Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver$2;->this$0:Lcom/android/server/display/DisplayProjectionReceiver;

    # getter for: Lcom/android/server/display/DisplayProjectionReceiver;->mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;
    invoke-static {v0}, Lcom/android/server/display/DisplayProjectionReceiver;->access$000(Lcom/android/server/display/DisplayProjectionReceiver;)Lcom/android/server/display/MiuiProjectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    .line 44
    return-void
.end method
