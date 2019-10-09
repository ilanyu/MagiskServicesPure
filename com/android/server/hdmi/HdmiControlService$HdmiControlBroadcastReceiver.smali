.class Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiControlBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiControlService$1;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method private getMenuLanguage()Ljava/lang/String;
    .registers 3

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 173
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2a

    .line 179
    :cond_25
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 177
    :cond_2a
    :goto_2a
    const-string v1, "chi"

    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$000(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ed8ea7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_42

    const v2, -0x56ac2893

    if-eq v1, v2, :cond_38

    const v2, 0x9780086

    if-eq v1, v2, :cond_2e

    const v2, 0x741706da

    if-eq v1, v2, :cond_24

    goto :goto_4c

    :cond_24
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x3

    goto :goto_4d

    :cond_2e
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x2

    goto :goto_4d

    :cond_38
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v4

    goto :goto_4d

    :cond_42
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v3

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v0, -0x1

    :goto_4d
    packed-switch v0, :pswitch_data_92

    goto :goto_90

    .line 164
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 165
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
    invoke-static {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$100(Lcom/android/server/hdmi/HdmiControlService;I)V

    goto :goto_90

    .line 158
    :pswitch_5f
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->getMenuLanguage()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 160
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    goto :goto_90

    .line 153
    .end local v0    # "language":Ljava/lang/String;
    :pswitch_75
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 154
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$200(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_90

    .line 148
    :pswitch_83
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->access$100(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 169
    :cond_90
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_83
        :pswitch_75
        :pswitch_5f
        :pswitch_51
    .end packed-switch
.end method
