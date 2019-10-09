.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 171
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "userId":I
    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$000()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 178
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_30
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_b8

    goto :goto_6c

    :sswitch_3b
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v2, 0x4

    goto :goto_6c

    :sswitch_45
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move v2, v5

    goto :goto_6c

    :sswitch_4f
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move v2, v4

    goto :goto_6c

    :sswitch_59
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v2, 0x3

    goto :goto_6c

    :sswitch_63
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v2, 0x2

    :cond_6c
    :goto_6c
    packed-switch v2, :pswitch_data_ce

    .line 200
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_b6

    .line 196
    :pswitch_79
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 197
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    invoke-static {v2, p2, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 198
    goto :goto_b6

    .line 192
    :pswitch_8c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 193
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    invoke-static {v2, p2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 194
    goto :goto_b6

    .line 187
    :pswitch_9f
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 188
    :try_start_a6
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V
    invoke-static {v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 189
    monitor-exit v2

    .line 190
    goto :goto_b6

    .line 189
    :catchall_ad
    move-exception v3

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_ad

    throw v3

    .line 183
    :pswitch_b0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 184
    nop

    .line 203
    :goto_b6
    return-void

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x49d08e2b -> :sswitch_63
        -0x3bb3e592 -> :sswitch_59
        -0x33813a72 -> :sswitch_4f
        0x9780086 -> :sswitch_45
        0x4cef8b35 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_9f
        :pswitch_9f
        :pswitch_8c
        :pswitch_79
    .end packed-switch
.end method
