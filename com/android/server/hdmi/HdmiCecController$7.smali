.class Lcom/android/server/hdmi/HdmiCecController$7;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 593
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[S]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->access$500(I[B)[B

    move-result-object v0

    .line 598
    .local v0, "body":[B
    const/4 v2, 0x0

    .line 599
    .local v2, "i":I
    nop

    .line 601
    .local v1, "errorCode":I
    :goto_2b
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    # getter for: Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecController;->access$600(Lcom/android/server/hdmi/HdmiCecController;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 602
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v6

    .line 601
    # invokes: Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I
    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/server/hdmi/HdmiCecController;->access$700(JII[B)I

    move-result v1

    .line 603
    if-nez v1, :cond_44

    .line 604
    goto :goto_4a

    .line 606
    :cond_44
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    const/4 v4, 0x1

    if-lt v2, v4, :cond_7c

    .line 608
    .end local v2    # "i":I
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_4a
    move v3, v1

    .line 609
    .local v3, "finalError":I
    if-eqz v3, :cond_6d

    .line 610
    const-string v4, "HdmiCecController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_6d
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v4, :cond_7b

    .line 613
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v5, Lcom/android/server/hdmi/HdmiCecController$7$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 620
    :cond_7b
    return-void

    .line 599
    .end local v2    # "i":I
    .local v3, "i":I
    :cond_7c
    move v2, v3

    goto :goto_2b
.end method
