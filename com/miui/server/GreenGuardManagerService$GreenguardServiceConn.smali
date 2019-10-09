.class Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/GreenGuardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GreenguardServiceConn"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    .line 80
    iget-object v0, p0, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 88
    const-string v0, "GreenKidManagerService"

    const-string v1, "On GreenKidService Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 93
    const-string v0, "GreenKidManagerService"

    const-string v1, "On GreenKidService Disconnected , schedule restart it in 10s."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    # getter for: Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/miui/server/GreenGuardManagerService;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;

    invoke-direct {v1, p0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn$1;-><init>(Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;)V

    .line 99
    # getter for: Lcom/miui/server/GreenGuardManagerService;->TIME_DELAY:J
    invoke-static {}, Lcom/miui/server/GreenGuardManagerService;->access$200()J

    move-result-wide v2

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
