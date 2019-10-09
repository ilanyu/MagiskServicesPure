.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field private static final MESSAGE_ADB_ALLOW:I = 0x3

.field private static final MESSAGE_ADB_CLEAR:I = 0x6

.field private static final MESSAGE_ADB_CONFIRM:I = 0x5

.field private static final MESSAGE_ADB_DENY:I = 0x4

.field private static final MESSAGE_ADB_DISABLED:I = 0x2

.field private static final MESSAGE_ADB_ENABLED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 208
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_12e

    goto/16 :goto_12c

    .line 287
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$700(Lcom/android/server/usb/UsbDebuggingManager;)V

    goto/16 :goto_12c

    .line 265
    :pswitch_f
    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    .line 266
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 267
    const-string v0, "UsbDebuggingManager"

    const-string v1, "Deferring adb confirmation until after vold decrypt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 269
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 273
    :cond_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "fingerprints":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 276
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v2

    if-eqz v2, :cond_12c

    .line 277
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v2

    const-string v3, "NO"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 281
    :cond_62
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$402(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->startConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    goto/16 :goto_12c

    .line 259
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "fingerprints":Ljava/lang/String;
    :pswitch_74
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 260
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 239
    :pswitch_89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 240
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "fingerprints":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 243
    const-string v1, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprints do not match. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 244
    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_12c

    .line 248
    :cond_c4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_cd

    .line 249
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # invokes: Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    .line 252
    :cond_cd
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 253
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto :goto_12c

    .line 226
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "fingerprints":Ljava/lang/String;
    :pswitch_e1
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 227
    goto :goto_12c

    .line 229
    :cond_ea
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 231
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 232
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->stopListening()V

    .line 233
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$202(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    goto :goto_12c

    .line 215
    :pswitch_108
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$100(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 216
    goto :goto_12c

    .line 218
    :cond_111
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$102(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    .line 220
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    new-instance v1, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;-><init>(Lcom/android/server/usb/UsbDebuggingManager;)V

    # setter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$202(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    .line 221
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mThread:Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->start()V

    .line 223
    nop

    .line 290
    :cond_12c
    :goto_12c
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_108
        :pswitch_e1
        :pswitch_89
        :pswitch_74
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
