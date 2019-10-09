.class public Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "FingerprintGestureDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureDispatcher"

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2


# instance fields
.field private final mCapturingClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareSupportsGestures:Z

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredReadOnlyExceptInHandler:Z


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V
    .registers 6
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 58
    const v0, 0x1120072

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 7
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 72
    const v0, 0x1120072

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 75
    iput-object p4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 178
    .local v3, "identity":J
    :try_start_a
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 179
    iput-boolean v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_17
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 183
    :goto_11
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    goto :goto_20

    .line 183
    :catchall_15
    move-exception v0

    goto :goto_21

    .line 180
    :catch_17
    move-exception v0

    .line 181
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_18
    const-string v2, "FingerprintGestureDispatcher"

    const-string v5, "Failed to register for fingerprint activity callbacks"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_11

    .line 185
    :goto_20
    return v1

    .line 183
    :goto_21
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 186
    .end local v3    # "identity":J
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4a

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 189
    .restart local v3    # "identity":J
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_39
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 193
    :goto_33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    goto :goto_42

    .line 193
    :catchall_37
    move-exception v0

    goto :goto_46

    .line 190
    :catch_39
    move-exception v0

    .line 191
    .restart local v0    # "re":Landroid/os/RemoteException;
    :try_start_3a
    const-string v5, "FingerprintGestureDispatcher"

    const-string v6, "Failed to unregister for fingerprint activity callbacks"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_37

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_33

    .line 195
    :goto_42
    iput-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 196
    .end local v3    # "identity":J
    nop

    .line 200
    return v2

    .line 193
    .restart local v3    # "identity":J
    :goto_46
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 197
    .end local v3    # "identity":J
    :cond_4a
    const-string v0, "FingerprintGestureDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 5

    .line 119
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 123
    .local v2, "identity":J
    :try_start_a
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_1b
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 127
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    return v0

    .line 127
    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 124
    :catch_1b
    move-exception v0

    .line 125
    .local v0, "re":Landroid/os/RemoteException;
    nop

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return v1
.end method

.method public onClientActiveChanged(Z)V
    .registers 6
    .param p1, "nonGestureFingerprintClientActive"    # Z

    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_5

    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 112
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    xor-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGestureDetectionActiveChanged(Z)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 115
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onFingerprintGesture(I)Z
    .registers 7
    .param p1, "fingerprintKeyCode"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 143
    monitor-exit v0

    return v2

    .line 145
    :cond_e
    packed-switch p1, :pswitch_data_40

    .line 163
    monitor-exit v0

    goto :goto_3b

    .line 155
    :pswitch_13
    const/4 v1, 0x1

    .line 157
    .local v1, "idForFingerprintGestureManager":I
    goto :goto_1c

    .line 159
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_15
    const/4 v1, 0x2

    .line 161
    .restart local v1    # "idForFingerprintGestureManager":I
    goto :goto_1c

    .line 151
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_17
    const/16 v1, 0x8

    .line 153
    .restart local v1    # "idForFingerprintGestureManager":I
    goto :goto_1c

    .line 147
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_1a
    const/4 v1, 0x4

    .line 149
    .restart local v1    # "idForFingerprintGestureManager":I
    nop

    .line 163
    :goto_1c
    nop

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v3, "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_3c

    .line 167
    nop

    .local v2, "i":I
    :goto_26
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 168
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGesture(I)V

    .line 167
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_26

    .line 170
    .end local v2    # "i":I
    :cond_39
    const/4 v0, 0x1

    return v0

    .line 163
    .end local v1    # "idForFingerprintGestureManager":I
    .end local v3    # "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    :goto_3b
    return v2

    .line 166
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1

    nop

    :pswitch_data_40
    .packed-switch 0x118
        :pswitch_1a
        :pswitch_17
        :pswitch_15
        :pswitch_13
    .end packed-switch
.end method

.method public updateClientList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "clientList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_8
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 90
    .local v2, "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    invoke-interface {v2}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 91
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 94
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 95
    iget-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-eqz v1, :cond_4d

    .line 96
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4d

    .line 99
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-nez v1, :cond_4d

    .line 100
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v1
.end method
