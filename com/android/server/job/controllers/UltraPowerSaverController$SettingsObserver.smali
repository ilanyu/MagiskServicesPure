.class Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UltraPowerSaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/UltraPowerSaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/UltraPowerSaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/UltraPowerSaverController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;->this$0:Lcom/android/server/job/controllers/UltraPowerSaverController;

    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 40
    # getter for: Lcom/android/server/job/controllers/UltraPowerSaverController;->ULTRA_POWER_SAVING_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/job/controllers/UltraPowerSaverController;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    iget-object v0, p0, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;->this$0:Lcom/android/server/job/controllers/UltraPowerSaverController;

    iget-object v1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/job/controllers/UltraPowerSaverController;->updateUltraPowerSavingState(Landroid/content/ContentResolver;)V
    invoke-static {v0, v1}, Lcom/android/server/job/controllers/UltraPowerSaverController;->access$100(Lcom/android/server/job/controllers/UltraPowerSaverController;Landroid/content/ContentResolver;)V

    .line 43
    :cond_11
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 46
    iput-object p1, p0, Lcom/android/server/job/controllers/UltraPowerSaverController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 47
    # getter for: Lcom/android/server/job/controllers/UltraPowerSaverController;->ULTRA_POWER_SAVING_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/job/controllers/UltraPowerSaverController;->access$000()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 49
    return-void
.end method
