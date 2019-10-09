.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/ViewServer;
    .param p2, "client"    # Ljava/net/Socket;

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 218
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "out":Ljava/io/BufferedWriter;
    :try_start_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 299
    :goto_1b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_58

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "needWindowListUpdate":Z
    const/4 v2, 0x0

    .line 302
    .local v2, "needFocusedWindowUpdate":Z
    monitor-enter p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_71
    .catchall {:try_start_a .. :try_end_24} :catchall_5f

    .line 303
    :goto_24
    :try_start_24
    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v3, :cond_30

    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v3, :cond_30

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_24

    .line 306
    :cond_30
    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_38

    .line 307
    iput-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 308
    const/4 v1, 0x1

    .line 310
    :cond_38
    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v3, :cond_3f

    .line 311
    iput-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 312
    const/4 v2, 0x1

    .line 314
    :cond_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_55

    .line 315
    if-eqz v1, :cond_4a

    .line 316
    :try_start_42
    const-string v3, "LIST UPDATE\n"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    :cond_4a
    if-eqz v2, :cond_54

    .line 320
    const-string v3, "ACTION_FOCUS UPDATE\n"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_54} :catch_71
    .catchall {:try_start_42 .. :try_end_54} :catchall_5f

    .line 323
    .end local v1    # "needWindowListUpdate":Z
    .end local v2    # "needFocusedWindowUpdate":Z
    :cond_54
    goto :goto_1b

    .line 314
    .restart local v1    # "needWindowListUpdate":Z
    .restart local v2    # "needFocusedWindowUpdate":Z
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_71
    .catchall {:try_start_57 .. :try_end_58} :catchall_5f

    .line 327
    .end local v1    # "needWindowListUpdate":Z
    .end local v2    # "needFocusedWindowUpdate":Z
    :cond_58
    nop

    .line 329
    :try_start_59
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_77

    .line 330
    :catch_5d
    move-exception v1

    goto :goto_79

    .line 327
    :catchall_5f
    move-exception v1

    if-eqz v0, :cond_67

    .line 329
    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 332
    goto :goto_67

    .line 330
    :catch_66
    move-exception v2

    .line 334
    :cond_67
    :goto_67
    iget-object v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    throw v1

    .line 324
    :catch_71
    move-exception v1

    .line 327
    if-eqz v0, :cond_79

    .line 329
    :try_start_74
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    .line 332
    :goto_77
    goto :goto_79

    .line 330
    :catch_78
    move-exception v1

    .line 334
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 335
    nop

    .line 336
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    .line 288
    monitor-enter p0

    .line 289
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 10

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v1

    .line 226
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "request":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 232
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    .line 233
    move-object v3, v1

    .line 234
    .local v3, "command":Ljava/lang/String;
    const-string v4, ""

    .local v4, "parameters":Ljava/lang/String;
    goto :goto_30

    .line 236
    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "parameters":Ljava/lang/String;
    :cond_25
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "command":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    .restart local v4    # "parameters":Ljava/lang/String;
    :goto_30
    const-string v5, "PROTOCOL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 242
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v6, "4"

    # invokes: Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v5

    .local v5, "result":Z
    :goto_40
    goto :goto_95

    .line 243
    .end local v5    # "result":Z
    :cond_41
    const-string v5, "SERVER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 244
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v6, "4"

    # invokes: Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v5

    goto :goto_40

    .line 245
    :cond_52
    const-string v5, "LIST"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 246
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v5

    goto :goto_40

    .line 247
    :cond_67
    const-string v5, "GET_FOCUS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 248
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v5

    goto :goto_40

    .line 249
    :cond_7c
    const-string v5, "AUTOLIST"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 250
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v5

    goto :goto_40

    .line 252
    :cond_89
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 256
    .restart local v5    # "result":Z
    :goto_95
    if-nez v5, :cond_ad

    .line 257
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "An error occurred with the command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_ad} :catch_c7
    .catchall {:try_start_1 .. :try_end_ad} :catchall_c5

    .line 262
    .end local v1    # "request":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "parameters":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_ad
    nop

    .line 264
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    .line 268
    goto :goto_b6

    .line 266
    :catch_b2
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :goto_b6
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_e3

    .line 272
    :try_start_ba
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bf} :catch_c0

    goto :goto_c4

    .line 273
    :catch_c0
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :goto_c4
    goto :goto_e3

    .line 262
    :catchall_c5
    move-exception v1

    goto :goto_e4

    .line 259
    :catch_c7
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_c8
    const-string v2, "WindowManager"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_c5

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_d9

    .line 264
    :try_start_d1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    .line 268
    goto :goto_d9

    .line 266
    :catch_d5
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :cond_d9
    :goto_d9
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_e3

    .line 272
    :try_start_dd
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_c0

    goto :goto_c4

    .line 278
    :cond_e3
    :goto_e3
    return-void

    .line 262
    :goto_e4
    if-eqz v0, :cond_ee

    .line 264
    :try_start_e6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    .line 268
    goto :goto_ee

    .line 266
    :catch_ea
    move-exception v2

    .line 267
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    :cond_ee
    :goto_ee
    iget-object v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_fc

    .line 272
    :try_start_f2
    iget-object v2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f7} :catch_f8

    .line 275
    goto :goto_fc

    .line 273
    :catch_f8
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    .end local v2    # "e":Ljava/io/IOException;
    :cond_fc
    :goto_fc
    throw v1
.end method

.method public windowsChanged()V
    .registers 2

    .line 281
    monitor-enter p0

    .line 282
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
