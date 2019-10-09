.class final Lcom/android/server/notification/CountdownConditionProvider$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/CountdownConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/CountdownConditionProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/CountdownConditionProvider;
    .param p2, "x1"    # Lcom/android/server/notification/CountdownConditionProvider$1;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 149
    # getter for: Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 150
    const-string v0, "condition_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 151
    .local v0, "conditionId":Landroid/net/Uri;
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v1

    .line 152
    .local v1, "alarm":Z
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 153
    .local v2, "time":J
    # getter for: Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "ConditionProviders.CCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Countdown condition fired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3a
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4a

    .line 155
    iget-object v4, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JZI)Landroid/service/notification/Condition;
    invoke-static {v2, v3, v1, v5}, Lcom/android/server/notification/CountdownConditionProvider;->access$300(JZI)Landroid/service/notification/Condition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/CountdownConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 158
    .end local v0    # "conditionId":Landroid/net/Uri;
    .end local v1    # "alarm":Z
    .end local v2    # "time":J
    :cond_4a
    return-void
.end method
