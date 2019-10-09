.class Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageTrackerIntentHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Receiver"
.end annotation


# instance fields
.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/timezone/PackageTracker;)V
    .registers 2
    .param p1, "packageTracker"    # Lcom/android/server/timezone/PackageTracker;

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/timezone/PackageTracker;
    .param p2, "x1"    # Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$1;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    const-string/jumbo v0, "timezone.PackageTrackerIntentHelperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 114
    return-void
.end method
