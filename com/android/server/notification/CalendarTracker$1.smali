.class Lcom/android/server/notification/CalendarTracker$1;
.super Landroid/database/ContentObserver;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/CalendarTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/CalendarTracker;


# direct methods
.method constructor <init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/CalendarTracker;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 265
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 275
    # getter for: Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/CalendarTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.CT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1d
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "u"    # Landroid/net/Uri;

    .line 268
    # getter for: Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/CalendarTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "ConditionProviders.CT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    .line 269
    # getter for: Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/notification/CalendarTracker;->access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_37
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    # getter for: Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;
    invoke-static {v0}, Lcom/android/server/notification/CalendarTracker;->access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/notification/CalendarTracker$Callback;->onChanged()V

    .line 271
    return-void
.end method
