.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Ljava/lang/String;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationComparator;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-object p1
.end method

.method private isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 163
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 164
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 163
    :goto_17
    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 171
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 173
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_19
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 121
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 129
    return v1

    .line 132
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_10

    .line 133
    return v1

    .line 136
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    return v1
.end method

.method private isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 159
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v0

    return v0
.end method

.method private isOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 154
    const/16 v0, 0x40

    .line 155
    .local v0, "ongoingFlags":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .registers 26
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, p0

    .line 51
    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 52
    .local v2, "leftImportantColorized":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 54
    .local v3, "rightImportantColorized":Z
    const/4 v4, -0x1

    if-eq v2, v3, :cond_15

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v5

    mul-int/2addr v4, v5

    return v4

    .line 59
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    .line 60
    .local v5, "leftImportantOngoing":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    .line 62
    .local v6, "rightImportantOngoing":Z
    if-eq v5, v6, :cond_25

    .line 64
    invoke-static {v5, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v7

    mul-int/2addr v4, v7

    return v4

    .line 67
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 68
    .local v7, "leftMessaging":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 69
    .local v8, "rightMessaging":Z
    if-eq v7, v8, :cond_35

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v9

    mul-int/2addr v4, v9

    return v4

    .line 74
    :cond_35
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 75
    .local v9, "leftPeople":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    .line 76
    .local v10, "rightPeople":Z
    nop

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    .line 79
    .local v11, "contactAffinityComparison":I
    if-eqz v9, :cond_52

    if-eqz v10, :cond_52

    .line 81
    if-eqz v11, :cond_5a

    .line 82
    mul-int/2addr v4, v11

    return v4

    .line 84
    :cond_52
    if-eq v9, v10, :cond_5a

    .line 86
    invoke-static {v9, v10}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v12

    mul-int/2addr v4, v12

    return v4

    .line 89
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    .line 90
    .local v12, "leftImportance":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    .line 91
    .local v13, "rightImportance":I
    if-eq v12, v13, :cond_6a

    .line 93
    invoke-static {v12, v13}, Ljava/lang/Integer;->compare(II)I

    move-result v14

    mul-int/2addr v4, v14

    return v4

    .line 97
    :cond_6a
    if-eqz v11, :cond_6e

    .line 98
    mul-int/2addr v4, v11

    return v4

    .line 102
    :cond_6e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v14

    .line 103
    .local v14, "leftPackagePriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v15

    .line 104
    .local v15, "rightPackagePriority":I
    if-eq v14, v15, :cond_7f

    .line 106
    invoke-static {v14, v15}, Ljava/lang/Integer;->compare(II)I

    move-result v16

    mul-int v4, v4, v16

    return v4

    .line 109
    :cond_7f
    move-object/from16 v4, p1

    iget-object v0, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 110
    .local v0, "leftPriority":I
    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .end local v2    # "leftImportantColorized":Z
    .local v18, "leftImportantColorized":Z
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->priority:I

    .line 111
    .local v2, "rightPriority":I
    if-eq v0, v2, :cond_9e

    .line 113
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v16

    const/16 v17, -0x1

    mul-int v16, v16, v17

    return v16

    .line 117
    :cond_9e
    const/16 v17, -0x1

    move/from16 v20, v2

    move/from16 v19, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v2

    .end local v2    # "rightPriority":I
    .end local v3    # "rightImportantColorized":Z
    .local v19, "rightImportantColorized":Z
    .local v20, "rightPriority":I
    move/from16 v21, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    .end local v5    # "leftImportantOngoing":Z
    .local v21, "leftImportantOngoing":Z
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    mul-int v4, v17, v2

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 34
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method protected isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 150
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v0

    return v0
.end method

.method protected isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 141
    return v1

    .line 143
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_14
    return v1
.end method
