.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/NetdService$NetdCommand;
    }
.end annotation


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Landroid/net/util/NetdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/net/INetd;
    .registers 2

    .line 115
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .registers 15
    .param p0, "maxTimeoutMs"    # J

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_b

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0

    .line 79
    :cond_b
    cmp-long v2, p0, v0

    if-lez v2, :cond_15

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p0

    goto :goto_1a

    .line 81
    :cond_15
    const-wide v2, 0x7fffffffffffffffL

    .line 83
    .local v2, "stop":J
    :goto_1a
    move-wide v4, v0

    .line 85
    .local v4, "timeoutMs":J
    :goto_1b
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v6

    .line 86
    .local v6, "netdInstance":Landroid/net/INetd;
    if-eqz v6, :cond_22

    .line 87
    return-object v6

    .line 90
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v7, v2, v7

    .line 91
    .local v7, "remaining":J
    cmp-long v9, v7, v0

    if-gtz v9, :cond_2e

    .line 100
    .end local v6    # "netdInstance":Landroid/net/INetd;
    .end local v7    # "remaining":J
    const/4 v0, 0x0

    return-object v0

    .line 94
    .restart local v6    # "netdInstance":Landroid/net/INetd;
    .restart local v7    # "remaining":J
    :cond_2e
    const-wide/16 v9, 0x64

    add-long/2addr v9, v4

    const-wide/16 v11, 0x3e8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 95
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 97
    :try_start_3b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 98
    goto :goto_40

    :catch_3f
    move-exception v9

    .line 99
    .end local v6    # "netdInstance":Landroid/net/INetd;
    .end local v7    # "remaining":J
    :goto_40
    goto :goto_1b
.end method

.method public static getInstance()Landroid/net/INetd;
    .registers 3

    .line 51
    const-string/jumbo v0, "netd"

    .line 52
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    .line 53
    .local v0, "netdInstance":Landroid/net/INetd;
    if-nez v0, :cond_14

    .line 54
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: returning null INetd instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_14
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .registers 5
    .param p0, "cmd"    # Landroid/net/util/NetdService$NetdCommand;

    .line 129
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 130
    return-void

    .line 131
    :catch_8
    move-exception v0

    .line 132
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error communicating with netd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
