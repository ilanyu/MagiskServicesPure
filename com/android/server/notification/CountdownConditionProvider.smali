.class public Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CountdownConditionProvider$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_CONDITION_ID:Ljava/lang/String; = "condition_id"

.field private static final REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mIsAlarm:Z

.field private final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/CountdownConditionProvider;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 46
    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 50
    iput-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$1;)V

    iput-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 58
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "new CountdownConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_19
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(JZI)Landroid/service/notification/Condition;
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # Z
    .param p3, "x2"    # I

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JZI)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static final newCondition(JZI)Landroid/service/notification/Condition;
    .registers 13
    .param p0, "time"    # J
    .param p2, "alarm"    # Z
    .param p3, "state"    # I

    .line 162
    new-instance v8, Landroid/service/notification/Condition;

    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v8
.end method

.method public static tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p0, "conditionUri"    # Landroid/net/Uri;

    .line 167
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 168
    .local v6, "time":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 170
    .local v8, "now":J
    const-wide/32 v4, 0xea60

    .line 171
    move-wide v0, v6

    move-wide v2, v8

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "span":Ljava/lang/CharSequence;
    const-string v1, "Scheduled for %s, %s in the future (%s), now=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 173
    invoke-static {v6, v7}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sub-long v4, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    invoke-static {v8, v9}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 172
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/CountdownConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 88
    const-string v0, "    CountdownConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 90
    const-string v0, "      mTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 91
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 63
    sget-object v0, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "id"    # Landroid/net/Uri;

    .line 68
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .registers 1

    .line 79
    return-void
.end method

.method public onConnected()V
    .registers 5

    .line 95
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 98
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 102
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 103
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    if-eqz v0, :cond_1a

    .line 105
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    .line 108
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 14
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 112
    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.CCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1b
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 114
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    .line 115
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 117
    .local v0, "alarms":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "condition_id"

    .line 118
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Landroid/content/Context;

    const/16 v3, 0x64

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 122
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 123
    iget-wide v3, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_c0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 125
    .local v10, "now":J
    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/32 v8, 0xea60

    .line 126
    move-wide v6, v10

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 127
    .local v3, "span":Ljava/lang/CharSequence;
    iget-wide v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v4, v4, v10

    const/4 v5, 0x0

    if-gtz v4, :cond_7a

    .line 129
    iget-wide v6, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    iget-boolean v4, p0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    invoke-static {v6, v7, v4, v5}, Lcom/android/server/notification/CountdownConditionProvider;->newCondition(JZI)Landroid/service/notification/Condition;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/CountdownConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_7f

    .line 132
    :cond_7a
    iget-wide v6, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 134
    :goto_7f
    sget-boolean v4, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v4, :cond_c0

    const-string v4, "ConditionProviders.CCP"

    const-string v6, "%s %s for %s, %s in the future (%s), now=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 136
    iget-wide v8, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_93

    const-string v8, "Not scheduling"

    goto :goto_95

    :cond_93
    const-string v8, "Scheduling"

    :goto_95
    aput-object v8, v7, v5

    const/4 v5, 0x1

    sget-object v8, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    aput-object v8, v7, v5

    const/4 v5, 0x2

    iget-wide v8, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    .line 137
    invoke-static {v8, v9}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x3

    iget-wide v8, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x4

    aput-object v3, v7, v5

    const/4 v5, 0x5

    invoke-static {v10, v11}, Lcom/android/server/notification/CountdownConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 134
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v3    # "span":Ljava/lang/CharSequence;
    .end local v10    # "now":J
    :cond_c0
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 144
    return-void
.end method
