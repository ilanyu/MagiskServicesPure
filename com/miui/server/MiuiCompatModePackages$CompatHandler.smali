.class final Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 114
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    .line 115
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_5d

    .line 152
    :pswitch_6
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->updateCloudData()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$800(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5d

    .line 149
    :pswitch_c
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0}, Lcom/miui/server/MiuiCompatModePackages;->saveCutoutModeFile()V

    .line 150
    goto :goto_5d

    .line 146
    :pswitch_12
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0}, Lcom/miui/server/MiuiCompatModePackages;->saveSpecialModeFile()V

    .line 147
    goto :goto_5d

    .line 141
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 142
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleDontShowAgain()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$700(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5d

    .line 137
    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleOnAppLaunch(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miui/server/MiuiCompatModePackages;->access$600(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    .line 139
    goto :goto_5d

    .line 134
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_36
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleUnregisterObservers()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$500(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 135
    goto :goto_5d

    .line 131
    :pswitch_3c
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$400(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 132
    goto :goto_5d

    .line 125
    :pswitch_42
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->readCutoutModeConfig()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$000(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 126
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->readSpecialModeConfig()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$100(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 127
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->readPackagesConfig()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$200(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 128
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->readSuggestApps()V
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$300(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 129
    goto :goto_5d

    .line 122
    :pswitch_57
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0}, Lcom/miui/server/MiuiCompatModePackages;->saveCompatModes()V

    .line 123
    nop

    .line 155
    :cond_5d
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x64
        :pswitch_57
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_2c
        :pswitch_18
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
