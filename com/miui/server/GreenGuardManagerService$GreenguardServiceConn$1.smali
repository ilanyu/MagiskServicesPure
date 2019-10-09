.class Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;


# direct methods
.method constructor <init>(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    .line 94
    iput-object p1, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;->this$0:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;->this$0:Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    # getter for: Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->access$000(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcessInner(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->access$100(Landroid/content/Context;)V

    .line 98
    return-void
.end method
