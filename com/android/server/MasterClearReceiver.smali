.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 48
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 49
    const-string v0, "google.com"

    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 50
    const-string v0, "MasterClear"

    const-string v1, "Ignoring master clear request -- not from trusted server."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 54
    :cond_22
    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 55
    const-string v0, "MasterClear"

    const-string v1, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_35
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 59
    const-string v0, "MasterClear"

    const-string v1, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_44
    const-string/jumbo v0, "shutdown"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "shutdown":Z
    const-string v2, "android.intent.extra.REASON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 66
    const-string v3, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 67
    const-string v3, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "android.intent.extra.FORCE_FACTORY_RESET"

    .line 68
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_73

    goto :goto_75

    :cond_73
    move v3, v1

    goto :goto_76

    :cond_75
    :goto_75
    const/4 v3, 0x1

    .line 70
    .local v3, "forceWipe":Z
    :goto_76
    const-string v4, "MasterClear"

    const-string v5, "!!! FACTORY RESET !!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v4, Lcom/android/server/MasterClearReceiver$1;

    const-string v5, "Reboot"

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    .local v4, "thr":Ljava/lang/Thread;
    iget-boolean v5, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v5, :cond_91

    iget-boolean v5, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v5, :cond_8d

    goto :goto_91

    .line 93
    :cond_8d
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_9b

    .line 91
    :cond_91
    :goto_91
    new-instance v5, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v5, v1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    :goto_9b
    return-void
.end method
