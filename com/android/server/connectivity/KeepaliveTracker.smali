.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .line 60
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 231
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 232
    .local v0, "networkKeepalives":Ljava/util/HashMap;
    if-nez v0, :cond_15

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 234
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_15
    const/4 v1, 0x1

    .local v1, "slot":I
    :goto_16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gt v1, v2, :cond_2a

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    .line 242
    return v1

    .line 240
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 245
    :cond_2a
    return v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 363
    const-string v0, "Packet keepalives:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 366
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 368
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 369
    .local v3, "slot":I
    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 370
    .local v4, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 371
    .end local v3    # "slot":I
    .end local v4    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    goto :goto_38

    .line 372
    :cond_76
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 373
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_12

    .line 374
    :cond_7a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 287
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 288
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v0, :cond_6b

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 291
    .local v3, "slot":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    # invokes: Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I
    invoke-static {v4}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$100(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v4

    .line 292
    .local v4, "error":I
    if-eqz v4, :cond_46

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v3    # "slot":I
    .end local v4    # "error":I
    :cond_46
    goto :goto_17

    .line 296
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 297
    .local v3, "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 298
    .end local v3    # "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_4b

    .line 300
    .end local v1    # "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_6b
    return-void
.end method

.method public handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .registers 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "message"    # Landroid/os/Message;

    .line 303
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 304
    .local v0, "slot":I
    iget v1, p2, Landroid/os/Message;->arg2:I

    .line 306
    .local v1, "reason":I
    const/4 v2, 0x0

    .line 308
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_17} :catch_19

    move-object v2, v3

    .line 309
    goto :goto_1a

    :catch_19
    move-exception v3

    .line 310
    :goto_1a
    if-nez v2, :cond_3f

    .line 311
    const-string v3, "KeepaliveTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event for unknown keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 315
    :cond_3f
    if-nez v1, :cond_4c

    iget-boolean v3, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    if-nez v3, :cond_4c

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 319
    invoke-virtual {v2, v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    goto :goto_53

    .line 322
    :cond_4c
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 323
    nop

    .line 328
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 330
    :goto_53
    return-void
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 250
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 251
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v2

    .line 252
    .local v2, "slot":I
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    .line 254
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # I

    .line 257
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 258
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v0, :cond_2a

    .line 259
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 260
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 261
    .end local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    goto :goto_12

    .line 262
    :cond_22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_2a
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I
    .param p3, "reason"    # I

    .line 268
    if-nez p1, :cond_5

    const-string v0, "(null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "networkName":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 270
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v1, :cond_2a

    .line 271
    const-string v2, "KeepaliveTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to stop keepalive on nonexistent network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_2a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 275
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    if-nez v2, :cond_55

    .line 276
    const-string v3, "KeepaliveTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to stop nonexistent keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 279
    :cond_55
    invoke-virtual {v2, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 282
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_6a
    return-void
.end method

.method notifyMessenger(Landroid/os/Messenger;II)V
    .registers 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slot"    # I
    .param p3, "err"    # I

    .line 218
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "message":Landroid/os/Message;
    const v1, 0x8100d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 221
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 222
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    :try_start_10
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 227
    goto :goto_15

    .line 225
    :catch_14
    move-exception v1

    .line 228
    :goto_15
    return-void
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 22
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddrString"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    move-object v8, p0

    move-object/from16 v9, p3

    .line 334
    const/4 v1, -0x1

    if-nez p1, :cond_c

    .line 335
    const/16 v0, -0x14

    invoke-virtual {v8, v9, v1, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 336
    return-void

    .line 341
    :cond_c
    :try_start_c
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v10, v0

    .line 342
    .local v10, "srcAddress":Ljava/net/InetAddress;
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_15} :catch_5d

    move-object v11, v0

    .line 346
    .local v11, "dstAddress":Ljava/net/InetAddress;
    nop

    .line 345
    nop

    .line 350
    const/16 v0, 0x1194

    move/from16 v12, p6

    :try_start_1c
    invoke-static {v10, v12, v11, v0}, Landroid/net/KeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/KeepalivePacketData;

    move-result-object v6
    :try_end_20
    .catch Landroid/net/KeepalivePacketData$InvalidPacketException; {:try_start_1c .. :try_end_20} :catch_55

    .line 355
    .local v6, "packet":Landroid/net/KeepalivePacketData;
    nop

    .line 354
    nop

    .line 356
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p4

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;I)V

    .line 357
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    const-string v1, "KeepaliveTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created keepalive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, v8, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x8100b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 360
    return-void

    .line 352
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v6    # "packet":Landroid/net/KeepalivePacketData;
    :catch_55
    move-exception v0

    move-object v2, v0

    .line 353
    .local v0, "e":Landroid/net/KeepalivePacketData$InvalidPacketException;
    iget v2, v0, Landroid/net/KeepalivePacketData$InvalidPacketException;->error:I

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 354
    return-void

    .line 343
    .end local v0    # "e":Landroid/net/KeepalivePacketData$InvalidPacketException;
    .end local v10    # "srcAddress":Ljava/net/InetAddress;
    .end local v11    # "dstAddress":Ljava/net/InetAddress;
    :catch_5d
    move-exception v0

    move/from16 v12, p6

    .line 344
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v2, -0x15

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    .line 345
    return-void
.end method
