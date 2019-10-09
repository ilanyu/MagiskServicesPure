.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 48
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$1;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagingUtil"    # Lcom/android/internal/util/NotificationMessagingUtil;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 63
    return-void
.end method

.method private static audienceMatches(IF)Z
    .registers 6
    .param p0, "source"    # I
    .param p1, "contactAffinity"    # F

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_30

    .line 276
    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v1

    .line 274
    :pswitch_1c
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_24

    move v0, v1

    nop

    :cond_24
    return v0

    .line 272
    :pswitch_25
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2d

    move v0, v1

    nop

    :cond_2d
    return v0

    .line 270
    :pswitch_2e
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 112
    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 113
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 112
    :goto_18
    return-object v0
.end method

.method protected static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 223
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x4

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 223
    :goto_13
    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_35

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 256
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 257
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_35
    if-eqz p1, :cond_49

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 260
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    .line 259
    :goto_4a
    return v0
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 228
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 232
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    return v0

    .line 96
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    return v0

    .line 97
    :cond_9
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2b

    .line 98
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # invokes: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    invoke-static {v2, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 99
    return v1

    .line 101
    :cond_19
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v2, :cond_1e

    return v0

    .line 102
    :cond_1e
    if-eqz p5, :cond_2b

    .line 103
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 105
    .local v0, "contactAffinity":F
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v1

    return v1

    .line 108
    .end local v0    # "contactAffinity":F
    :cond_2b
    return v1
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "source"    # I
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 215
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v0

    if-nez v0, :cond_11

    .line 216
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 69
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    monitor-enter v0

    .line 70
    :try_start_22
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    .line 72
    .local v1, "i":I
    :goto_37
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeInjector;->hideNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v2, " at "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 79
    .end local v1    # "i":I
    :cond_7d
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_22 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 236
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "call"

    .line 237
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 236
    :goto_19
    return v0
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 241
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 242
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_15

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method protected isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 264
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 247
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 248
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_15

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method protected recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 117
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 122
    return v0

    .line 125
    :cond_4
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "android"

    iget-object v2, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 126
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x30

    iget-object v2, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 127
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 128
    const-string/jumbo v1, "systemDndChangedNotification"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 129
    return v0

    .line 131
    :cond_2b
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_f8

    .line 210
    return v0

    .line 137
    :pswitch_30
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 139
    return v0

    .line 141
    :cond_37
    const-string v0, "alarmsOnly"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 142
    return v1

    .line 134
    :pswitch_3d
    const-string/jumbo v0, "none"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 135
    return v1

    .line 147
    :pswitch_44
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_56

    .line 149
    const-string/jumbo v1, "priorityApp"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 150
    return v0

    .line 153
    :cond_56
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 154
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v2, :cond_66

    .line 155
    const-string v0, "!allowAlarms"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 156
    return v1

    .line 158
    :cond_66
    return v0

    .line 160
    :cond_67
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 161
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_86

    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v4

    # invokes: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 163
    const-string/jumbo v1, "repeatCaller"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 164
    return v0

    .line 166
    :cond_86
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_90

    .line 167
    const-string v0, "!allowCalls"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 168
    return v1

    .line 170
    :cond_90
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 172
    :cond_97
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 173
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_a7

    .line 174
    const-string v0, "!allowMessages"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 175
    return v1

    .line 177
    :cond_a7
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 179
    :cond_ae
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 180
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_be

    .line 181
    const-string v0, "!allowEvents"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 182
    return v1

    .line 184
    :cond_be
    return v0

    .line 186
    :cond_bf
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 187
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-nez v2, :cond_cf

    .line 188
    const-string v0, "!allowReminders"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 189
    return v1

    .line 191
    :cond_cf
    return v0

    .line 193
    :cond_d0
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 194
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-nez v2, :cond_e0

    .line 195
    const-string v0, "!allowMedia"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_e0
    return v0

    .line 200
    :cond_e1
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 201
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-nez v2, :cond_f1

    .line 202
    const-string v0, "!allowSystem"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 203
    return v1

    .line 205
    :cond_f1
    return v0

    .line 207
    :cond_f2
    const-string v0, "!priority"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 208
    return v1

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method
