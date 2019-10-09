.class Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/utils/RestoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mLock:Ljava/lang/Object;

.field private mResult:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    .line 224
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/backup/utils/RestoreUtils$1;

    .line 218
    invoke-direct {p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    .line 218
    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 218
    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .line 236
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v1, :cond_f

    .line 243
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_13

    goto :goto_e

    .line 244
    :catch_d
    move-exception v1

    .line 246
    :goto_e
    goto :goto_3

    .line 249
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    .line 250
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method
