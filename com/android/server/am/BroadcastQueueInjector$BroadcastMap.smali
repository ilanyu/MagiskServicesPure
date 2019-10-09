.class Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastMap"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    if-eqz v0, :cond_1f

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    .line 103
    .local v0, "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 103
    :goto_1e
    return v1

    .line 106
    .end local v0    # "broadcastMapObj":Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
