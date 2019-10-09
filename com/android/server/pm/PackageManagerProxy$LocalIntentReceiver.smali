.class Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 220
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .line 232
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .registers 6

    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 242
    goto :goto_19

    .line 239
    :catch_f
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerProxy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalIntentReceiver poll timeout in 30 seconds."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_19
    if-eqz v0, :cond_1d

    move-object v1, v0

    goto :goto_22

    :cond_1d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :goto_22
    return-object v1
.end method
