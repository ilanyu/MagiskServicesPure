.class Lcom/android/server/notification/NotificationManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 7126
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .line 7126
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 7139
    if-nez p1, :cond_7

    .line 7140
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 7142
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 7144
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_15a

    goto :goto_68

    :sswitch_16
    const-string v2, "allow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x4

    goto :goto_69

    :sswitch_20
    const-string v2, "disallow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x3

    goto :goto_69

    :sswitch_2a
    const-string/jumbo v2, "suspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x6

    goto :goto_69

    :sswitch_35
    const-string v2, "allow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    move v2, v1

    goto :goto_69

    :sswitch_3f
    const-string v2, "disallow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    move v2, v4

    goto :goto_69

    :sswitch_49
    const-string v2, "allow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x2

    goto :goto_69

    :sswitch_53
    const-string/jumbo v2, "unsuspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x7

    goto :goto_69

    :sswitch_5e
    const-string v2, "disallow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x5

    goto :goto_69

    :cond_68
    :goto_68
    move v2, v3

    :goto_69
    packed-switch v2, :pswitch_data_17c

    .line 7215
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_137

    .line 7211
    :pswitch_72
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 7213
    goto/16 :goto_136

    .line 7206
    :pswitch_7d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 7208
    goto/16 :goto_136

    .line 7196
    :pswitch_88
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 7197
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_98

    .line 7198
    const-string v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7199
    return v3

    .line 7201
    :cond_98
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 7203
    .end local v2    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_136

    .line 7187
    :pswitch_a3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 7188
    .restart local v2    # "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_b3

    .line 7189
    const-string v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7190
    return v3

    .line 7192
    :cond_b3
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 7194
    .end local v2    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_136

    .line 7172
    :pswitch_be
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 7173
    .restart local v2    # "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_ce

    .line 7174
    const-string v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7175
    return v3

    .line 7177
    :cond_ce
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 7178
    .local v3, "userId":Ljava/lang/String;
    if-nez v3, :cond_de

    .line 7179
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_eb

    .line 7181
    :cond_de
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 7182
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 7181
    invoke-interface {v4, v2, v5, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 7185
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "userId":Ljava/lang/String;
    :goto_eb
    goto :goto_136

    .line 7157
    :pswitch_ec
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 7158
    .restart local v2    # "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_fc

    .line 7159
    const-string v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7160
    return v3

    .line 7162
    :cond_fc
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 7163
    .restart local v3    # "userId":Ljava/lang/String;
    if-nez v3, :cond_10c

    .line 7164
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_119

    .line 7166
    :cond_10c
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    .line 7167
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 7166
    invoke-interface {v5, v2, v6, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 7170
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "userId":Ljava/lang/String;
    :goto_119
    goto :goto_136

    .line 7152
    :pswitch_11a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 7153
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7152
    invoke-interface {v2, v3, v1}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 7155
    goto :goto_136

    .line 7146
    :pswitch_128
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 7147
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7146
    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_135} :catch_138

    .line 7149
    nop

    .line 7220
    :goto_136
    goto :goto_158

    .line 7215
    :goto_137
    return v2

    .line 7217
    :catch_138
    move-exception v2

    .line 7218
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred. Check logcat for details. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7219
    const-string v3, "NotificationService"

    const-string v4, "Error running shell command"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7221
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_158
    return v1

    nop

    :sswitch_data_15a
    .sparse-switch
        -0x4f05a8e6 -> :sswitch_5e
        -0x1e34b476 -> :sswitch_53
        -0x19cf0b16 -> :sswitch_49
        -0x199eb9aa -> :sswitch_3f
        0x16318b24 -> :sswitch_35
        0x177b7f43 -> :sswitch_2a
        0x4af068f8 -> :sswitch_20
        0x7dcb4968 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_128
        :pswitch_11a
        :pswitch_ec
        :pswitch_be
        :pswitch_a3
        :pswitch_88
        :pswitch_7d
        :pswitch_72
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 7226
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7227
    return-void
.end method
