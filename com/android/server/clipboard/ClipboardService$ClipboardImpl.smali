.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p2, "x1"    # Lcom/android/server/clipboard/ClipboardService$1;

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public clearPrimaryClip(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 265
    monitor-enter p0

    .line 266
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 267
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v1, v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 269
    monitor-exit p0

    return-void

    .line 271
    :cond_11
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 272
    .end local v0    # "callingUid":I
    monitor-exit p0

    .line 273
    return-void

    .line 272
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 277
    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v1, 0x1d

    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 278
    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 279
    # invokes: Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2b

    .line 282
    :cond_18
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    return-object v0

    .line 280
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 284
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v1, 0x1d

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 290
    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 291
    # invokes: Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2c

    .line 294
    :cond_19
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 295
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_2a

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    nop

    :cond_2a
    monitor-exit p0

    return-object v1

    .line 292
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v1

    .line 296
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 328
    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v1, 0x1d

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 329
    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 330
    # invokes: Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3b

    .line 333
    :cond_19
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 334
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_39

    .line 335
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 336
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_37

    const/4 v1, 0x1

    nop

    :cond_37
    monitor-exit p0

    return v1

    .line 338
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_39
    monitor-exit p0

    return v1

    .line 331
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_3b
    :goto_3b
    monitor-exit p0

    return v1

    .line 339
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v1, 0x1d

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 302
    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 303
    # invokes: Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_27

    .line 306
    :cond_19
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    nop

    :cond_25
    monitor-exit p0

    return v1

    .line 304
    :cond_27
    :goto_27
    monitor-exit p0

    return v1

    .line 307
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 238
    :catch_5
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 240
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :cond_11
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 323
    monitor-exit p0

    .line 324
    return-void

    .line 323
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 6
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 249
    monitor-enter p0

    .line 250
    if-eqz p1, :cond_27

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_27

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 254
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1e

    # invokes: Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z
    invoke-static {v1, v2, p2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_19
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # invokes: Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V
    invoke-static {v1, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    .line 259
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    .line 260
    .end local v0    # "callingUid":I
    monitor-exit p0

    .line 261
    return-void

    .line 260
    :catchall_25
    move-exception v0

    goto :goto_2f

    .line 251
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_25

    throw v0
.end method
