.class Lcom/miui/server/SecuritySmsHandler;
.super Ljava/lang/Object;
.source "SecuritySmsHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInterceptSmsCallerPkgName:Ljava/lang/String;

.field private mInterceptSmsCallerUid:I

.field private mInterceptSmsCount:I

.field private mInterceptSmsLock:Ljava/lang/Object;

.field private mInterceptSmsSenderNum:Ljava/lang/String;

.field private mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 38
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    .line 296
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$1;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$2;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .registers 5
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/BroadcastReceiver;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V

    return-void
.end method

.method private checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 199
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "blockType":I
    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkByAntiSpam : blockType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v0
.end method

.method private checkWithInterceptedSender(Ljava/lang/String;)Z
    .registers 10
    .param p1, "sender"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Z
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_4
    const-string v2, "SecurityManagerService"

    const-string v3, "checkWithInterceptedSender: callerUid:%d, senderNum:%s, count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget v7, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 175
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 178
    iget v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-lez v2, :cond_3f

    .line 179
    iget v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_3f
    iget v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-nez v2, :cond_46

    .line 183
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 186
    :cond_46
    monitor-exit v1

    .line 187
    return v0

    .line 186
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method private dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .line 292
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method private dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 242
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchMmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    const-string v1, "com.android.mms"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method private dispatchNormalMms(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 275
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchNormalMms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 280
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2b

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 283
    const-string v2, "SecurityManagerService"

    const-string v3, "Delivering MMS to: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2b
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 289
    return-void
.end method

.method private dispatchNormalSms(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 254
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchNormalSms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 259
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2b

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    const-string v2, "SecurityManagerService"

    const-string v3, "Delivering SMS to: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2b
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 268
    return-void
.end method

.method private dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 230
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchSmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    const-string v1, "com.android.mms"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 235
    return-void
.end method

.method private dispatchToInterceptApp(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 216
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchToInterceptApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v0, "android.permission.RECEIVE_SMS"

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 223
    return-void
.end method

.method public static getSlotIdFromIntent(Landroid/content/Intent;)I
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 363
    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 364
    if-gez v0, :cond_1b

    .line 365
    const-string v1, "SecurityManagerService"

    const-string v2, "getSlotIdFromIntent slotId < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1b
    return v0
.end method

.method private releaseSmsIntercept()V
    .registers 3

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 208
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 209
    return-void
.end method


# virtual methods
.method checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 47
    move-object/from16 v2, p1

    const-string v0, "SecurityManagerService"

    const-string v3, "enter checkSmsBlocked"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v3, 0x0

    .line 50
    .local v3, "blocked":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v0, v4, :cond_13

    .line 51
    return v3

    .line 54
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 57
    .local v5, "slotId":I
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_7c

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 59
    .local v0, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v8, "sb":Ljava/lang/StringBuilder;
    move v9, v7

    .line 60
    .local v9, "i":I
    :goto_2f
    array-length v10, v0

    if-ge v9, v10, :cond_3e

    .line 61
    aget-object v10, v0, v9

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 64
    .end local v9    # "i":I
    :cond_3e
    aget-object v7, v0, v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "address":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "body":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/miui/server/SecuritySmsHandler;->checkWithInterceptedSender(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 68
    const-string v10, "SecurityManagerService"

    const-string v11, "Intercepted by sender address"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchToInterceptApp(Landroid/content/Intent;)V

    .line 70
    const/4 v3, 0x1

    .line 73
    :cond_59
    if-nez v3, :cond_78

    .line 74
    invoke-direct {v1, v7, v9, v5}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 75
    .local v10, "blockType":I
    if-eqz v10, :cond_78

    .line 76
    const-string v11, "blockType"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-static {v10}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v11

    if-lt v11, v6, :cond_78

    .line 78
    const-string v6, "SecurityManagerService"

    const-string v11, "This sms is intercepted by AntiSpam"

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    .line 80
    const/4 v0, 0x1

    .line 85
    .end local v3    # "blocked":Z
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "blockType":I
    .local v0, "blocked":Z
    move v3, v0

    .line 130
    .end local v0    # "blocked":Z
    .restart local v3    # "blocked":Z
    :cond_78
    move-object/from16 v19, v4

    goto/16 :goto_186

    .line 85
    :cond_7c
    const-string v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 87
    const-string v0, "data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    .line 89
    .local v8, "pushData":[B
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1120087

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 93
    .local v9, "contentDisposition":Z
    const-string v0, ""

    move-object v10, v0

    .line 95
    .local v10, "address":Ljava/lang/String;
    :try_start_98
    const-string v0, "com.google.android.mms.pdu.PduParser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "pduParserClass":Ljava/lang/Class;
    const-string v12, "com.google.android.mms.pdu.GenericPdu"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 97
    .local v12, "pduClass":Ljava/lang/Class;
    const-string v13, "com.google.android.mms.pdu.EncodedStringValue"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 98
    .local v13, "valueClass":Ljava/lang/Class;
    const-string v14, "com.google.android.mms.pdu.PduPersister"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 100
    .local v14, "persisterClass":Ljava/lang/Class;
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Class;

    const-class v16, [B

    aput-object v16, v6, v7

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v16, v6, v11

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    .local v6, "parser":Ljava/lang/Object;
    const-string/jumbo v15, "parse"

    const/4 v7, 0x0

    invoke-virtual {v0, v15, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 102
    .local v15, "pdu":Ljava/lang/Object;
    const-string v11, "getFrom"

    invoke-virtual {v12, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v15, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 103
    .local v11, "encodedStringValue":Ljava/lang/Object;
    const-string v7, "getTextString"
    :try_end_e6
    .catch Ljava/lang/InstantiationException; {:try_start_98 .. :try_end_e6} :catch_158
    .catch Ljava/lang/IllegalAccessException; {:try_start_98 .. :try_end_e6} :catch_14f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_98 .. :try_end_e6} :catch_146
    .catch Ljava/lang/NoSuchMethodException; {:try_start_98 .. :try_end_e6} :catch_13d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_98 .. :try_end_e6} :catch_134

    move/from16 v17, v3

    const/4 v3, 0x0

    :try_start_e9
    invoke-virtual {v13, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 103
    .end local v3    # "blocked":Z
    .local v17, "blocked":Z
    invoke-virtual {v7, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v3, v7

    .line 105
    .local v3, "addressByte":[B
    const-string/jumbo v7, "toIsoString"
    :try_end_f7
    .catch Ljava/lang/InstantiationException; {:try_start_e9 .. :try_end_f7} :catch_130
    .catch Ljava/lang/IllegalAccessException; {:try_start_e9 .. :try_end_f7} :catch_12c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e9 .. :try_end_f7} :catch_128
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e9 .. :try_end_f7} :catch_124
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e9 .. :try_end_f7} :catch_120

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    const/4 v0, 0x1

    :try_start_fc
    new-array v4, v0, [Ljava/lang/Class;

    .line 105
    .end local v0    # "pduParserClass":Ljava/lang/Class;
    .end local v4    # "action":Ljava/lang/String;
    .local v18, "pduParserClass":Ljava/lang/Class;
    .local v19, "action":Ljava/lang/String;
    const-class v0, [B

    const/16 v16, 0x0

    aput-object v0, v4, v16

    invoke-virtual {v14, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v16

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/InstantiationException; {:try_start_fc .. :try_end_114} :catch_11e
    .catch Ljava/lang/IllegalAccessException; {:try_start_fc .. :try_end_114} :catch_11c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_fc .. :try_end_114} :catch_11a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_fc .. :try_end_114} :catch_118
    .catch Ljava/lang/ClassNotFoundException; {:try_start_fc .. :try_end_114} :catch_116

    move-object v10, v0

    .line 117
    .end local v3    # "addressByte":[B
    .end local v6    # "parser":Ljava/lang/Object;
    .end local v11    # "encodedStringValue":Ljava/lang/Object;
    .end local v12    # "pduClass":Ljava/lang/Class;
    .end local v13    # "valueClass":Ljava/lang/Class;
    .end local v14    # "persisterClass":Ljava/lang/Class;
    .end local v15    # "pdu":Ljava/lang/Object;
    .end local v18    # "pduParserClass":Ljava/lang/Class;
    :goto_115
    goto :goto_161

    .line 115
    :catch_116
    move-exception v0

    goto :goto_139

    .line 113
    :catch_118
    move-exception v0

    goto :goto_142

    .line 111
    :catch_11a
    move-exception v0

    goto :goto_14b

    .line 109
    :catch_11c
    move-exception v0

    goto :goto_154

    .line 107
    :catch_11e
    move-exception v0

    goto :goto_15d

    .line 115
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :catch_120
    move-exception v0

    move-object/from16 v19, v4

    .line 115
    .end local v4    # "action":Ljava/lang/String;
    .restart local v19    # "action":Ljava/lang/String;
    goto :goto_139

    .line 113
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :catch_124
    move-exception v0

    move-object/from16 v19, v4

    .line 113
    .end local v4    # "action":Ljava/lang/String;
    .restart local v19    # "action":Ljava/lang/String;
    goto :goto_142

    .line 111
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :catch_128
    move-exception v0

    move-object/from16 v19, v4

    .line 111
    .end local v4    # "action":Ljava/lang/String;
    .restart local v19    # "action":Ljava/lang/String;
    goto :goto_14b

    .line 109
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :catch_12c
    move-exception v0

    move-object/from16 v19, v4

    .line 109
    .end local v4    # "action":Ljava/lang/String;
    .restart local v19    # "action":Ljava/lang/String;
    goto :goto_154

    .line 107
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :catch_130
    move-exception v0

    move-object/from16 v19, v4

    .line 107
    .end local v4    # "action":Ljava/lang/String;
    .restart local v19    # "action":Ljava/lang/String;
    goto :goto_15d

    .line 115
    .end local v17    # "blocked":Z
    .end local v19    # "action":Ljava/lang/String;
    .local v3, "blocked":Z
    .restart local v4    # "action":Ljava/lang/String;
    :catch_134
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 116
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :goto_139
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 116
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_161

    .line 113
    .end local v17    # "blocked":Z
    .end local v19    # "action":Ljava/lang/String;
    .restart local v3    # "blocked":Z
    .restart local v4    # "action":Ljava/lang/String;
    :catch_13d
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 114
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :goto_142
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_115

    .line 111
    .end local v17    # "blocked":Z
    .end local v19    # "action":Ljava/lang/String;
    .restart local v3    # "blocked":Z
    .restart local v4    # "action":Ljava/lang/String;
    :catch_146
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 112
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :goto_14b
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_115

    .line 109
    .end local v17    # "blocked":Z
    .end local v19    # "action":Ljava/lang/String;
    .restart local v3    # "blocked":Z
    .restart local v4    # "action":Ljava/lang/String;
    :catch_14f
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 110
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :goto_154
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_115

    .line 107
    .end local v17    # "blocked":Z
    .end local v19    # "action":Ljava/lang/String;
    .restart local v3    # "blocked":Z
    .restart local v4    # "action":Ljava/lang/String;
    :catch_158
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 108
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .local v0, "e":Ljava/lang/InstantiationException;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :goto_15d
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_115

    .line 119
    :goto_161
    const/4 v3, 0x0

    invoke-direct {v1, v10, v3, v5}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "blockType":I
    if-eqz v0, :cond_184

    .line 121
    const-string v3, "blockType"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_184

    .line 123
    const-string v3, "SecurityManagerService"

    const-string v4, "This mms is intercepted by AntiSpam"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchMmsToAntiSpam(Landroid/content/Intent;)V

    .line 125
    const/4 v3, 0x1

    .line 125
    .end local v0    # "blockType":I
    .end local v8    # "pushData":[B
    .end local v9    # "contentDisposition":Z
    .end local v10    # "address":Ljava/lang/String;
    .end local v17    # "blocked":Z
    .restart local v3    # "blocked":Z
    goto :goto_186

    .line 130
    .end local v19    # "action":Ljava/lang/String;
    .restart local v4    # "action":Ljava/lang/String;
    :cond_180
    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 130
    .end local v3    # "blocked":Z
    .end local v4    # "action":Ljava/lang/String;
    .restart local v17    # "blocked":Z
    .restart local v19    # "action":Ljava/lang/String;
    :cond_184
    move/from16 v3, v17

    .line 130
    .end local v17    # "blocked":Z
    .restart local v3    # "blocked":Z
    :goto_186
    const-string v0, "SecurityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leave checkSmsBlocked, blocked:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v3
.end method

.method startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_8

    .line 136
    return v1

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v3, "SecurityManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 141
    .local v0, "callerUid":I
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_18
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v3, :cond_27

    .line 143
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 144
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 146
    iput p3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 147
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 149
    :cond_27
    monitor-exit v2

    .line 150
    return v1

    .line 149
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method stopInterceptSmsBySender()Z
    .registers 6

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_8

    .line 155
    return v1

    .line 158
    :cond_8
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v3, "SecurityManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 160
    .local v0, "callerUid":I
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_18
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    .line 162
    monitor-exit v2

    return v4

    .line 164
    :cond_1f
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-ne v3, v0, :cond_28

    .line 165
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 166
    monitor-exit v2

    return v4

    .line 168
    :cond_28
    monitor-exit v2

    .line 169
    return v1

    .line 168
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    throw v1
.end method
