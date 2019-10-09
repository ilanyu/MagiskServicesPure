.class Lcom/miui/server/AccessController$WorkHandler;
.super Landroid/os/Handler;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AccessController;


# direct methods
.method public constructor <init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 161
    iput-object p1, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    invoke-virtual {v0}, Lcom/miui/server/AccessController;->updateWhiteList()V

    .line 172
    :goto_b
    return-void
.end method
