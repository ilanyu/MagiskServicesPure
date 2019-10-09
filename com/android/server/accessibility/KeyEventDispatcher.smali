.class public Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;,
        Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "KeyEventDispatcher"

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x1

.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field private mKeyEventTimeoutHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMessageTypeForSendKeyEvent:I

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V
    .registers 8
    .param p1, "handlerToSendKeyEventsToInputFilter"    # Landroid/os/Handler;
    .param p2, "messageTypeForSendKeyEvent"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "powerManager"    # Landroid/os/PowerManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 86
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 87
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    goto :goto_2b

    .line 90
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 92
    :goto_2b
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 93
    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    .line 95
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 97
    iput-object p4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;Landroid/os/Handler;)V
    .registers 6
    .param p1, "handlerToSendKeyEventsToInputFilter"    # Landroid/os/Handler;
    .param p2, "messageTypeForSendKeyEvent"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "powerManager"    # Landroid/os/PowerManager;
    .param p5, "timeoutHandler"    # Landroid/os/Handler;

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    .line 109
    iput-object p5, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 223
    .local v0, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-nez v0, :cond_11

    .line 224
    new-instance v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher$1;)V

    move-object v0, v1

    .line 226
    :cond_11
    iput-object p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 227
    iput p2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    .line 228
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 229
    iput-boolean v1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 230
    return-object v0
.end method

.method private static removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .registers 5
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;I)",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;"
        }
    .end annotation

    .line 236
    .local p0, "listOfEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 237
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 238
    .local v1, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    return-object v1

    .line 236
    .end local v1    # "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .registers 8
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 258
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_a

    .line 259
    return v2

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 262
    iget-boolean v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez v0, :cond_31

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_1e

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 270
    :cond_1e
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    .line 271
    .local v0, "policyFlags":I
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    iget-object v5, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 272
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 274
    .end local v0    # "policyFlags":I
    goto :goto_36

    .line 275
    :cond_31
    iget-object v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 277
    :goto_36
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 278
    return v1
.end method


# virtual methods
.method public flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V
    .registers 6
    .param p1, "keyEventFilter"    # Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 192
    .local v1, "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-eqz v1, :cond_25

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 195
    .local v3, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 193
    .end local v3    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 197
    .end local v2    # "i":I
    :cond_20
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v1    # "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_25
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 205
    const-string v0, "KeyEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 209
    .local v0, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_26
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 211
    .local v4, "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 212
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 213
    goto :goto_4a

    .line 216
    .end local v4    # "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_49
    goto :goto_30

    .line 217
    :cond_4a
    :goto_4a
    monitor-exit v2

    .line 218
    return v1

    .line 217
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            ">;)Z"
        }
    .end annotation

    .line 128
    .local p3, "keyEventFilters":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 130
    .local v1, "localClone":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_45

    .line 131
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .line 132
    .local v4, "keyEventFilter":Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v6

    invoke-interface {v4, v1, v6}, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;->onKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 133
    if-nez v3, :cond_25

    .line 134
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v3

    .line 136
    :cond_25
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 137
    .local v6, "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-nez v6, :cond_3a

    .line 138
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 139
    iget-object v7, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget v7, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    add-int/2addr v7, v5

    iput v7, v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 130
    .end local v4    # "keyEventFilter":Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    .end local v6    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 146
    .end local v0    # "i":I
    :cond_45
    if-nez v3, :cond_4b

    .line 147
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 148
    return v2

    .line 151
    :cond_4b
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    return v5
.end method

.method public setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    .registers 13
    .param p1, "keyEventFilter"    # Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    .param p2, "handled"    # Z
    .param p3, "sequence"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 167
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v1

    .line 168
    .local v1, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-eqz v1, :cond_36

    .line 169
    if-eqz p2, :cond_33

    iget-boolean v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez v2, :cond_33

    .line 170
    iput-boolean p2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_38

    .line 173
    .local v2, "identity":J
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 176
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    goto :goto_33

    .line 176
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 179
    .end local v2    # "identity":J
    :cond_33
    :goto_33
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 181
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_36
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    throw v1
.end method
