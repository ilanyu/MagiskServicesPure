.class public Lcom/miui/server/FlipScreenManager;
.super Ljava/lang/Object;
.source "FlipScreenManager.java"


# static fields
.field private static volatile sIntance:Lcom/miui/server/FlipScreenManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "systemContext"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/server/FlipScreenManager;
    .registers 3
    .param p0, "systemContext"    # Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/miui/server/FlipScreenManager;->sIntance:Lcom/miui/server/FlipScreenManager;

    if-nez v0, :cond_17

    .line 19
    const-class v0, Lcom/miui/server/FlipScreenManager;

    monitor-enter v0

    .line 20
    :try_start_7
    sget-object v1, Lcom/miui/server/FlipScreenManager;->sIntance:Lcom/miui/server/FlipScreenManager;

    if-nez v1, :cond_12

    .line 21
    new-instance v1, Lcom/miui/server/FlipScreenManager;

    invoke-direct {v1, p0}, Lcom/miui/server/FlipScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/server/FlipScreenManager;->sIntance:Lcom/miui/server/FlipScreenManager;

    .line 23
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 25
    :cond_17
    :goto_17
    sget-object v0, Lcom/miui/server/FlipScreenManager;->sIntance:Lcom/miui/server/FlipScreenManager;

    return-object v0
.end method


# virtual methods
.method public startService()V
    .registers 1

    .line 29
    return-void
.end method
