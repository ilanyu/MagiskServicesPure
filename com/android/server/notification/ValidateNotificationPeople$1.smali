.class Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 109
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_36

    .line 110
    :cond_13
    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEvictionCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I
    invoke-static {v2}, Lcom/android/server/notification/ValidateNotificationPeople;->access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_36
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # getter for: Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 113
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    # operator++ for: Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I

    .line 114
    return-void
.end method
