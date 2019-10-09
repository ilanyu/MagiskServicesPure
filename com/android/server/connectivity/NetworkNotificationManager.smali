.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "t"    # Landroid/telephony/TelephonyManager;
    .param p3, "n"    # Landroid/app/NotificationManager;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 81
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    .line 83
    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    .line 88
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 87
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "i":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private static getIcon(I)I
    .registers 2
    .param p0, "transportType"    # I

    .line 104
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 105
    const v0, 0x10807bc

    goto :goto_a

    .line 106
    :cond_7
    const v0, 0x10807b8

    .line 104
    :goto_a
    return v0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 5
    .param p0, "transportType"    # I

    .line 94
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x107006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_b
    aget-object v2, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object v2

    .line 98
    :catch_e
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x1040411

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 296
    .local v0, "t":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_b
    const-string v1, "UNKNOWN"

    :goto_d
    return-object v1
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 4
    .param p0, "t"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 300
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 301
    return v0

    .line 303
    :cond_4
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 313
    return v0

    .line 311
    :pswitch_10
    const/4 v0, 0x1

    return v0

    .line 309
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 307
    :pswitch_14
    const/4 v0, 0x3

    return v0

    .line 305
    :pswitch_16
    const/4 v0, 0x4

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 5
    .param p0, "id"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 290
    const-string v0, "ConnectivityNotification:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 11
    .param p1, "id"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 250
    return-void

    .line 252
    :cond_9
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 255
    .local v1, "eventId":I
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string v3, "clearing notification tag=%s event=%s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 256
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 255
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_32} :catch_33

    .line 263
    goto :goto_49

    .line 260
    :catch_33
    move-exception v2

    .line 261
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to clear notification tag=%s event=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    .line 262
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 261
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_49
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 265
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 14
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 271
    if-eqz p1, :cond_1a

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 274
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p2

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_1d

    .line 276
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 278
    :goto_1d
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 29
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .param p6, "highPriority"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "tag":Ljava/lang/String;
    iget v6, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 136
    .local v6, "eventId":I
    if-eqz v4, :cond_34

    .line 137
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 138
    .local v0, "transportType":I
    iget-object v7, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "extraInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_28

    :cond_27
    move-object v8, v7

    .line 141
    .local v8, "name":Ljava/lang/String;
    :goto_28
    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_33

    return-void

    .line 142
    .end local v7    # "extraInfo":Ljava/lang/String;
    :cond_33
    goto :goto_36

    .line 144
    .end local v0    # "transportType":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_34
    const/4 v0, 0x0

    .line 145
    .restart local v0    # "transportType":I
    const/4 v8, 0x0

    .line 145
    .end local v0    # "transportType":I
    .local v7, "transportType":I
    .restart local v8    # "name":Ljava/lang/String;
    :goto_36
    move v7, v0

    .line 150
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 151
    .local v9, "previousEventId":I
    invoke-static {v9}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v10

    .line 152
    .local v10, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-le v0, v11, :cond_67

    .line 153
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string v11, "ignoring notification %s for network %s with existing notification %s"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v14

    .line 155
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v15

    aput-object v10, v12, v13

    .line 153
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 158
    :cond_67
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 161
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v14

    .line 163
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v15

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v13

    const/16 v16, 0x3

    aput-object v8, v12, v16

    const/16 v16, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v12, v16

    .line 161
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 169
    .local v11, "r":Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    move-result v12

    .line 170
    .local v12, "icon":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v13, 0x104073e

    if-ne v3, v0, :cond_b9

    if-ne v7, v15, :cond_b9

    .line 171
    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v14

    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "title":Ljava/lang/CharSequence;
    const v13, 0x104073f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, "details":Ljava/lang/CharSequence;
    :goto_b7
    goto/16 :goto_166

    .line 173
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_b9
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_d3

    if-ne v7, v15, :cond_d3

    .line 175
    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v14

    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v13, 0x104073f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_b7

    .line 177
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_d3
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_138

    .line 178
    const v13, 0x104040a

    packed-switch v7, :pswitch_data_238

    .line 191
    move v0, v15

    new-array v15, v0, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-virtual {v11, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 192
    .local v13, "title":Ljava/lang/CharSequence;
    new-array v15, v0, [Ljava/lang/Object;

    aput-object v8, v15, v14

    const v0, 0x104040b

    invoke-virtual {v11, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "details":Ljava/lang/CharSequence;
    nop

    .line 204
    move-object/from16 v21, v13

    move-object v13, v0

    move-object/from16 v0, v21

    goto :goto_166

    .line 180
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :pswitch_fc
    const v13, 0x1040734

    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v14

    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "title":Ljava/lang/CharSequence;
    new-array v13, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 182
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 181
    const v15, 0x104040b

    invoke-virtual {v11, v15, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "details":Ljava/lang/CharSequence;
    goto :goto_166

    .line 185
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :pswitch_121
    const/4 v0, 0x1

    new-array v15, v0, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-virtual {v11, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "title":Ljava/lang/CharSequence;
    iget-object v15, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "details":Ljava/lang/CharSequence;
    nop

    .line 204
    move-object v0, v13

    move-object v13, v15

    goto :goto_166

    .line 195
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v15    # "details":Ljava/lang/CharSequence;
    :cond_138
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_20f

    .line 196
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, "toTransport":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v13, v4, v14

    const v15, 0x104040e

    invoke-virtual {v11, v15, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v14

    const/16 v16, 0x1

    aput-object v0, v15, v16

    const v14, 0x104040f

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 201
    .end local v0    # "fromTransport":Ljava/lang/String;
    .local v13, "details":Ljava/lang/CharSequence;
    nop

    .line 204
    move-object v0, v4

    .line 204
    .end local v4    # "title":Ljava/lang/CharSequence;
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_166
    move-object v4, v0

    .line 207
    .end local v0    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    if-eqz p6, :cond_16c

    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_16e

    .line 208
    :cond_16c
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    :goto_16e
    move-object v15, v0

    .line 209
    .local v15, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    move/from16 v18, v9

    iget-object v9, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 209
    .end local v9    # "previousEventId":I
    .local v18, "previousEventId":I
    invoke-direct {v0, v9, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    move-object/from16 v19, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 210
    .end local v10    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .local v19, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v9, :cond_188

    .line 211
    const/4 v9, 0x1

    goto :goto_18a

    .line 210
    :cond_188
    nop

    .line 211
    const/4 v9, 0x0

    :goto_18a
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 213
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v10, 0x106016f

    .line 215
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 218
    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 219
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 220
    move-object/from16 v20, v4

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 222
    .local v4, "builder":Landroid/app/Notification$Builder;
    .local v20, "title":Ljava/lang/CharSequence;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_1ce

    .line 223
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1d1

    .line 225
    :cond_1ce
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 228
    :goto_1d1
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_1e1

    .line 229
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v15}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 232
    :cond_1e1
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 234
    .local v10, "notification":Landroid/app/Notification;
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1fd

    :try_start_1ed
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_1fd

    .line 239
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p5 .. p5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2, v8}, Lcom/android/server/connectivity/NetworkNotificationManagerInjector;->showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_204

    .line 243
    :catch_1fb
    move-exception v0

    goto :goto_205

    .line 241
    :cond_1fd
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v10, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_204
    .catch Ljava/lang/NullPointerException; {:try_start_1ed .. :try_end_204} :catch_1fb

    .line 245
    :goto_204
    goto :goto_20e

    .line 243
    :goto_205
    nop

    .line 244
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setNotificationVisible: visible notificationManager error"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_20e
    return-void

    .line 202
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v13    # "details":Ljava/lang/CharSequence;
    .end local v15    # "channelId":Ljava/lang/String;
    .end local v18    # "previousEventId":I
    .end local v19    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .end local v20    # "title":Ljava/lang/CharSequence;
    .restart local v9    # "previousEventId":I
    .local v10, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    :cond_20f
    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v9, p5

    .line 202
    .end local v9    # "previousEventId":I
    .end local v10    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .restart local v18    # "previousEventId":I
    .restart local v19    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_121
        :pswitch_fc
    .end packed-switch
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 281
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "toTransport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v5, 0x1040410

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    return-void
.end method
