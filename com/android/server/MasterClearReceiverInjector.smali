.class Lcom/android/server/MasterClearReceiverInjector;
.super Ljava/lang/Object;
.source "MasterClearReceiverInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isFormatData()Z
    .registers 3

    .line 93
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "ro.miui.has_cust_partition"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "hast_cust":Ljava/lang/String;
    const-string v2, "encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2
.end method

.method static rebootFactoryReset(Landroid/content/Context;Z)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatSdcard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 32
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v6, "android.permission.MASTER_CLEAR"

    new-instance v7, Lcom/android/server/MasterClearReceiverInjector$1;

    invoke-direct {v7, v0}, Lcom/android/server/MasterClearReceiverInjector$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 45
    invoke-static {}, Lcom/android/server/MasterClearReceiverInjector;->isFormatData()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5c

    .line 46
    const-class v2, Landroid/os/RecoverySystem;

    const-string v6, "bootCommand"

    const-class v7, Ljava/lang/Void;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    new-array v8, v4, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--format_data\n--locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v8, v3, v4

    .line 46
    invoke-static {v2, v6, v7, v3}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto :goto_b7

    .line 48
    :cond_5c
    if-eqz p1, :cond_8b

    .line 49
    const-class v2, Landroid/os/RecoverySystem;

    const-string v6, "bootCommand"

    const-class v7, Ljava/lang/Void;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    new-array v8, v4, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--wipe_data_and_storage\n--locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v8, v3, v4

    .line 49
    invoke-static {v2, v6, v7, v3}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto :goto_b7

    .line 52
    :cond_8b
    const-class v2, Landroid/os/RecoverySystem;

    const-string v6, "bootCommand"

    const-class v7, Ljava/lang/Void;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    new-array v8, v4, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--wipe_data\n--locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v8, v3, v4

    .line 52
    invoke-static {v2, v6, v7, v3}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 55
    :goto_b7
    return-void
.end method

.method static rebootFactoryReset(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatSdcard"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 62
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v6, "android.permission.MASTER_CLEAR"

    new-instance v7, Lcom/android/server/MasterClearReceiverInjector$2;

    invoke-direct {v7, v0}, Lcom/android/server/MasterClearReceiverInjector$2;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 76
    if-eqz p1, :cond_42

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_data_and_storage\n--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "command":Ljava/lang/String;
    goto :goto_5b

    .line 79
    .end local v2    # "command":Ljava/lang/String;
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_data\n--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "command":Ljava/lang/String;
    :goto_5b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n--secure_pw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_75
    const-class v3, Landroid/os/RecoverySystem;

    const-string v4, "bootCommand"

    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    aput-object v2, v9, v7

    aput-object v9, v6, v8

    invoke-static {v3, v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 90
    return-void
.end method
