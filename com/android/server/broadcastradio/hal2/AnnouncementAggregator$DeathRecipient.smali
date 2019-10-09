.class Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;
.super Ljava/lang/Object;
.source "AnnouncementAggregator.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    .param p2, "x1"    # Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    goto :goto_7

    :catch_6
    move-exception v0

    .line 80
    :goto_7
    return-void
.end method
