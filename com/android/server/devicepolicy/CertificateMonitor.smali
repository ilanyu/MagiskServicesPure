.class public Lcom/android/server/devicepolicy/CertificateMonitor;
.super Ljava/lang/Object;
.source "CertificateMonitor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field protected static final MONITORING_CERT_NOTIFICATION_ID:I = 0x21


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field private final mRootCaReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 92
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "injector"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/devicepolicy/CertificateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 65
    iput-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 66
    iput-object p3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 75
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/CertificateMonitor;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;
    .registers 22
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "pendingCertificateCount"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 173
    move/from16 v3, p2

    :try_start_6
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_f7

    .line 177
    .local v0, "userContext":Landroid/content/Context;
    nop

    .line 176
    nop

    .line 179
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 183
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 185
    .local v4, "parentUserId":I
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x1040664

    const/4 v12, 0x0

    if-eqz v5, :cond_4b

    .line 186
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 186
    invoke-virtual {v11, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "contentText":Ljava/lang/String;
    const v6, 0x10807db

    .line 189
    .local v6, "smallIconId":I
    iget-object v7, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v4

    .line 197
    .end local v4    # "parentUserId":I
    .end local v5    # "contentText":Ljava/lang/String;
    .local v13, "parentUserId":I
    .local v14, "contentText":Ljava/lang/String;
    :goto_48
    move v13, v4

    move-object v14, v5

    goto :goto_7e

    .line 190
    .end local v6    # "smallIconId":I
    .end local v13    # "parentUserId":I
    .end local v14    # "contentText":Ljava/lang/String;
    .restart local v4    # "parentUserId":I
    :cond_4b
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v5, v8, :cond_73

    .line 191
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "ownerName":Ljava/lang/String;
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 193
    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    .line 192
    invoke-virtual {v11, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "contentText":Ljava/lang/String;
    const v5, 0x10807db

    .line 195
    .local v5, "smallIconId":I
    nop

    .line 197
    move v13, v4

    move-object v14, v6

    move v6, v5

    goto :goto_7e

    .line 196
    .end local v5    # "smallIconId":I
    .end local v6    # "contentText":Ljava/lang/String;
    :cond_73
    const v5, 0x1040663

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "contentText":Ljava/lang/String;
    const v6, 0x108008a

    goto :goto_48

    .end local v4    # "parentUserId":I
    .end local v5    # "contentText":Ljava/lang/String;
    .local v6, "smallIconId":I
    .restart local v13    # "parentUserId":I
    .restart local v14    # "contentText":Ljava/lang/String;
    :goto_7e
    move v15, v6

    .line 201
    .end local v6    # "smallIconId":I
    .local v15, "smallIconId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    .line 202
    .local v10, "dialogIntent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v4, "android.settings.extra.number_of_certificates"

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 208
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    .line 207
    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 209
    .local v9, "targetInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_b0

    .line 210
    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    :cond_b0
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    const/16 v16, 0x0

    .line 215
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    .line 213
    move-object v5, v0

    move-object v7, v10

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    .end local v9    # "targetInfo":Landroid/content/pm/ActivityInfo;
    .local v18, "targetInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v16, v10

    move-object/from16 v10, v17

    .end local v10    # "dialogIntent":Landroid/content/Intent;
    .local v16, "dialogIntent":Landroid/content/Intent;
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 217
    .local v4, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x115001b

    .line 219
    invoke-virtual {v11, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 221
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 222
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x106016f

    .line 224
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 225
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 217
    return-object v5

    .line 174
    .end local v0    # "userContext":Landroid/content/Context;
    .end local v4    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "parentUserId":I
    .end local v14    # "contentText":Ljava/lang/String;
    .end local v15    # "smallIconId":I
    .end local v16    # "dialogIntent":Landroid/content/Intent;
    .end local v18    # "targetInfo":Landroid/content/pm/ActivityInfo;
    :catch_f7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DevicePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create context as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v4, 0x0

    return-object v4
.end method

.method public static synthetic lambda$onCertificateApprovalsChanged$0(Lcom/android/server/devicepolicy/CertificateMonitor;I)V
    .registers 3
    .param p1, "userId"    # I

    .line 127
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 229
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 230
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private updateInstalledCertificates(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 145
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 146
    return-void

    .line 151
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_15} :catch_4c

    .line 155
    .local v0, "installedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 154
    nop

    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onInstalledCertificatesChanged(Landroid/os/UserHandle;Ljava/util/Collection;)V

    .line 158
    nop

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAcceptedCaCertificates(Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 160
    .local v1, "pendingCertificateCount":I
    const/16 v2, 0x21

    if-eqz v1, :cond_40

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;

    move-result-object v3

    .line 162
    .local v3, "noti":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    invoke-virtual {v4, v5, v2, v3, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 164
    .end local v3    # "noti":Landroid/app/Notification;
    goto :goto_4b

    .line 165
    :cond_40
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "DevicePolicyManager"

    invoke-virtual {v3, v4, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 168
    :goto_4b
    return-void

    .line 152
    .end local v0    # "installedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "pendingCertificateCount":I
    :catch_4c
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DevicePolicyManager"

    const-string v2, "Could not retrieve certificates from KeyChain service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method


# virtual methods
.method public getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_2f
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_7} :catch_28

    .line 117
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_7
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_1c
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 118
    if-eqz v1, :cond_18

    :try_start_15
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_2f
    .catch Ljava/lang/AssertionError; {:try_start_15 .. :try_end_18} :catch_28

    .line 117
    :cond_18
    return-object v2

    .line 118
    :catchall_19
    move-exception v2

    move-object v3, v0

    goto :goto_22

    .line 116
    :catch_1c
    move-exception v2

    :try_start_1d
    throw v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 118
    :catchall_1e
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_27
    throw v2
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_28} :catch_2f
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_28} :catch_28

    .line 121
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    :catch_28
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_2f
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 120
    return-object v0
.end method

.method public installCaCert(Landroid/os/UserHandle;[B)Ljava/lang/String;
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "certBuffer"    # [B

    .line 83
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/android/server/devicepolicy/CertificateMonitor;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 84
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_4f

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    move-object v1, v2

    .line 88
    .local v1, "pemCert":[B
    nop

    .line 87
    nop

    .line 90
    :try_start_12
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_45
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_18} :catch_35

    .line 91
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_18
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_20} :catch_29
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    .line 92
    if-eqz v2, :cond_25

    :try_start_22
    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_45
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_35

    .line 91
    :cond_25
    return-object v3

    .line 92
    :catchall_26
    move-exception v3

    move-object v4, v0

    goto :goto_2f

    .line 90
    :catch_29
    move-exception v3

    :try_start_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 92
    :catchall_2b
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_34
    throw v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_45
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_35} :catch_35

    .line 94
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_35
    move-exception v2

    .line 95
    .local v2, "e1":Ljava/lang/InterruptedException;
    const-string v3, "DevicePolicyManager"

    const-string v4, "installCaCertsToKeyChain(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .end local v2    # "e1":Ljava/lang/InterruptedException;
    goto :goto_4e

    .line 92
    :catch_45
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DevicePolicyManager"

    const-string v4, "installCaCertsToKeyChain(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 98
    :goto_4e
    return-object v0

    .line 85
    .end local v1    # "pemCert":[B
    :catch_4f
    move-exception v1

    .line 86
    .local v1, "ce":Ljava/lang/Exception;
    const-string v2, "DevicePolicyManager"

    const-string v3, "Problem converting cert"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return-object v0
.end method

.method public onCertificateApprovalsChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 127
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public uninstallCaCerts(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "aliases"    # [Ljava/lang/String;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_6} :catch_27

    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v1, 0x0

    .line 103
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    :try_start_8
    array-length v3, p2

    if-ge v2, v3, :cond_17

    .line 104
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_1f
    .catchall {:try_start_8 .. :try_end_14} :catchall_1d

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 106
    .end local v2    # "i":I
    :cond_17
    if-eqz v0, :cond_3f

    :try_start_19
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_27

    goto :goto_3f

    :catchall_1d
    move-exception v2

    goto :goto_21

    .line 102
    :catch_1f
    move-exception v1

    :try_start_20
    throw v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 106
    :goto_21
    if-eqz v0, :cond_26

    :try_start_23
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_26
    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_27} :catch_27

    .line 108
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_27
    move-exception v0

    .line 109
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v1, "DevicePolicyManager"

    const-string v2, "CaCertUninstaller: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_40

    .line 106
    :catch_37
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevicePolicyManager"

    const-string v2, "from CaCertUninstaller: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    nop

    .line 112
    :goto_40
    return-void
.end method
