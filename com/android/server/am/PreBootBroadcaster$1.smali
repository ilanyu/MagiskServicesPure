.class Lcom/android/server/am/PreBootBroadcaster$1;
.super Landroid/os/Handler;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreBootBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreBootBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/PreBootBroadcaster;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 126
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    # getter for: Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 130
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/NotificationManager;

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 132
    .local v1, "notifManager":Landroid/app/NotificationManager;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 133
    .local v2, "max":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 135
    .local v3, "index":I
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    packed-switch v4, :pswitch_data_ca

    goto/16 :goto_c9

    .line 176
    :pswitch_1d
    const-string v4, "PreBootBroadcaster"

    iget-object v6, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 177
    # getter for: Lcom/android/server/am/PreBootBroadcaster;->mUserId:I
    invoke-static {v6}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 176
    invoke-virtual {v1, v4, v5, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_c9

    .line 137
    :pswitch_2e
    const v4, 0x110b00ef

    .line 140
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 142
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.HelpTrampoline"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v7, "android.intent.extra.TEXT"

    const-string v8, "help_url_upgrading"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_58

    .line 149
    invoke-static {v0, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .local v7, "contentIntent":Landroid/app/PendingIntent;
    goto :goto_59

    .line 151
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    :cond_58
    const/4 v7, 0x0

    .line 154
    .restart local v7    # "contentIntent":Landroid/app/PendingIntent;
    :goto_59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_62

    move v10, v8

    goto :goto_65

    :cond_62
    mul-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v2

    :goto_65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "progressRatio":Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 156
    # getter for: Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x10807bd

    .line 158
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v11, 0x0

    .line 159
    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 160
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 161
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v12, 0x106016f

    .line 162
    invoke-virtual {v0, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 165
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 166
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 167
    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 168
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 169
    invoke-virtual {v10, v2, v3, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 170
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 171
    .local v8, "notif":Landroid/app/Notification;
    const-string v10, "PreBootBroadcaster"

    iget-object v11, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 172
    # getter for: Lcom/android/server/am/PreBootBroadcaster;->mUserId:I
    invoke-static {v11}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 171
    invoke-virtual {v1, v10, v5, v8, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 173
    nop

    .line 180
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "notif":Landroid/app/Notification;
    .end local v9    # "progressRatio":Ljava/lang/String;
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1d
    .end packed-switch
.end method
